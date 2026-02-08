# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Interface handlers for AFM agents."""

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
    ChatApp,
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
    "ChatApp",
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
