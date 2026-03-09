# Command: run_chain

## Trigger
/run_chain [order_file]

## Action
Run the full 8-agent orchestration chain on
the specified order file.

## Example
/run_chain dev/data/mock_orders/order_001.txt

## Process
1. Call sanitize_input on the order file
2. Spawn Agent 01 with sanitized input
3. Run full chain with all hooks active
4. Report final status to terminal