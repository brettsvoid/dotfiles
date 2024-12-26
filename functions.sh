# Google from command line
function wtf() {
  /usr/bin/open "http://www.google.com/search?q=$1"; # wtf typescript => google typescript
}

# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}