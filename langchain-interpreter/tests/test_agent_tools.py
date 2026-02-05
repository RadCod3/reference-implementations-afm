from unittest.mock import MagicMock, patch
from langchain_core.tools import StructuredTool
from pydantic import BaseModel
from langchain_interpreter.agent import Agent
from langchain_interpreter.models import AFMRecord, AgentMetadata


def test_fix_tools_for_openai_with_dict_schema():
    """Test that tools with dict schemas are fixed for OpenAI."""

    # Create a tool with a problematic dict schema (no properties)
    def my_func():
        return "result"

    # StructuredTool can take args_schema as a dict
    tool = StructuredTool.from_function(
        func=my_func,
        name="test_tool",
        description="A test tool",
        args_schema={"type": "object"},
    )

    afm = AFMRecord(
        metadata=AgentMetadata(name="Test"), role="Role", instructions="Instructions"
    )

    # Mock model provider to avoid actual provider creation
    with patch("langchain_interpreter.agent.create_model_provider") as mock_provider:
        mock_model = MagicMock()
        mock_model.bind_tools = MagicMock(return_value=mock_model)
        mock_provider.return_value = mock_model

        agent = Agent(afm)
        fixed_tools = agent._fix_tools_for_openai([tool])

        assert len(fixed_tools) == 1
        schema = fixed_tools[0].args_schema
        assert isinstance(schema, dict) and "properties" in schema
        assert schema["properties"] == {}


def test_fix_tools_for_openai_with_no_schema():
    """Test that tools with no schema are fixed for OpenAI."""
    # BaseTool might have no args_schema
    tool = MagicMock()
    tool.args_schema = None

    afm = AFMRecord(
        metadata=AgentMetadata(name="Test"), role="Role", instructions="Instructions"
    )

    with patch("langchain_interpreter.agent.create_model_provider") as mock_provider:
        mock_model = MagicMock()
        mock_provider.return_value = mock_model

        agent = Agent(afm)
        fixed_tools = agent._fix_tools_for_openai([tool])

        assert len(fixed_tools) == 1
        assert fixed_tools[0].args_schema is not None
        assert isinstance(fixed_tools[0].args_schema, type) and issubclass(
            fixed_tools[0].args_schema, BaseModel
        )


def test_fix_tools_for_openai_preserves_existing_properties():
    """Test that tools with existing properties are not affected."""

    def my_func(query: str):
        return query

    tool = StructuredTool.from_function(
        func=my_func,
        name="test_tool",
        description="A test tool",
        args_schema={"type": "object", "properties": {"query": {"type": "string"}}},
    )

    afm = AFMRecord(
        metadata=AgentMetadata(name="Test"), role="Role", instructions="Instructions"
    )

    with patch("langchain_interpreter.agent.create_model_provider") as mock_provider:
        mock_model = MagicMock()
        mock_provider.return_value = mock_model

        agent = Agent(afm)
        fixed_tools = agent._fix_tools_for_openai([tool])

        assert len(fixed_tools) == 1
        schema = fixed_tools[0].args_schema
        assert isinstance(schema, dict) and "query" in schema.get("properties", {})
