# Install packages from brew-casks.txt
packages=($(cat ./install/.brew-import/brew-casks.txt))
brew install --cask "${packages[@]}"
