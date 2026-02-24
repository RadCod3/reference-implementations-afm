# AFM Reference Implementations

Reference implementations for [Agent-Flavored Markdown (AFM)](https://wso2.github.io/agent-flavored-markdown/).

## Implementations

| Implementation | Language/Framework | Status |
|----------------|-------------------|--------|
| [ballerina-interpreter](./ballerina-interpreter) | Ballerina | Active |
| [langchain-interpreter](./python-interpreter) | Python/LangChain | Active |

## Repository Structure

```
reference-implementations-afm/
├── ballerina-interpreter/    # Ballerina-based AFM interpreter
├── python-interpreter/       # LangChain-based AFM interpreter
└── .github/workflows/        # CI/CD (path-filtered per implementation)
```

## Getting Started

Each implementation has its own README with setup and usage instructions. See the implementation directories for details.

## Contributing

Contributions are welcome!

### Adding a New Implementation (New Language or Framework)

To add an interpreter in a new language or framework:

1. Create a new directory: `{language/framework}-{type}/` (e.g., `go-interpreter/`)
2. Add a path-filtered workflow in `.github/workflows/`
3. Include a README with setup and usage instructions
4. Follow the [AFM Specification](https://wso2.github.io/agent-flavored-markdown/specification/) for compatibility

### Adding a New Python Execution Backend (Plugin)

The Python interpreter uses a plugin-based architecture. New execution backends (e.g., for LlamaIndex, CrewAI or other agent frameworks) should be contributed as packages inside [`python-interpreter/packages/`](./python-interpreter/packages/).

To add a new Python backend:

1. Create a new package under `python-interpreter/packages/` and add it to the `uv` workspace
2. Implement the `AgentRunner` protocol from [`afm-core`](./python-interpreter/packages/afm-core/)
3. Register your backend via the `afm.runner` entry point in your `pyproject.toml`:
   ```toml
   [project.entry-points."afm.runner"]
   your-backend = "your_package.module:YourRunnerClass"
   ```
4. Use [`afm-langchain`](./python-interpreter/packages/afm-langchain/) as a reference implementation
5. Include a README and tests for your package

## License

Apache License 2.0
