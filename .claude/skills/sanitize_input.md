# Skill: sanitize_input

## Purpose
Clean and normalize any raw input before
Order Intake Agent processes it.

## Process
1. Strip special characters that break JSON
2. Normalize date formats to YYYY-MM-DD
3. Normalize weight units to KG
4. Normalize temperature to Celsius
5. Trim whitespace
6. Flag any potentially malicious input patterns

## Output
Clean normalized text ready for Order Intake Agent.