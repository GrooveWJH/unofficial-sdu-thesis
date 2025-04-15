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
    
    # Copy contents from latest to version directory, excluding experiments
    latest_dir = "src/latest"
    for item in os.listdir(latest_dir):
        # Skip experiments directory and experiment.* files
        if item == "experiments" or item.startswith("experiment."):
            continue
            
        src_path = os.path.join(latest_dir, item)
        dst_path = os.path.join(version_dir, item)
        if os.path.isdir(src_path):
            shutil.copytree(src_path, dst_path)
        else:
            shutil.copy2(src_path, dst_path)
            
    # Copy README.md from latest to root
    shutil.copy2(os.path.join(latest_dir, "README.md"), "README.md")
    
    # Delete thesis.pdf from version directory
    pdf_path = os.path.join(version_dir, "template", "thesis.pdf")
    if os.path.exists(pdf_path):
        os.remove(pdf_path)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python cp.py <version>")
        sys.exit(1)
    
    version = sys.argv[1]
    copy_latest_to_version(version)
