#!/bin/bash

BASE_PATH=$1
SCRIPT_NAME="psx-cuegen"

mkdir -p "$BASE_PATH/bin" 2>/dev/null
ln -s $(readlink -f "$SCRIPT_NAME") $(readlink -f "$BASE_PATH/bin")
if [ $? -ne 0 ]; then
    echo "Installation failed."
    exit 1
else
    echo "Installation successful."
    exit 0
fi
