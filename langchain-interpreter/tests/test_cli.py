# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Tests for the CLI module."""

from pathlib import Path
from unittest.mock import AsyncMock, MagicMock, patch

import pytest
from click.testing import CliRunner

from afm_cli.cli import (
    __cli_version__,
    create_unified_app,
    extract_interfaces,
    format_validation_output,
    main,
)
from afm_cli.models import (
    ConsoleChatInterface,
    WebChatInterface,
    WebhookInterface,
    Subscription,
)
from afm_cli.parser import parse_afm_file


# =============================================================================
# CLI Runner Fixture
# =============================================================================


@pytest.fixture
def runner():
    """Create a CLI test runner."""
    return CliRunner()


# =============================================================================
# Version and Help Tests
# =============================================================================


class TestCLIBasics:
    """Test basic CLI functionality."""

    def test_version(self, runner: CliRunner):
        """Test --version flag shows version."""
        result = runner.invoke(main, ["--version"])
        assert result.exit_code == 0
        assert __cli_version__ in result.output

    def test_help(self, runner: CliRunner):
        """Test --help flag shows help."""
        result = runner.invoke(main, ["--help"])
        assert result.exit_code == 0
        assert "Run an AFM agent from FILE" in result.output
        assert "--port" in result.output
        assert "--dry-run" in result.output
        assert "--no-console" in result.output
        assert "--verbose" in result.output

    def test_missing_file_argument(self, runner: CliRunner):
        """Test that missing file argument shows error."""
        result = runner.invoke(main, [])
        assert result.exit_code != 0
        assert "Missing argument" in result.output or "Usage:" in result.output

    def test_nonexistent_file(self, runner: CliRunner):
        """Test that nonexistent file shows error."""
        result = runner.invoke(main, ["/nonexistent/path/agent.afm.md"])
        assert result.exit_code != 0
        assert (
            "does not exist" in result.output.lower()
            or "error" in result.output.lower()
        )


# =============================================================================
# Dry Run Tests
# =============================================================================


class TestDryRun:
    """Test --dry-run validation mode."""

    def test_dry_run_valid_file(self, runner: CliRunner, sample_agent_path: Path):
        """Test --dry-run with valid AFM file."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run"])
        assert result.exit_code == 0
        assert "validated successfully" in result.output.lower()
        assert "TestAgent" in result.output

    def test_dry_run_minimal_file(self, runner: CliRunner, sample_minimal_path: Path):
        """Test --dry-run with minimal AFM file."""
        result = runner.invoke(main, [str(sample_minimal_path), "--dry-run"])
        assert result.exit_code == 0
        assert "validated successfully" in result.output.lower()

    def test_dry_run_shows_interfaces(self, runner: CliRunner, sample_agent_path: Path):
        """Test --dry-run shows interface information."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run"])
        assert result.exit_code == 0
        assert "Interfaces:" in result.output
        assert "webchat" in result.output.lower()

    def test_dry_run_shows_mcp_servers(
        self, runner: CliRunner, sample_agent_path: Path
    ):
        """Test --dry-run shows MCP server information."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run"])
        assert result.exit_code == 0
        assert "MCP Servers:" in result.output
        assert "TestServer" in result.output

    def test_dry_run_invalid_file(self, runner: CliRunner, tmp_path: Path):
        """Test --dry-run with invalid AFM file."""
        invalid_file = tmp_path / "invalid.afm.md"
        # Invalid YAML in frontmatter
        invalid_file.write_text("""---
