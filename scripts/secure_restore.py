import os
os.system("openssl enc -d -aes-256-cbc -pbkdf2 -in /vault/memory_sync_bundle.tar.gz.enc -out /vault/memory_sync_bundle.tar.gz")
os.system("python3 /vault/memory_sync/restore_sync.py")
