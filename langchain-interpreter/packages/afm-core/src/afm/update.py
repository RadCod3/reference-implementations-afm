# Copyright (c) 2025
# Licensed under the Apache License, Version 2.0

"""Asynchronous background update checker for the AFM CLI.

This module implements the "Async Discovery + Notify on Next Run" pattern:
1. On each CLI invocation, check a local state file (24h TTL).
2. If due, spawn a detached background process to query PyPI.
3. On the next invocation, show a notification if a newer version exists.

The notification is only shown in interactive terminals (TTY) and can be
disabled via the AFM_NO_UPDATE_CHECK=1 environment variable.
"""

from __future__ import annotations

import json
import logging
import os
import subprocess
import sys
import time
from pathlib import Path

logger = logging.getLogger(__name__)

# How often to check for updates (seconds) — 24 hours
CHECK_INTERVAL = 86400

# The PyPI package name to check
PYPI_PACKAGE = "afm-cli"


def _get_installed_version() -> str | None:
    """Get the installed version of afm-cli using importlib.metadata."""
    try:
        from importlib.metadata import version

        return version(PYPI_PACKAGE)
    except Exception:
        return None


class UpdateState:
    """Manages persistent state for update checks.

    State is stored as JSON at <user_config_dir>/afm/update_state.json.
    """

    def __init__(self) -> None:
        from platformdirs import user_config_dir

        self.path = Path(user_config_dir("afm")) / "update_state.json"
        self.data = self._load()

    def _load(self) -> dict:
        """Load state from disk, returning defaults if missing/corrupt."""
        try:
            if self.path.exists():
                with open(self.path) as f:
                    data = json.load(f)
                    if isinstance(data, dict):
                        return data
        except (json.JSONDecodeError, OSError, ValueError):
            pass
        return {"last_check": 0, "latest_version": None, "notified_version": None}

    def save(self) -> None:
        """Persist current state to disk."""
        try:
            self.path.parent.mkdir(parents=True, exist_ok=True)
            with open(self.path, "w") as f:
                json.dump(self.data, f)
        except OSError:
            pass  # Non-critical — silently ignore write failures

    @property
    def is_check_due(self) -> bool:
        """True if the TTL has expired and a new check should run."""
        last = self.data.get("last_check", 0)
        return (time.time() - last) >= CHECK_INTERVAL


def _detect_upgrade_command() -> str:
    """Detect the installation context and return the appropriate upgrade command string."""
    executable = sys.executable or ""

    if "pipx" in executable:
        return f"pipx upgrade {PYPI_PACKAGE}"
    elif "uv" in executable:
        return f"uv tool upgrade {PYPI_PACKAGE}"
    else:
        return f"pip install -U {PYPI_PACKAGE}"


def maybe_check_for_updates() -> None:
    """Spawn a background process to check PyPI if the TTL has expired.

    This function is designed to be called early in the CLI lifecycle.
    It adds negligible overhead (microseconds) to the main command.
    """
    # Opt-out via environment variable
    if os.environ.get("AFM_NO_UPDATE_CHECK", "").strip() == "1":
        return

    try:
        state = UpdateState()
        if not state.is_check_due:
            return

        # Spawn detached background process
        cmd = [sys.executable, "-m", "afm.update"]

        kwargs: dict = {
            "stdout": subprocess.DEVNULL,
            "stderr": subprocess.DEVNULL,
            "stdin": subprocess.DEVNULL,
        }

        # Platform-specific flags for silent backgrounding
        if sys.platform == "win32":
            kwargs["creationflags"] = 0x00000008  # DETACHED_PROCESS
        else:
            kwargs["close_fds"] = True
            kwargs["start_new_session"] = True

        subprocess.Popen(cmd, **kwargs)  # noqa: S603
    except Exception:
        pass  # Never let update checking break the CLI


def get_update_notification() -> str | None:
    """Return a plain-text update notification string, or None if no update.

    This is used by the consolechat Textual app to display a toast.
    Unlike notify_if_update_available(), this does NOT check TTY or
    write to stderr — it just returns the message.
    """
    if os.environ.get("AFM_NO_UPDATE_CHECK", "").strip() == "1":
        return None

    try:
        from packaging.version import Version

        state = UpdateState()
        latest = state.data.get("latest_version")
        if not latest:
            return None

        current = _get_installed_version()
        if not current:
            return None

        try:
            if Version(latest) <= Version(current):
                return None
        except Exception:
            return None

        state.data["notified_version"] = latest
        state.save()

        upgrade_cmd = _detect_upgrade_command()
        return (
            f"Update available: {current} \u2192 {latest}. "
            f"Run '{upgrade_cmd}' to update."
        )
    except Exception:
        return None


def notify_if_update_available() -> None:
    """Show a notification if a newer version is available.

    Only displays in interactive terminals (TTY). Tracks which version
    was last notified to avoid showing the same message repeatedly.
    """
    # Opt-out via environment variable
    if os.environ.get("AFM_NO_UPDATE_CHECK", "").strip() == "1":
        return

    # Only notify in interactive terminals
    try:
        if not sys.stderr.isatty():
            return
    except Exception:
        return

    try:
        from packaging.version import Version

        state = UpdateState()
        latest = state.data.get("latest_version")
        if not latest:
            return

        current = _get_installed_version()
        if not current:
            return

        # Compare versions properly (handles pre-releases, etc.)
        try:
            if Version(latest) <= Version(current):
                return
        except Exception:
            return

        # Don't re-notify for the same version
        if state.data.get("notified_version") == latest:
            return

        # Print notification to stderr
        from rich.console import Console

        upgrade_cmd = _detect_upgrade_command()
        console = Console(stderr=True)
        console.print(
            f"\n[yellow bold]A new version of afm is available: "
            f"{current} → {latest}[/]",
        )
        console.print(
            f"[yellow]Run '[bold]{upgrade_cmd}[/bold]' to update.[/]\n",
        )

        # Record that we notified about this version
        state.data["notified_version"] = latest
        state.save()
    except Exception:
        pass  # Never let notification logic break the CLI


def _perform_background_check() -> None:
    """Query PyPI for the latest version and write it to the state file.

    This function is called by the background subprocess (python -m afm.update).
    All exceptions are silently swallowed — background tasks must never
    produce visible output or errors.
    """
    try:
        import httpx

        response = httpx.get(
            f"https://pypi.org/pypi/{PYPI_PACKAGE}/json",
            timeout=10,
            follow_redirects=True,
        )
        if response.status_code == 200:
            latest = response.json()["info"]["version"]
            state = UpdateState()
            state.data["last_check"] = time.time()
            state.data["latest_version"] = latest
            state.save()
    except Exception:
        # Update the last_check even on failure to avoid hammering PyPI
        try:
            state = UpdateState()
            state.data["last_check"] = time.time()
            state.save()
        except Exception:
            pass


if __name__ == "__main__":
    _perform_background_check()
