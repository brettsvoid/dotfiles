# Aliases

# Modern CLI tool replacements
alias cat="bat"
alias find="fd"
# alias grep="rg"
# alias ps="procs"
alias vim="nvim"
alias v="nvim"
alias vimdiff='nvim -d'

# Use lsd as default (https://webinstall.dev/lsd/)
alias ls="lsd -F"
alias la="lsd -AF"
alias ll="lsd -lAF"
alias lg="lsd -F --group-dirs=first"
alias tree="lsd -AF --tree"

# Custom tools
alias commitrefine='python ~/projects/github.com/brettsvoid/commit-refine/main.py'
alias download_website='wget --mirror -p --convert-links --no-parent'

# VPN aliases
alias vpn-start="aws ec2 start-instances --profile algo-vpn --region ap-northeast-1 --instance-ids i-073d4b357cf703898"
alias vpn-stop="aws ec2 stop-instances --profile algo-vpn --region ap-northeast-1 --instance-ids i-073d4b357cf703898"
alias vpn-status="aws ec2 describe-instances --profile algo-vpn --region ap-northeast-1 | jq '.Reservations[0].Instances[0].State'"

# Factorio server aliases
alias factorio-start="aws ec2 start-instances --profile factorio --region eu-west-1 --instance-ids i-026aeca5f45cfd94c"
alias factorio-stop="aws ec2 stop-instances --profile factorio --region eu-west-1 --instance-ids i-026aeca5f45cfd94c"
alias factorio-status="aws ec2 describe-instances --profile factorio --region eu-west-1 | jq '.Reservations[0].Instances[0].State'"
