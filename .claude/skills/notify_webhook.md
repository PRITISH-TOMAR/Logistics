# Skill: notify_webhook

## Purpose
Send failure or success notifications via webhook.
This is the single notification channel for all agents.

## Usage
Call this skill with:
- event_type: FAILURE | SUCCESS | WARNING | HUMAN_REQUIRED
- agent_name: which agent triggered this
- message: what happened
- payload: the relevant JSON data

## Process
1. Build notification payload
2. Read WEBHOOK_URL from environment
3. POST to webhook endpoint
4. Log the notification attempt to logs/webhook.log
5. Retry once on failure

## Payload Structure
{
  "event_type": "string",
  "agent": "string",
  "timestamp": "ISO8601",
  "message": "string",
  "environment": "string",
  "data": {}
}

## Destinations
- Primary: WEBHOOK_URL (env variable)
- Fallback: write to logs/failed_notifications.json