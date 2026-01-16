# Environment variables

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# React editor for stack traces
export REACT_EDITOR=nvim

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk

# pnpm
export PNPM_HOME="/Users/brett/Library/pnpm"

# Conda
export CONDA_BASE="/opt/homebrew/anaconda3"

# Claude Sentry MCP
export SENTRY_ACCESS_TOKEN_CLAUDE="$(bws secret get 59d40097-f5d2-4fd3-bc0d-b3d400f0a9f8 --access-token $BWS_ACCESS_TOKEN | jq -r '.value')"
