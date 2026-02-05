# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Web chat interface handler.

This module provides an HTTP REST endpoint for chatting with AFM agents
using FastAPI.
"""

from __future__ import annotations

import json
from typing import TYPE_CHECKING, Any

from fastapi import FastAPI, Header, HTTPException, Request
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from pydantic import BaseModel, Field

from .base import get_http_path, get_webchat_interface, InterfaceNotFoundError

if TYPE_CHECKING:
    from ..agent import Agent


# =============================================================================
# Request/Response Models
# =============================================================================


class StringChatRequest(BaseModel):
    """Request model for simple string-based chat."""

    message: str = Field(..., description="The user's chat message")


class StringChatResponse(BaseModel):
    """Response model for simple string-based chat."""

    response: str = Field(..., description="The agent's response")


class ObjectChatResponse(BaseModel):
    """Response model for object-based chat (pass-through)."""

    # This is a pass-through model - actual fields depend on output schema
    model_config = {"extra": "allow"}


class AgentInfo(BaseModel):
    """Response model for agent metadata endpoint."""

    name: str = Field(..., description="The agent's name")
    description: str | None = Field(None, description="The agent's description")
    version: str | None = Field(None, description="The agent's version")


class HealthResponse(BaseModel):
    """Response model for health check endpoint."""

    status: str = Field("ok", description="Health status")


class ErrorResponse(BaseModel):
    """Response model for error responses."""

    error: str = Field(..., description="Error message")
    detail: str | None = Field(None, description="Detailed error information")


# =============================================================================
# Web Chat App Factory
# =============================================================================


def create_webchat_app(
    agent: Agent,
    *,
    cors_origins: list[str] | None = None,
    path: str | None = None,
) -> FastAPI:
    """Create a FastAPI application for web chat.

    This function creates a FastAPI app that exposes the agent as an HTTP
    REST endpoint. The app includes:

    - POST {path} - Chat endpoint (default: /chat)
    - GET / - Agent metadata
    - GET /health - Health check

    Args:
        agent: The AFM agent to expose.
        cors_origins: Optional list of allowed CORS origins.
                     If provided, CORS middleware will be added.
        path: Optional custom path for the chat endpoint.
              If not provided, uses the path from the interface configuration
              or defaults to "/chat".

    Returns:
        A FastAPI application instance.

    Example:
        >>> from langchain_interpreter import parse_afm_file, Agent
        >>> from langchain_interpreter.interfaces import create_webchat_app
        >>> import uvicorn
        >>> afm = parse_afm_file("my_agent.afm.md")
        >>> agent = Agent(afm)
        >>> app = create_webchat_app(agent, cors_origins=["http://localhost:3000"])
        >>> uvicorn.run(app, host="0.0.0.0", port=8000)
    """
    # Get interface configuration
    try:
        interface = get_webchat_interface(agent.afm)
        chat_path = path or get_http_path(interface)
        signature = interface.signature
    except InterfaceNotFoundError:
        # No webchat interface defined - use defaults
        chat_path = path or "/chat"
        signature = agent._signature  # Use agent's default signature

    # Determine if we need simple string I/O or complex schema
    input_is_string = signature.input.type == "string"
    output_is_string = signature.output.type == "string"

    # Create the FastAPI app
    app = FastAPI(
        title=agent.name,
        description=agent.description or f"Web chat interface for {agent.name}",
        version=agent.afm.metadata.version or "0.0.0",
    )

    # Add CORS middleware if origins specified
    if cors_origins:
        app.add_middleware(
            CORSMiddleware,
            allow_origins=cors_origins,
            allow_credentials=True,
            allow_methods=["*"],
            allow_headers=["*"],
        )

    # Store agent reference
    app.state.agent = agent

    # ==========================================================================
    # Endpoints
    # ==========================================================================

    @app.get("/", response_model=AgentInfo)
    async def get_agent_info() -> AgentInfo:
        """Get agent metadata."""
        return AgentInfo(
            name=agent.name,
            description=agent.description,
            version=agent.afm.metadata.version,
        )

    @app.get("/health", response_model=HealthResponse)
    async def health_check() -> HealthResponse:
        """Health check endpoint."""
        return HealthResponse(status="ok")

    # Create the appropriate chat endpoint based on signature
    if input_is_string and output_is_string:
        # Simple string-to-string chat
        @app.post(
            chat_path,
            response_model=StringChatResponse,
            responses={
                400: {"model": ErrorResponse},
                500: {"model": ErrorResponse},
            },
        )
        async def chat_string(
            request: StringChatRequest,
            x_session_id: str | None = Header(None, alias="X-Session-Id"),
        ) -> StringChatResponse:
            """Chat with the agent using simple string messages."""
            session_id = x_session_id or "default"

            try:
                response = await agent.arun(request.message, session_id=session_id)

                # Ensure response is string
                if not isinstance(response, str):
                    response = json.dumps(response)

                return StringChatResponse(response=response)

            except Exception as e:
                raise HTTPException(
                    status_code=500,
                    detail=str(e),
                )

    else:
        # Complex schema-based chat
        @app.post(
            chat_path,
            responses={
                400: {"model": ErrorResponse},
                500: {"model": ErrorResponse},
            },
        )
        async def chat_object(
            request: Request,
            x_session_id: str | None = Header(None, alias="X-Session-Id"),
        ) -> JSONResponse:
            """Chat with the agent using schema-validated messages."""
            session_id = x_session_id or "default"

            try:
                # Parse request body
                body = await request.json()

                # For string input schema, extract the string value
                if input_is_string:
                    if isinstance(body, str):
                        input_data: str | dict[str, Any] = body
                    elif isinstance(body, dict) and "message" in body:
                        input_data = body["message"]
                    else:
                        raise HTTPException(
                            status_code=400,
                            detail="Expected string input or {message: string}",
                        )
                else:
                    input_data = body

                # Run the agent
                response = await agent.arun(input_data, session_id=session_id)

                # Format response based on output schema
                if output_is_string:
                    if not isinstance(response, str):
                        response = json.dumps(response)
                    return JSONResponse(content={"response": response})
                else:
                    # Object output - return as-is or wrap
                    if isinstance(response, dict):
                        return JSONResponse(content=response)
                    elif isinstance(response, str):
                        # Try to parse as JSON
                        try:
                            return JSONResponse(content=json.loads(response))
                        except json.JSONDecodeError:
                            return JSONResponse(content={"response": response})
                    else:
                        return JSONResponse(content={"response": response})

            except HTTPException:
                raise
            except json.JSONDecodeError:
                raise HTTPException(
                    status_code=400,
                    detail="Invalid JSON in request body",
                )
            except Exception as e:
                raise HTTPException(
                    status_code=500,
                    detail=str(e),
                )

    return app


def run_webchat_server(
    agent: Agent,
    *,
    host: str = "0.0.0.0",
    port: int = 8000,
    cors_origins: list[str] | None = None,
    path: str | None = None,
    log_level: str = "info",
) -> None:
    """Run a web chat server for the agent.

    This is a convenience function that creates the FastAPI app and runs
    it with uvicorn.

    Args:
        agent: The AFM agent to expose.
        host: The host to bind to. Defaults to "0.0.0.0".
        port: The port to listen on. Defaults to 8000.
        cors_origins: Optional list of allowed CORS origins.
        path: Optional custom path for the chat endpoint.
        log_level: Uvicorn log level. Defaults to "info".

    Example:
        >>> from langchain_interpreter import parse_afm_file, Agent
        >>> from langchain_interpreter.interfaces import run_webchat_server
        >>> afm = parse_afm_file("my_agent.afm.md")
        >>> agent = Agent(afm)
        >>> run_webchat_server(agent, port=8080)
    """
    import uvicorn

    app = create_webchat_app(agent, cors_origins=cors_origins, path=path)
    uvicorn.run(app, host=host, port=port, log_level=log_level)
