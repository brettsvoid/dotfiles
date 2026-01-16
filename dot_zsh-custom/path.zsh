# PATH modifications

# Helper functions
function append_to_path() {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        export PATH="$PATH:$1"
    fi
}

function prepend_to_path() {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        export PATH="$1:$PATH"
    fi
}

# Homebrew
prepend_to_path "/opt/homebrew/bin"

# Amplify CLI
prepend_to_path "$HOME/.amplify/bin"

# Yarn
prepend_to_path "$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

# Go binaries
append_to_path "$HOME/go/bin"

# Docker CLI
append_to_path "$HOME/.docker/bin"

# Ruby
prepend_to_path "$(brew --prefix ruby)/bin"

# Rustup
prepend_to_path "$(brew --prefix rustup)/bin"

# ccache
prepend_to_path "/opt/homebrew/opt/ccache/libexec"

# Java
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# Android SDK
append_to_path "$ANDROID_HOME/emulator"
append_to_path "$ANDROID_HOME/tools"
append_to_path "$ANDROID_HOME/tools/bin"
append_to_path "$ANDROID_HOME/platform-tools"

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) prepend_to_path "$PNPM_HOME" ;;
esac

# LunarVim / local bin
prepend_to_path "$HOME/.local/bin"
