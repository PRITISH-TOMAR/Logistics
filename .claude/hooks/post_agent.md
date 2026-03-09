# Hook: post_agent

## Fires
After every subagent completes.

## Actions
1. Call validate_schema on agent output
2. Call log_event with AGENT_COMPLETE
3. Check confidence_score in output
4. Calculate agent duration from start timestamp

## Decision Logic
- validate_schema = PASS + confidence >= 0.7 → proceed
- validate_schema = PASS + confidence < 0.7  → notify WARNING + stop
- validate_schema = FAIL                      → notify FAILURE + stop
- status = NEEDS_CLARIFICATION               → notify HUMAN_REQUIRED + stop
- status = REJECTED                          → notify FAILURE + stop

## On Success
Pass output file path to next agent as input.