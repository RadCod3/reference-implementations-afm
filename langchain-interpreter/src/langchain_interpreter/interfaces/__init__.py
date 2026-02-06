# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Interface handlers for AFM agents.

This module provides interface handlers that expose AFM agents through
different interaction modes:

- **Console Chat**: Interactive terminal-based chat
- **Web Chat**: HTTP REST endpoint for chat
- **Webhook**: HTTP endpoint for receiving webhook events

Example usage:

    Console Chat::

        from langchain_interpreter import parse_afm_file, Agent
        from langchain_interpreter.interfaces import run_console_chat

        afm = parse_afm_file("my_agent.afm.md")
        agent = Agent(afm)
        run_console_chat(agent)

    Web Chat::

        from langchain_interpreter import parse_afm_file, Agent
        from langchain_interpreter.interfaces import create_webchat_app
        import uvicorn

        afm = parse_afm_file("my_agent.afm.md")
        agent = Agent(afm)
        app = create_webchat_app(agent)
        uvicorn.run(app, host="0.0.0.0", port=8000)

    Webhook::

        from langchain_interpreter import parse_afm_file, Agent
        from langchain_interpreter.interfaces import create_webhook_app
        import uvicorn

        afm = parse_afm_file("webhook_agent.afm.md")
        agent = Agent(afm)
        app = create_webhook_app(agent)
        uvicorn.run(app, host="0.0.0.0", port=8000)
"""

# Base utilities
from .base import (
    InterfaceNotFoundError,
    get_console_interface,
    get_http_path,
    get_interface_by_type,
    get_interfaces,
    get_primary_interface,
    get_webchat_interface,
    get_webhook_interface,
    has_interface_type,
)

# Console chat
from .console_chat import (
    async_run_console_chat,
    run_console_chat,
)

# Web chat
from .web_chat import (
    create_webchat_app,
    create_webchat_router,
    run_webchat_server,
)

# Webhook
from .webhook import (
    WebSubSubscriber,
    create_webhook_app,
    create_webhook_router,
    run_webhook_server,
    verify_webhook_signature,
)

__all__ = [
    # Base utilities
    "InterfaceNotFoundError",
    "get_console_interface",
    "get_http_path",
    "get_interface_by_type",
    "get_interfaces",
    "get_primary_interface",
    "get_webchat_interface",
    "get_webhook_interface",
    "has_interface_type",
    # Console chat
    "async_run_console_chat",
    "run_console_chat",
    # Web chat
    "create_webchat_app",
    "create_webchat_router",
    "run_webchat_server",
    # Webhook
    "WebSubSubscriber",
    "create_webhook_app",
    "create_webhook_router",
    "run_webhook_server",
    "verify_webhook_signature",
]
