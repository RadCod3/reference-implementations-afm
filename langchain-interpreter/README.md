# AFM CLI

The **AFM CLI** (`afm`) is a reference implementation of an interpreter for [**Agent-Flavored Markdown (AFM)**](https://wso2.github.io/agent-flavored-markdown/). It allows you to run AI agents defined in simple Markdown files locally or as web services.

Built on top of [LangChain](https://www.langchain.com/), this interpreter provides a robust and extensible runtime for your agents.

AFM is a standard for defining AI agents using a mix of YAML front-matter (configuration) and Markdown (instructions), making agents portable, readable, and easy to version control.

## Features

*   **Run Agents anywhere**: Execute `.afm.md` files directly from your terminal.
*   **Multiple Interfaces**:
    *   **Console Chat**: Interactive CLI chat for testing and debugging.
    *   **Web Chat**: Exposes a REST API and can serve a web UI.
    *   **Webhooks**: Supports event-driven architectures with WebSub integration.
*   **Tool Support**: Built-in support for **Model Context Protocol (MCP)** to connect agents to external data and tools.
*   **Validation**: Dry-run mode to validate your agent definitions before execution.

## Installation

### Using pipx (Recommended)

To run `afm` as a standalone command-line tool:

```bash
pipx install afm-cli
```

### Using pip

To install it as a library or in a virtual environment:

```bash
pip install afm-cli
```

## Quick Start

1.  **Create an AFM file** (e.g., `my_agent.afm.md`):

    ```markdown
    ---
    spec_version: "0.3.0"
    name: "Helpful Assistant"
    model:
      provider: openai
      name: gpt-4o
    interfaces:
      - type: consolechat
    ---

    # Role
    You are a helpful AI assistant.

    # Instructions
    Answer the user's questions concisely.
    ```

2.  **Set your API Key**:

    ```bash
    export OPENAI_API_KEY="your-api-key-here"
    ```

3.  **Run the agent**:

    ```bash
    afm my_agent.afm.md
    ```

3.  **Chat!** You can now interact with your agent in the terminal.

## Usage

```bash
Usage: afm [OPTIONS] FILE

  Run an AFM agent from FILE.

Options:
  -p, --port INTEGER  HTTP port for web interfaces (default: 8000)
  -H, --host TEXT     Host to bind HTTP server to (default: 0.0.0.0)
  --dry-run           Validate AFM file without running the agent
  --no-console        Skip consolechat interface even if defined
  -v, --verbose       Enable verbose/debug logging
  --version           Show the version and exit.
  --help              Show this message and exit.
```

## AFM File Format

An AFM file consists of **YAML Front Matter** and a **Markdown Body**.

### Front Matter
Contains configuration:
*   **Metadata**: Name, version, description.
*   **Model**: Provider (OpenAI, Anthropic, etc.) and model name.
*   **Interfaces**: How the agent is exposed (console, web, webhook).
*   **Tools**: MCP server connections.

### Markdown Body
Contains the logic:
*   **# Role**: Who the agent is.
*   **# Instructions**: What the agent should do.

See `afm-samples/` directory for more complex examples including tool usage.

## Interfaces

### Console Chat
Run interactive sessions in your terminal.
```yaml
interfaces:
  - type: consolechat
```

### Web Chat
Exposes a FastAPI endpoint for chat.
```yaml
interfaces:
  - type: webchat
    exposure:
      http:
        path: /chat
```
Run with `afm agent.afm.md --port 8080`.

### Webhook
Processes incoming HTTP requests, suitable for event-driven workflows.
```yaml
interfaces:
  - type: webhook
    subscription:
      protocol: websub
      topic: my-topic
      hub: http://my-hub.com
```

## Development

To contribute to this project:

1.  Clone the repository.
2.  Install `uv` (modern Python package manager).
3.  Install dependencies:
    ```bash
    uv sync
    ```
4.  Run tests:
    ```bash
    uv run pytest
    ```

## License

Apache-2.0
