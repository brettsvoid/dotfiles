# Install packages from brew-casks.txt
while IFS= read -r casks; do
    brew install --cask "$casks"
done <"$(dirname "$0")/../.brew-import/brew-casks.txt"
