#!/bin/bash

# 检测操作系统并设置 data-dir
OS_TYPE="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS_TYPE="Linux"
    DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS_TYPE="macOS"
    DATA_DIR="$HOME/Library/Application Support"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    OS_TYPE="Windows"
    DATA_DIR="$APPDATA"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

echo "Detected OS: $OS_TYPE"
TARGET_DIR="$DATA_DIR/typst/packages/local"

# 检测 local 目录是否存在，不存在则创建
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Creating directory: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
fi

# 检测 unofficial-sdu-thesis 目录是否存在，如果存在则删除
PACKAGE_DIR="$TARGET_DIR/unofficial-sdu-thesis"
if [[ -d "$PACKAGE_DIR" ]]; then
    echo "Removing existing directory: $PACKAGE_DIR"
    rm -rf "$PACKAGE_DIR"
fi

# 创建 unofficial-sdu-thesis 目录
echo "Creating directory: $PACKAGE_DIR"
mkdir -p "$PACKAGE_DIR"

# 将当前目录下的 ./src 目录中的所有内容复制到目标目录
if [[ -d "./src" ]]; then
    echo "Copying contents from ./src to $PACKAGE_DIR"
    cp -r ./src/* "$PACKAGE_DIR/"
else
    echo "Error: ./src directory does not exist."
    exit 1
fi

echo "Operation completed."
echo -e "\033[32m你可以使用\033[0m"
echo -e "\033[33m#import \"@local/unofficial-sdu-thesis:1.0.0\": *\033[0m"
echo -e "\033[32m作为开始\033[0m"