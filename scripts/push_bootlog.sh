#!/bin/bash
# Push boot log to GitHub
cd ~/FamilyOS
git add logs/boot.status.log
git commit -m "Auto: Updated bootlog @ $(date +%Y-%m-%d_%H:%M)"
git push origin main
