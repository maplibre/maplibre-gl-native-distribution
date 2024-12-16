#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

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

# Move framework to destination
echo "Moving framework to destination..."
if mv -f "$SOURCE_PATH" "$DEST_PATH"; then
    echo -e "${GREEN}Successfully built and moved framework to:${NC}"
    echo "$DEST_PATH"
    
    # Set the environment variable for local development
    echo "export USE_MAPLIBRE_LOCAL_FRAMEWORK=1" >> ~/.zshrc
    source ~/.zshrc
    
    echo -e "${GREEN}Framework unzipped and environment configured for local development!${NC}"
else
    echo -e "${RED}Failed to move framework to destination!${NC}"
    exit 1
fi
