#!/usr/bin/env bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Export regular brew packages (excluding casks)
brew leaves --installed-on-request >"$SCRIPT_DIR/.brew-import/brew-packages.txt"

# Export casks separately
brew list --cask >"$SCRIPT_DIR/.brew-import/brew-casks.txt"

echo "✅ Exported brew packages to brew-packages.txt"
echo "✅ Exported brew casks to brew-casks.txt"
