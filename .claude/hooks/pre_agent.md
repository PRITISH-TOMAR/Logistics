# Hook: pre_agent

## Fires
Before every subagent is spawned.

## Actions
1. Call log_event with AGENT_START
2. Verify the input file for this agent exists
3. Verify outputs/ directory is writable
4. Check available disk space (warn if < 100MB)
5. Record start timestamp for duration tracking

## On Failure
If input file missing:
- Call notify_webhook with FAILURE event
- Stop orchestrator immediately
- Log to logs/pre_hook_failures.log