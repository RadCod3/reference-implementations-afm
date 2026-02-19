---
spec_version: '0.3.0'
name: "StdioMcpAgent"
description: "A test agent with stdio MCP tools."
version: "1.0.0"
tools:
  mcp:
    - name: "filesystem_server"
      transport:
        type: stdio
        command: "npx"
        args:
          - "-y"
          - "@modelcontextprotocol/server-filesystem"
          - "/tmp"
    - name: "local_db_tool"
      transport:
        type: stdio
        command: "python"
        args:
          - "server.py"
        env:
          DB_PATH: "./data.db"
          API_KEY: "dummy-key"
      tool_filter:
        allow:
          - "query"
          - "search"
        deny:
          - "delete"
---
# Role
You are a file system and database assistant.

# Instructions
Use the available stdio tools to interact with the file system and database.
