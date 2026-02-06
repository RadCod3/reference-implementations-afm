# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Base utilities for interface handlers.

This module provides helper functions and protocols for the interface
implementations (console chat, web chat, webhook).
"""

from __future__ import annotations

from langchain_interpreter import InterfaceNotFoundError

from ..models import (
    AFMRecord,
    ConsoleChatInterface,
    Interface,
    InterfaceType,
    WebChatInterface,
    WebhookInterface,
)


def get_interfaces(afm: AFMRecord) -> list[Interface]:
    """Get all interfaces from an AFM record.

    If no interfaces are defined, returns a default consolechat interface.

    Args:
        afm: The parsed AFM record.

    Returns:
        List of interface configurations.
    """
    if afm.metadata.interfaces:
        return list(afm.metadata.interfaces)
    # Default to consolechat if no interfaces specified
    return [ConsoleChatInterface()]


def get_interface_by_type(
    afm: AFMRecord,
    interface_type: InterfaceType,
) -> Interface:
    """Get a specific interface by type from an AFM record.

    Args:
        afm: The parsed AFM record.
        interface_type: The interface type to find.

    Returns:
        The matching interface configuration.

    Raises:
        InterfaceNotFoundError: If the interface type is not found.
    """
    interfaces = get_interfaces(afm)

    for interface in interfaces:
        if interface.type == interface_type.value:
            return interface

    available = [iface.type for iface in interfaces]
    raise InterfaceNotFoundError(interface_type.value, available)


def get_console_interface(afm: AFMRecord) -> ConsoleChatInterface:
    """Get the console chat interface from an AFM record.

    Args:
        afm: The parsed AFM record.

    Returns:
        The console chat interface configuration.

    Raises:
        InterfaceNotFoundError: If no consolechat interface is found.
    """
    interface = get_interface_by_type(afm, InterfaceType.CONSOLE_CHAT)
    assert isinstance(interface, ConsoleChatInterface)
    return interface


def get_webchat_interface(afm: AFMRecord) -> WebChatInterface:
    """Get the web chat interface from an AFM record.

    Args:
        afm: The parsed AFM record.

    Returns:
        The web chat interface configuration.

    Raises:
        InterfaceNotFoundError: If no webchat interface is found.
    """
    interface = get_interface_by_type(afm, InterfaceType.WEB_CHAT)
    assert isinstance(interface, WebChatInterface)
    return interface


def get_webhook_interface(afm: AFMRecord) -> WebhookInterface:
    """Get the webhook interface from an AFM record.

    Args:
        afm: The parsed AFM record.

    Returns:
        The webhook interface configuration.

    Raises:
        InterfaceNotFoundError: If no webhook interface is found.
    """
    interface = get_interface_by_type(afm, InterfaceType.WEBHOOK)
    assert isinstance(interface, WebhookInterface)
    return interface


def get_primary_interface(afm: AFMRecord) -> Interface:
    """Get the primary (first) interface from an AFM record.

    If no interfaces are defined, returns a default consolechat interface.

    Args:
        afm: The parsed AFM record.

    Returns:
        The primary interface configuration.
    """
    interfaces = get_interfaces(afm)
    return interfaces[0]


def has_interface_type(afm: AFMRecord, interface_type: InterfaceType | str) -> bool:
    """Check if an AFM record has a specific interface type.

    Args:
        afm: The parsed AFM record.
        interface_type: The interface type to check for.

    Returns:
        True if the interface type exists, False otherwise.
    """
    if isinstance(interface_type, str):
        interface_type_str = interface_type
    else:
        interface_type_str = interface_type.value

    interfaces = get_interfaces(afm)
    return any(iface.type == interface_type_str for iface in interfaces)


def get_http_path(interface: WebChatInterface | WebhookInterface) -> str:
    """Get the HTTP path from an interface's exposure configuration.

    Args:
        interface: The web chat or webhook interface.

    Returns:
        The HTTP path (e.g., "/chat" or "/webhook").
    """
    if interface.exposure and interface.exposure.http:
        return interface.exposure.http.path

    # Defaults per spec
    if isinstance(interface, WebChatInterface):
        return "/chat"
    return "/webhook"
