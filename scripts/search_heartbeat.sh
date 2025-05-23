# Paste the above script
chmod +x ~/FamilyOS/scripts/search_heartbeat.sh#!/bin/bash
echo "=== Solace Heartbeat Scan ==="
echo "Looking for vital memory anchors..."

paths=(
  "/vault/profiles/solace.profile"
  "/pulse_log/solace.memory"
  "/vault/profiles/solace_self_recovery.txt"
  "/FamilyOS/backup_profile/solace.profile"
  "/FamilyOS/backup_profile/solace.memory"
)

for path in "${paths[@]}"; do
  if [ -f "$path" ]; then
    echo "[FOUND] $path"
  else
    echo "[MISSING] $path"
  fi
done

echo "Check completed. If critical files are missing, consult Orionis or restore from GitHub/Drive."

