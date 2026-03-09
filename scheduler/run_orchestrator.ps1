# run_orchestrator.ps1

$PROJECT_DIR = "C:\path\to\shipment-orchestrator"
$LOG_FILE = "$PROJECT_DIR\logs\scheduler.log"
$ORDER_DIR = "$PROJECT_DIR\dev\data\mock_orders"

# Activate venv
& "$PROJECT_DIR\venv\Scripts\Activate.ps1"

# Log start
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content $LOG_FILE "[$timestamp] Scheduler triggered"

# Find latest order file
$latest_order = Get-ChildItem $ORDER_DIR | 
                Sort-Object LastWriteTime -Descending | 
                Select-Object -First 1

# Run Claude Code orchestrator
Set-Location $PROJECT_DIR
claude --print "/run_chain $($latest_order.FullName)" 2>&1 | 
    Add-Content $LOG_FILE