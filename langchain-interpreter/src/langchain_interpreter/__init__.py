# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""LangChain AFM Interpreter.

A Python implementation of the AFM (Agent-Flavored Markdown) specification v0.3.0.

This package provides:

- **Parser**: Parse AFM files into structured Python objects
- **Agent**: Execute agents using LangChain
- **Interfaces**: Console chat, web chat, and webhook handlers

Example usage::

    from langchain_interpreter import parse_afm_file, Agent
    from langchain_interpreter.interfaces import run_console_chat

    afm = parse_afm_file("my_agent.afm.md")
    agent = Agent(afm)
    run_console_chat(agent)
"""

from .agent import Agent
from .exceptions import (
    AFMError,
    AFMParseError,
    AFMValidationError,
    AgentConfigError,
    AgentError,
    InputValidationError,
    InterfaceNotFoundError,
    JSONAccessError,
    MCPAuthenticationError,
    MCPConnectionError,
    MCPError,
    MCPToolError,
    OutputValidationError,
    ProviderError,
    TemplateCompilationError,
    TemplateError,
    TemplateEvaluationError,
    VariableResolutionError,
)
from .interfaces import (
    WebSubSubscriber,
    async_run_console_chat,
    create_webchat_app,
    create_webhook_app,
    get_console_interface,
    get_http_path,
    get_interface_by_type,
    get_interfaces,
    get_primary_interface,
    get_webchat_interface,
    get_webhook_interface,
    has_interface_type,
    run_console_chat,
    run_webchat_server,
    run_webhook_server,
    verify_webhook_signature,
)
from .models import (
    AFMRecord,
    AgentMetadata,
    ClientAuthentication,
    CompiledTemplate,
    ConsoleChatInterface,
    Exposure,
    HeaderVariable,
    HTTPExposure,
    Interface,
    InterfaceType,
    JSONSchema,
    LiteralSegment,
    MCPServer,
    Model,
    PayloadVariable,
    Provider,
    Signature,
    Subscription,
    TemplateSegment,
    ToolFilter,
    Tools,
    Transport,
    TransportType,
    WebChatInterface,
    WebhookInterface,
    get_filtered_tools,
)
from .parser import parse_afm, parse_afm_file, validate_and_extract_interfaces
from .providers import (
    create_model_provider,
    get_supported_providers,
)
from .schema_validator import (
    build_output_schema_instruction,
    coerce_output_to_schema,
    extract_json_from_response,
    json_schema_to_dict,
    validate_input,
    validate_output,
)
from .templates import access_json_field, compile_template, evaluate_template
from .tools import (
    MCPClient,
    MCPManager,
    build_auth_headers,
    filter_tools,
)
from .variables import (
    contains_http_variable,
    resolve_variables,
    validate_http_variables,
)
from .cli import create_unified_app, main

__version__ = "0.1.0"

__all__ = [
    # Version
    "__version__",
    # Parser Functions
    "parse_afm",
    "parse_afm_file",
    "validate_and_extract_interfaces",
    # Variables
    "resolve_variables",
    "contains_http_variable",
    "validate_http_variables",
    # Templates
    "compile_template",
    "evaluate_template",
    "access_json_field",
    # Models
    "AFMRecord",
    "AgentMetadata",
    "Provider",
    "Model",
    "ClientAuthentication",
    "Transport",
    "TransportType",
    "ToolFilter",
    "MCPServer",
    "Tools",
    "JSONSchema",
    "Signature",
    "HTTPExposure",
    "Exposure",
    "Subscription",
    "InterfaceType",
    "ConsoleChatInterface",
    "WebChatInterface",
    "WebhookInterface",
    "Interface",
    "CompiledTemplate",
    "LiteralSegment",
    "PayloadVariable",
    "HeaderVariable",
    "TemplateSegment",
    "get_filtered_tools",
    # Exceptions
    "AFMError",
    "AFMParseError",
    "AFMValidationError",
    "VariableResolutionError",
    "TemplateError",
    "TemplateCompilationError",
    "TemplateEvaluationError",
    "JSONAccessError",
    # Agent Class
    "Agent",
    # Provider Factory
    "create_model_provider",
    "get_supported_providers",
    # Schema Validation
    "validate_input",
    "validate_output",
    "coerce_output_to_schema",
    "extract_json_from_response",
    "json_schema_to_dict",
    "build_output_schema_instruction",
    "AgentError",
    "AgentConfigError",
    "ProviderError",
    "InputValidationError",
    "OutputValidationError",
    "InterfaceNotFoundError",
    # MCP Exceptions
    "MCPError",
    "MCPConnectionError",
    "MCPToolError",
    "MCPAuthenticationError",
    # MCP Classes
    "MCPClient",
    "MCPManager",
    "build_auth_headers",
    "filter_tools",
    # Interface Functions
    "get_interfaces",
    "get_interface_by_type",
    "get_console_interface",
    "get_webchat_interface",
    "get_webhook_interface",
    "get_primary_interface",
    "has_interface_type",
    "get_http_path",
    "run_console_chat",
    "async_run_console_chat",
    "create_webchat_app",
    "run_webchat_server",
    "create_webhook_app",
    "run_webhook_server",
    "WebSubSubscriber",
    "verify_webhook_signature",
    # CLI
    "main",
    "create_unified_app",
]
