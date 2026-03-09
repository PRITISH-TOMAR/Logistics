# Skill: log_event

## Purpose
Structured logging for every agent action.
Every agent start, end, decision, and error gets logged.

## Usage
Call at:
- Start of every agent  (event: AGENT_START)
- End of every agent    (event: AGENT_COMPLETE)
- Any decision point    (event: DECISION)
- Any error             (event: ERROR)

## Log Format
{
  "timestamp": "ISO8601",
  "run_id": "string",
  "agent": "string",
  "event": "string",
  "status": "string",
  "confidence": "float",
  "duration_ms": "number",
  "message": "string"
}

## Log Destination
Append to: logs/run_YYYYMMDD.log