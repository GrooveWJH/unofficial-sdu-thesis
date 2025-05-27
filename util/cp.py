import os
import shutil
import sys

def copy_latest_to_version(version):
    # Create version directory if it doesn't exist
    version_dir = f"src/{version}"
    
    # Remove version directory if exists
    if os.path.exists(version_dir):
        shutil.rmtree(version_dir)
        
    # Create fresh version directory
    os.makedirs(version_dir)
    
    # Copy contents from latest to version directory, excluding experiments and pdf files
    latest_dir = "src/latest"
    for root, dirs, files in os.walk(latest_dir):
        for item in files:
            # Skip pdf files and exclude experiments directories
            if item.endswith(".pdf") or "experiments" in root:
                continue
            src_path = os.path.join(root, item)
            relative_path = os.path.relpath(src_path, latest_dir)
            dst_path = os.path.join(version_dir, relative_path)
            
            os.makedirs(os.path.dirname(dst_path), exist_ok=True)
            shutil.copy2(src_path, dst_path)
    
    # Copy README.md from latest to root
    shutil.copy2(os.path.join(latest_dir, "README.md"), "README.md")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python cp.py <version>")
        sys.exit(1)
    
    version = sys.argv[1]
    copy_latest_to_version(version)
