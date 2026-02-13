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

import json
import re
from typing import Any

import jsonschema
from jsonschema import ValidationError as JsonSchemaValidationError

from .exceptions import InputValidationError, OutputValidationError
from .models import JSONSchema

JSON_BLOCK_PATTERN = re.compile(r"```json\s*([\s\S]*?)\s*```")
GENERIC_BLOCK_PATTERN = re.compile(r"```\s*([\s\S]*?)\s*```")


def json_schema_to_dict(schema: JSONSchema) -> dict[str, Any]:
    result: dict[str, Any] = {"type": schema.type}

    if schema.properties is not None:
        result["properties"] = {
            name: json_schema_to_dict(prop) for name, prop in schema.properties.items()
        }

    if schema.required is not None:
        result["required"] = schema.required

    if schema.items is not None:
        result["items"] = json_schema_to_dict(schema.items)

    if schema.description is not None:
        result["description"] = schema.description

    extra_fields = schema.model_dump(
        exclude={"type", "properties", "required", "items", "description"}
    )
    for key, value in extra_fields.items():
        if value is not None:
            original = getattr(schema, key, None)
            if isinstance(original, JSONSchema):
                result[key] = json_schema_to_dict(original)
            else:
                result[key] = value

    return result


def validate_input(data: Any, schema: JSONSchema) -> None:
    schema_dict = json_schema_to_dict(schema)
    try:
        jsonschema.validate(instance=data, schema=schema_dict)
    except JsonSchemaValidationError as e:
        path = ".".join(str(p) for p in e.absolute_path) if e.absolute_path else None
        raise InputValidationError(e.message, schema_path=path) from e


def validate_output(data: Any, schema: JSONSchema) -> None:
    schema_dict = json_schema_to_dict(schema)
    try:
        jsonschema.validate(instance=data, schema=schema_dict)
    except JsonSchemaValidationError as e:
        path = ".".join(str(p) for p in e.absolute_path) if e.absolute_path else None
        raise OutputValidationError(e.message, schema_path=path) from e


def extract_json_from_response(response: str) -> str:
    match = JSON_BLOCK_PATTERN.search(response)
    if match:
        return match.group(1).strip()

    match = GENERIC_BLOCK_PATTERN.search(response)
    if match:
        return match.group(1).strip()

    return response.strip()


def coerce_output_to_schema(
    response: str,
    schema: JSONSchema,
) -> Any:
    if schema.type == "string":
        return response

    json_str = extract_json_from_response(response)

    try:
        data = json.loads(json_str)
    except json.JSONDecodeError as e:
        raise OutputValidationError(
            f"Failed to parse response as JSON: {e}",
            schema_path=None,
        ) from e

    # Handle non-object schema types
    if schema.type != "object":
        validate_output(data, schema)
        return data

    # Validate against schema
    validate_output(data, schema)
    return data


def build_output_schema_instruction(schema: JSONSchema) -> str:
    schema_dict = json_schema_to_dict(schema)
    schema_json = json.dumps(schema_dict, indent=2)

    return f"""

The final response MUST conform to the following JSON schema:
{schema_json}

Respond only with the JSON value enclosed between ``` and ```.
Do not include any other text or explanation outside the code block."""
