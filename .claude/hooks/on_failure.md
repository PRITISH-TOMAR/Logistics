# Hook: on_failure

## Fires
When any agent or hook fails unexpectedly.

## Actions
1. Capture full error context
2. Save current chain state to logs/failure_state.json
3. Call notify_webhook with FAILURE + full context
4. Write human-readable summary to logs/failure_summary.txt
5. Exit cleanly — do not leave partial outputs

## Failure State Saved
{
  "failed_agent": "string",
  "run_id": "string",
  "timestamp": "string",
  "last_successful_agent": "string",
  "error": "string",
  "partial_outputs": []
}
