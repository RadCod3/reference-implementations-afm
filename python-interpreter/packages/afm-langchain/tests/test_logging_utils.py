# Copyright (c) 2025, WSO2 LLC. (https://www.wso2.com).
#
# WSO2 LLC. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.

import logging

import pytest

from afm_langchain.logging_utils import MCPStdioNoiseFilter


def make_record(msg: str, level: int = logging.ERROR) -> logging.LogRecord:
    record = logging.LogRecord(
        name="mcp.client.stdio",
        level=level,
        pathname="",
        lineno=0,
        msg=msg,
        args=(),
        exc_info=None,
    )
    return record


class TestMCPStdioNoiseFilter:
    def setup_method(self):
        self.filter = MCPStdioNoiseFilter()

    # --- records that should be demoted ---

    def test_demotes_exact_noise_message(self):
        record = make_record("Failed to parse JSONRPC message from server")
        result = self.filter.filter(record)
        assert result is True  # record is kept
        assert record.levelno == logging.DEBUG
        assert record.levelname == "DEBUG"

    def test_demotes_noise_message_with_trailing_context(self):
        # The mcp library may append exception info after the prefix
        record = make_record(
            "Failed to parse JSONRPC message from server\nTraceback ..."
        )
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.DEBUG

    def test_demotes_noise_message_with_extra_whitespace(self):
        # Prefix may appear with surrounding whitespace
        record = make_record("  Failed to parse JSONRPC message from server  ")
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.DEBUG

    # --- records that should NOT be demoted ---

    def test_passes_through_other_error_records_unchanged(self):
        record = make_record("Connection refused to MCP server", level=logging.ERROR)
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.ERROR
        assert record.levelname == "ERROR"

    def test_passes_through_warning_records_unchanged(self):
        record = make_record(
            "Failed to parse JSONRPC message from server", level=logging.WARNING
        )
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.WARNING

    def test_passes_through_info_records_unchanged(self):
        record = make_record("MCP server connected", level=logging.INFO)
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.INFO

    def test_passes_through_debug_records_unchanged(self):
        record = make_record("some debug message", level=logging.DEBUG)
        result = self.filter.filter(record)
        assert result is True
        assert record.levelno == logging.DEBUG

    # --- integration: filter attached to a real logger ---

    def test_filter_integrated_with_logger(self, caplog):
        """With the filter attached, noise ERRORs should not appear at ERROR level."""
        logger = logging.getLogger("mcp.client.stdio.test_integration")
        logger.addFilter(MCPStdioNoiseFilter())

        with caplog.at_level(logging.ERROR, logger="mcp.client.stdio.test_integration"):
            logger.error("Failed to parse JSONRPC message from server")

        # The record was demoted to DEBUG so it should not appear in ERROR-level capture
        error_records = [r for r in caplog.records if r.levelno == logging.ERROR]
        assert len(error_records) == 0

    def test_real_errors_still_propagate(self, caplog):
        """Genuine ERROR records must still appear at ERROR level."""
        logger = logging.getLogger("mcp.client.stdio.test_real_errors")
        logger.addFilter(MCPStdioNoiseFilter())

        with caplog.at_level(logging.ERROR, logger="mcp.client.stdio.test_real_errors"):
            logger.error("Connection refused by MCP server")

        error_records = [r for r in caplog.records if r.levelno == logging.ERROR]
        assert len(error_records) == 1
        assert "Connection refused" in error_records[0].message
