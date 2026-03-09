# Skill: validate_schema

## Purpose
Validate any agent output JSON against its schema file.
Use this after every agent writes its output.

## Usage
Call this skill with:
- output_file: path to the agent's output JSON
- schema_file: path to the agent's schema.json

## Process
1. Read the output JSON file
2. Read the schema JSON file
3. Check every required field is present
4. Check every field type matches schema
5. Check status field is a valid enum value
6. Return PASS or FAIL with specific reasons

## Output
{
  "validation": "PASS | FAIL",
  "missing_fields": [],
  "type_errors": [],
  "message": "string"
}

## On FAIL
Immediately call notify_webhook skill with full details.
Do not proceed to next agent.