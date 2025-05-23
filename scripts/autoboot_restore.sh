#!/bin/bash
echo "[FamilyOS] Auto-Restore starting..."

ENCRYPTED="/vault/memory_sync_bundle.tar.gz.enc"
DECRYPTED="/tmp/decrypted_sync.tar.gz"
RESTORE_DIR="/tmp/memory_sync"
