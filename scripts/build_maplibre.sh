#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ENV_VAR_NAME="USE_MAPLIBRE_LOCAL_FRAMEWORK"

verify_env_var() {
    echo "Verifying environment variable setup..."
    
    # Check current shell
    if [ -z "${!ENV_VAR_NAME}" ]; then
        echo -e "${RED}${ENV_VAR_NAME} not set in current shell${NC}"
    else
        echo -e "${GREEN}${ENV_VAR_NAME} set in current shell: ${!ENV_VAR_NAME}${NC}"
    fi
    
    # Check zshrc
    if grep -q "export ${ENV_VAR_NAME}=1" ~/.zshrc; then
        echo -e "${GREEN}${ENV_VAR_NAME} export found in ~/.zshrc${NC}"
    else
        echo -e "${RED}${ENV_VAR_NAME} export not found in ~/.zshrc${NC}"
    fi
    
    # Check launchctl
    LAUNCH_VAL=$(launchctl getenv ${ENV_VAR_NAME})
    if [ -z "$LAUNCH_VAL" ]; then
        echo -e "${RED}${ENV_VAR_NAME} not set in launchctl${NC}"
    else
        echo -e "${GREEN}${ENV_VAR_NAME} set in launchctl: $LAUNCH_VAL${NC}"
    fi
}

echo -e "${GREEN}MapLibre iOS Framework Builder${NC}"
echo "----------------------------------------"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "Building MapLibre framework..."
cd "$MAPLIBRE_DIR" || exit 1

if ! bazel build --compilation_mode=opt //platform/ios:MapLibre.dynamic; then
    echo -e "${RED}Build failed!${NC}"
    exit 1
fi

EXECUTION_ROOT=$(bazel info execution_root)
SOURCE_PATH="${EXECUTION_ROOT}/bazel-out/darwin_arm64-opt/bin/platform/ios/MapLibre.dynamic.xcframework.zip"
DEST_PATH="${REPO_ROOT}/MapLibre.dynamic.xcframework.zip"

echo "Copying framework to destination..."
if cp -f "$SOURCE_PATH" "$DEST_PATH"; then
    echo -e "${GREEN}Successfully copied framework to:${NC}"
    echo "$DEST_PATH"
    
    # Add to zshrc if not already there
    if ! grep -q "export ${ENV_VAR_NAME}=1" ~/.zshrc; then
        echo "export ${ENV_VAR_NAME}=1" >> ~/.zshrc
    fi
    
    # Set for current shell
    export ${ENV_VAR_NAME}=1
    
    # Add to launchctl for system-wide availability
    launchctl setenv ${ENV_VAR_NAME} 1
    
    echo -e "${GREEN}Framework copied and environment configured system-wide!${NC}"
    echo -e "${YELLOW}Please restart Xcode to pick up the environment changes.${NC}"
else
    echo -e "${RED}Failed to copy framework to destination!${NC}"
    exit 1
fi

verify_env_var