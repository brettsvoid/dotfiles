# Utility functions

# VS Code launcher
code() {
    VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

# Sketchybar brew wrapper
# Updates the brew package count after running certain brew commands
if command -v sketchybar &>/dev/null; then
    function brew() {
        command brew "$@"
        if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]] || [[ $* =~ "list" ]] || [[ $* =~ "install" ]] || [[ $* =~ "uninstall" ]] || [[ $* =~ "bundle" ]] || [[ $* =~ "doctor" ]] || [[ $* =~ "info" ]] || [[ $* =~ "cleanup" ]]; then
            sketchybar --trigger brew_update
        fi
    }
fi

# Yazi wrapper to allow changing working directory when exiting
# https://yazi-rs.github.io/docs/quick-start
function yy() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# Conda lazy loader
# Only initialises conda when first invoked
conda() {
    unset -f conda

    __conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
            . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
        else
            export PATH="/opt/homebrew/anaconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup

    conda "$@"
}
