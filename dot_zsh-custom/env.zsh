# Environment variables

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi

# React editor for stack traces
export REACT_EDITOR="nvim"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"

# pnpm
export PNPM_HOME="/Users/brett/Library/pnpm"

# Conda
export CONDA_BASE="/opt/homebrew/anaconda3"

# PI Cluster
export NOMAD_ADDR="http://192.168.1.50:4646"
export NOMAD_OPERATOR_TOKEN="$(bws secret get f4ce7100-6725-470b-9a55-b43801659f7f --access-token $BWS_ACCESS_TOKEN 2>/dev/null | jq -r '.value')"
export NOMAD_TOKEN="$NOMAD_OPERATOR_TOKEN"

# Claude Sentry MCP
export SENTRY_ACCESS_TOKEN_CLAUDE="$(bws secret get 59d40097-f5d2-4fd3-bc0d-b3d400f0a9f8 --access-token $BWS_ACCESS_TOKEN 2>/dev/null | jq -r '.value')"
export SENTRY_ACCESS_TOKEN_MCP="$SENTRY_ACCESS_TOKEN_CLAUDE"
export SENTRY_AUTH_TOKEN="$(bws secret get a989a33a-ba80-4b35-a7a6-b43501105747 --access-token $BWS_ACCESS_TOKEN 2>/dev/null | jq -r '.value')"

# Claude Grafana Access (tyto)
export GRAFANA_TOKEN_TYTO_CLAUDE_MCP="$(bws secret get cf5d5904-b72e-4abf-be6c-b43c009bcc22 --access-token $BWS_ACCESS_TOKEN 2>/dev/null | jq -r '.value')"
export GRAFANA_SERVICE_ACCOUNT_TOKEN_MCP="$GRAFANA_TOKEN_TYTO_CLAUDE_MCP"

# Claude Nomad Access (tyto)
export NOMAD_ADDR="http://54.242.249.179:4646"
export NOMAD_OPERATOR_TOKEN="$(bws secret get 5536b6b7-3e62-469f-b3e2-b43c00fb0d05 --access-token $BWS_ACCESS_TOKEN 2>/dev/null | jq -r '.value')"
export NOMAD_TOKEN="$NOMAD_OPERATOR_TOKEN"