invalid: yaml: with: colons: everywhere
---
# Role
Test
# Instructions
Test
""")

        result = runner.invoke(main, [str(invalid_file), "--dry-run"])
        # Should exit with error for invalid file
        assert result.exit_code != 0


# =============================================================================
# Format Validation Output Tests
# =============================================================================


class TestFormatValidationOutput:
    """Test the format_validation_output function."""

    def test_format_basic_info(self, sample_agent_path: Path):
        """Test formatting basic agent info."""
        afm = parse_afm_file(str(sample_agent_path))
        output = format_validation_output(afm)

        assert "TestAgent" in output
        assert "A test agent" in output
        assert "0.1.0" in output

    def test_format_interfaces(self, sample_agent_path: Path):
        """Test formatting interface info."""
        afm = parse_afm_file(str(sample_agent_path))
        output = format_validation_output(afm)

        assert "Interfaces:" in output
        assert "webchat" in output

    def test_format_mcp_servers(self, sample_agent_path: Path):
        """Test formatting MCP server info."""
        afm = parse_afm_file(str(sample_agent_path))
        output = format_validation_output(afm)

        assert "MCP Servers:" in output
        assert "TestServer" in output
        assert "test-server.com" in output

    def test_format_minimal_agent(self, sample_minimal_path: Path):
        """Test formatting minimal agent."""
        afm = parse_afm_file(str(sample_minimal_path))
        output = format_validation_output(afm)

        assert "validated successfully" in output.lower()
        assert "Interfaces:" in output
        # Default interface should be consolechat
        assert "consolechat" in output


# =============================================================================
# Extract Interfaces Tests
# =============================================================================


class TestExtractInterfaces:
    """Test the extract_interfaces function."""

    def test_extract_webchat_only(self, sample_agent_path: Path):
        """Test extracting webchat interface."""
        afm = parse_afm_file(str(sample_agent_path))
        consolechat, webchat, webhook = extract_interfaces(afm)

        assert consolechat is None
        assert webchat is not None
        assert isinstance(webchat, WebChatInterface)
        assert webhook is None

    def test_extract_default_consolechat(self, sample_minimal_path: Path):
        """Test extracting default consolechat interface."""
        afm = parse_afm_file(str(sample_minimal_path))
        consolechat, webchat, webhook = extract_interfaces(afm)

        # Minimal agent has no interfaces, so default consolechat
        assert consolechat is not None
        assert isinstance(consolechat, ConsoleChatInterface)
        assert webchat is None
        assert webhook is None

    def test_extract_webhook(self, sample_webhook_path: Path):
        """Test extracting webhook interface."""
        afm = parse_afm_file(str(sample_webhook_path))
        consolechat, webchat, webhook = extract_interfaces(afm)

        assert webhook is not None
        assert isinstance(webhook, WebhookInterface)


# =============================================================================
# Unified App Factory Tests
# =============================================================================


class TestCreateUnifiedApp:
    """Test the create_unified_app function."""

    def test_requires_at_least_one_interface(self, sample_minimal_path: Path):
        """Test that at least one HTTP interface is required."""
        afm = parse_afm_file(str(sample_minimal_path))

        with patch.object(
            afm.metadata, "model", MagicMock(provider="openai", name="gpt-4")
        ):
            from afm_cli import Agent

            with patch("afm_cli.agent.create_model_provider") as mock_provider:
                mock_provider.return_value = MagicMock()
                agent = Agent(afm)

                with pytest.raises(ValueError, match="At least one HTTP interface"):
                    create_unified_app(agent)

    def test_creates_app_with_webchat(self, sample_agent_path: Path):
        """Test creating app with webchat interface."""
        afm = parse_afm_file(str(sample_agent_path))

        with patch("afm_cli.agent.create_model_provider") as mock_provider:
            mock_provider.return_value = MagicMock()

            from afm_cli import Agent

            agent = Agent(afm)
            webchat = WebChatInterface()

            app = create_unified_app(agent, webchat_interface=webchat)

            assert app is not None
            assert app.title == agent.name

            # Check routes exist
            routes = [getattr(route, "path", None) for route in app.routes]
            assert "/" in routes
            assert "/health" in routes
            assert "/chat" in routes  # default webchat path

    def test_creates_app_with_webhook(self, sample_minimal_path: Path):
        """Test creating app with webhook interface."""
        afm = parse_afm_file(str(sample_minimal_path))

        with patch("afm_cli.agent.create_model_provider") as mock_provider:
            mock_provider.return_value = MagicMock()

            from afm_cli import Agent

            agent = Agent(afm)
            webhook = WebhookInterface(
                subscription=Subscription(
                    protocol="websub", hub="http://hub.example.com"
                )
            )

            app = create_unified_app(agent, webhook_interface=webhook)

            assert app is not None

            routes = [getattr(route, "path", None) for route in app.routes]
            assert "/" in routes
            assert "/health" in routes
            assert "/webhook" in routes  # default webhook path

    def test_creates_app_with_both_interfaces(self, sample_minimal_path: Path):
        """Test creating app with both webchat and webhook."""
        afm = parse_afm_file(str(sample_minimal_path))

        with patch("afm_cli.agent.create_model_provider") as mock_provider:
            mock_provider.return_value = MagicMock()

            from afm_cli import Agent

            agent = Agent(afm)
            webchat = WebChatInterface()
            webhook = WebhookInterface(
                subscription=Subscription(
                    protocol="websub", hub="http://hub.example.com"
                )
            )

            app = create_unified_app(
                agent, webchat_interface=webchat, webhook_interface=webhook
            )

            routes = [getattr(route, "path", None) for route in app.routes]
            assert "/chat" in routes
            assert "/webhook" in routes


# =============================================================================
# No Console Flag Tests
# =============================================================================


class TestNoConsoleFlag:
    """Test --no-console flag behavior."""

    def test_no_console_skips_consolechat(
        self, runner: CliRunner, sample_consolechat_path: Path
    ):
        """Test that --no-console skips consolechat interface."""
        # This would normally start console chat, but --no-console should skip it
        # Since console chat is the only interface, nothing should run
        result = runner.invoke(
            main, [str(sample_consolechat_path), "--no-console", "--dry-run"]
        )
        # dry-run should still work
        assert result.exit_code == 0


# =============================================================================
# Integration Tests (with mocking)
# =============================================================================


class TestCLIIntegration:
    """Integration tests for CLI with mocked components."""

    def test_cli_loads_and_validates_afm(
        self, runner: CliRunner, sample_agent_path: Path
    ):
        """Test that CLI properly loads and validates AFM file."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run"])

        assert result.exit_code == 0
        assert "Loading:" in result.output
        assert str(sample_agent_path) in result.output

    def test_cli_shows_agent_info_on_startup(
        self, runner: CliRunner, sample_agent_path: Path
    ):
        """Test that CLI shows agent info during dry-run."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run"])

        assert result.exit_code == 0
        assert "TestAgent" in result.output

    @patch("afm_cli.cli.uvicorn")
    @patch("afm_cli.cli.Agent")
    def test_cli_starts_http_server_for_webchat(
        self,
        mock_agent_class: MagicMock,
        mock_uvicorn: MagicMock,
        runner: CliRunner,
        sample_agent_path: Path,
    ):
        """Test that CLI starts HTTP server for webchat interface."""
        # Setup mocks
        mock_agent = MagicMock()
        mock_agent.name = "TestAgent"
        mock_agent.description = "Test description"
        mock_agent.afm.metadata.version = "0.1.0"
        mock_agent.afm.metadata.tools = None
        mock_agent_class.return_value = mock_agent

        runner.invoke(main, [str(sample_agent_path), "--port", "9000"])

        # Should have called uvicorn.run
        assert mock_uvicorn.run.called or mock_uvicorn.Config.called

    def test_verbose_flag(self, runner: CliRunner, sample_agent_path: Path):
        """Test that --verbose flag works."""
        result = runner.invoke(main, [str(sample_agent_path), "--dry-run", "--verbose"])
        assert result.exit_code == 0


# =============================================================================
# Edge Cases
# =============================================================================


class TestEdgeCases:
    """Test edge cases and error handling."""

    def test_invalid_port(self, runner: CliRunner, sample_agent_path: Path):
        """Test handling of invalid port values."""
        result = runner.invoke(main, [str(sample_agent_path), "--port", "invalid"])
        assert result.exit_code != 0

    def test_port_out_of_range(self, runner: CliRunner, sample_agent_path: Path):
        """Test handling of port out of range."""
        # Click will convert to int, but 99999 is out of valid port range
        # The CLI doesn't validate port range, but uvicorn would fail
        # This just tests the CLI accepts the value
        result = runner.invoke(
            main, [str(sample_agent_path), "--port", "99999", "--dry-run"]
        )
        # dry-run doesn't actually start server, so should succeed
        assert result.exit_code == 0

    def test_custom_host(self, runner: CliRunner, sample_agent_path: Path):
        """Test custom host option."""
        result = runner.invoke(
            main, [str(sample_agent_path), "--host", "127.0.0.1", "--dry-run"]
        )
        assert result.exit_code == 0

    def test_file_with_parse_error(self, runner: CliRunner, tmp_path: Path):
        """Test handling of file with parse errors."""
        bad_file = tmp_path / "bad.afm.md"
        bad_file.write_text(
            """---
