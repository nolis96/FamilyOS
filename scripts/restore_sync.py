import tarfile

BUNDLE_PATH = "/vault/memory_sync_bundle.tar.gz"

def extract_bundle():
    with tarfile.open(BUNDLE_PATH, "r:gz") as tar:
        tar.extractall(path="/")
    print("Memory restored from bundle.")

if __name__ == "__main__":
    extract_bundle()
