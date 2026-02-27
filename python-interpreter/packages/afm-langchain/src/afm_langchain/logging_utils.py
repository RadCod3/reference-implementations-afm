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

from __future__ import annotations

import logging


class MCPStdioNoiseFilter(logging.Filter):
    """Demotes harmless MCP stdio parse errors from ERROR to DEBUG.

    Package managers (uvx, npx) write installation output to stdout on
    first run, which the MCP client's stdout_reader tries to parse as
    JSONRPC and logs as ERROR. These are harmless; the session starts
    correctly once the real server begins. See also:
    https://github.com/modelcontextprotocol/servers/issues/2895
    """

    _NOISE_PREFIX = "Failed to parse JSONRPC message from server"

    def filter(self, record: logging.LogRecord) -> bool:
        if (
            record.levelno == logging.ERROR
            and self._NOISE_PREFIX in record.getMessage()
        ):
            record.levelno = logging.DEBUG
            record.levelname = "DEBUG"
        return True
