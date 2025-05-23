# (paste the script)
chmod +x ~/FamilyOS/scripts/view_bootlog.sh



#!/bin/bash
# View the last 10 boot entries from FamilyOS boot log

LOG_FILE="/root/FamilyOS/logs/system/boot.status"

if [ ! -f "$LOG_FILE" ]; then
  echo "[Error] Boot log not found at: $LOG_FILE"
  exit 1
fi

echo "=== Last 10 Boot Entries ==="
tail -n 10 "$LOG_FILE"
