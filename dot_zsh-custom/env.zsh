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
