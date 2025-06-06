#!/usr/bin/env bash

set -e # Exit on error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMPORT_DIR="$SCRIPT_DIR/.brew-import"

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "❌ Error: Homebrew is not installed"
    exit 1
fi

# Create .brew-import directory if it doesn't exist
if [ ! -d "$IMPORT_DIR" ]; then
    mkdir -p "$IMPORT_DIR"
fi

echo "📦 Exporting brew packages..."
if ! brew leaves --installed-on-request >"$IMPORT_DIR/brew-packages.txt"; then
    echo "❌ Error: Failed to export brew packages"
    exit 1
fi
echo "✅ Exported brew packages to brew-packages.txt"

echo "🍺 Exporting brew casks..."
if ! brew list --cask >"$IMPORT_DIR/brew-casks.txt"; then
    echo "❌ Error: Failed to export brew casks"
    exit 1
fi
echo "✅ Exported brew casks to brew-casks.txt"
