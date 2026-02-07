# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Tests for console chat interface handler using Textual."""

from __future__ import annotations

from unittest.mock import AsyncMock, MagicMock, patch

import pytest
from textual.containers import VerticalScroll
from textual.pilot import Pilot
from textual.widgets import Input, Static

from langchain_interpreter.agent import Agent
from langchain_interpreter.interfaces.console_chat import (
    ChatApp,
    async_run_console_chat,
    run_console_chat,
)

# Type alias for the app
ChatPilot = Pilot[ChatApp]


@pytest.fixture
def mock_agent() -> MagicMock:
    """Create a mock agent for testing."""
    agent = MagicMock(spec=Agent)
    agent.name = "Test Agent"
    agent.description = "A test agent for unit testing"
    # Mock arun to yield control back to the event loop
    agent.arun = AsyncMock(return_value="Hello! I'm the test agent.")
    agent.clear_history = MagicMock()
    return agent


@pytest.mark.asyncio
async def test_app_starts_with_welcome(mock_agent: MagicMock) -> None:
    """Test that app starts and shows welcome message."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        # Check welcome message
        chat_log = app.query_one("#chat-log")
        assert chat_log is not None

        welcome_widget = chat_log.query_one(".system", Static)
        assert "Welcome to chat with Test Agent" in str(welcome_widget.render())


@pytest.mark.asyncio
async def test_user_message_flow(mock_agent: MagicMock) -> None:
    """Test sending a message and getting a response."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        # Type message
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "Hello!"
        await pilot.press("enter")

        # Wait for worker to complete
        await pilot.pause()

        # Check user message
        chat_log = app.query_one("#chat-log", VerticalScroll)
        user_msgs = chat_log.query(".user")
        assert len(user_msgs) == 1
        assert "Hello!" in str(user_msgs[0].render())

        # Check agent response
        agent_msgs = chat_log.query(".agent")
        assert len(agent_msgs) == 1
        assert "Hello! I'm the test agent." in str(agent_msgs[0].render())

        # Verify agent was called
        mock_agent.arun.assert_called_once()


@pytest.mark.asyncio
async def test_run_console_chat(mock_agent: MagicMock) -> None:
    """Test wrapper function."""
    with patch("langchain_interpreter.interfaces.console_chat.ChatApp") as MockApp:
        run_console_chat(
            mock_agent,
            session_id="test-session",
        )

        MockApp.assert_called_once_with(
            mock_agent, session_id="test-session", agent_prefix="Agent: "
        )
        MockApp.return_value.run.assert_called_once()


@pytest.mark.asyncio
async def test_async_run_console_chat(mock_agent: MagicMock) -> None:
    """Test async wrapper function."""
    with patch("langchain_interpreter.interfaces.console_chat.ChatApp") as MockApp:
        # Mock run_async
        MockApp.return_value.run_async = AsyncMock()
        
        await async_run_console_chat(
            mock_agent,
            session_id="test-session",
            agent_prefix="Agent: ",
        )
        
        MockApp.assert_called_once_with(
            mock_agent, session_id="test-session", agent_prefix="Agent: "
        )
        MockApp.return_value.run_async.assert_called_once()


@pytest.mark.asyncio
async def test_help_command(mock_agent: MagicMock) -> None:
    """Test help command."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "help"
        await pilot.press("enter")

        await pilot.pause()

        # Check for help message
        chat_log = app.query_one("#chat-log")
        system_msgs = chat_log.query(".system")
        # Should be welcome + help
        assert len(system_msgs) >= 2
        last_msg = system_msgs[-1]
        assert "Available commands" in str(last_msg.render())


@pytest.mark.asyncio
async def test_clear_command(mock_agent: MagicMock) -> None:
    """Test clear command."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "clear"
        await pilot.press("enter")

        await pilot.pause()

        # Check confirmation
        chat_log = app.query_one("#chat-log")
        system_msgs = chat_log.query(".system")
        last_msg = system_msgs[-1]
        assert "history cleared" in str(last_msg.render())

        # Verify agent called
        mock_agent.clear_history.assert_called_once()


@pytest.mark.asyncio
async def test_exit_command(mock_agent: MagicMock) -> None:
    """Test exit command."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "exit"
        await pilot.press("enter")

        # App should exit
        await pilot.pause()
        assert not app.is_running


@pytest.mark.asyncio
async def test_keybindings(mock_agent: MagicMock) -> None:
    """Test keybindings."""
    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        # Ctrl+H for help
        await pilot.press("ctrl+h")
        await pilot.pause()

        sys_msgs = app.query(".system")
        assert "Available commands" in str(sys_msgs[-1].render())

        # Ctrl+L for clear
        await pilot.press("ctrl+l")
        await pilot.pause()
        assert "history cleared" in str(app.query(".system")[-1].render())

        # Ctrl+Q for quit
        await pilot.press("ctrl+q")
        await pilot.pause()
        assert not app.is_running


@pytest.mark.asyncio
async def test_agent_error_display(mock_agent: MagicMock) -> None:
    """Test that agent errors are displayed."""
    mock_agent.arun.side_effect = Exception("Test Error")

    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "Hello"
        await pilot.press("enter")

        await pilot.pause()

        # Check error message
        errors = app.query(".error")
        assert len(errors) == 1
        assert "Test Error" in str(errors[0].render())


@pytest.mark.asyncio
async def test_json_response(mock_agent: MagicMock) -> None:
    """Test that JSON responses are formatted."""
    mock_agent.arun.return_value = {"foo": "bar"}

    app = ChatApp(mock_agent)
    async with app.run_test() as pilot:
        input_widget = app.query_one("#chat-input", Input)
        input_widget.value = "Hello"
        await pilot.press("enter")

        await pilot.pause()

        agent_msgs = app.query(".agent")
        assert '"foo": "bar"' in str(agent_msgs[0].render())