invalid: yaml: content: here
---
# Role
Test
# Instructions
Test
"""
        )
        result = runner.invoke(main, [str(bad_file), "--dry-run"])
        assert result.exit_code != 0


# =============================================================================
# Lifespan Tests
# =============================================================================


class TestUnifiedAppLifespan:
    """Tests for unified app lifespan (startup/shutdown) behavior."""

    @pytest.mark.asyncio
    async def test_lifespan_cancels_subscription_task_on_shutdown(
        self, sample_agent_path: Path
    ):
        """Verify that the subscription task is cancelled during shutdown."""
        import asyncio
        from asgi_lifespan import LifespanManager
        from afm_cli import Agent
        from afm_cli.parser import parse_afm_file

        afm = parse_afm_file(str(sample_agent_path))

        with patch("afm_cli.agent.create_model_provider") as mock_provider:
            mock_provider.return_value = MagicMock()
            agent = Agent(afm)

            webhook = WebhookInterface(
                subscription=Subscription(
                    protocol="websub",
                    hub="http://hub.example.com",
                    topic="http://topic.example.com",
                )
            )

            app = create_unified_app(agent, webhook_interface=webhook)

            # Create an async function that blocks indefinitely (simulating a long retry sleep)
            async def blocking_subscribe(*args, **kwargs) -> None:
                await asyncio.sleep(3600)

            # Patch subscribe_with_retry and agent methods to avoid real connections
            with (
                patch("afm_cli.cli.subscribe_with_retry", blocking_subscribe),
                patch.object(agent, "connect", new_callable=AsyncMock),
                patch.object(agent, "disconnect", new_callable=AsyncMock),
            ):
                # Use LifespanManager to properly manage the async lifespan
                async with LifespanManager(app):
                    task = app.state.subscription_task
                    assert not task.done()
                    # Let it start
                    await asyncio.sleep(0.01)

                # After exiting the context, task should be cancelled
                assert task.done()
                assert task.cancelled()
