# Tool initialisations

# fnm (Fast Node Manager)
if command -v fnm &>/dev/null; then
    eval "$(fnm env --use-on-cd)"
else
    echo "[zsh] fnm not found. Install with: brew install fnm"
fi

# fzf
command -v fzf &>/dev/null && source <(fzf --zsh)

# envman
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# zoxide
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"

# Docker CLI completions
if [[ -d "$HOME/.docker/completions" ]]; then
    fpath=($HOME/.docker/completions $fpath)
    autoload -Uz compinit
    compinit
fi

# tmuxinator
if command -v tmuxinator &>/dev/null; then
    alias mux="tmuxinator"
fi
