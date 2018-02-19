# Install Homebrew
if [ ! $(which brew) ]; then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

brew update

# Recipes
RECIPES=(bash bash-git-prompt bash-completion vim wget git node gpg)

brew install ${RECIPES[@]}
brew cleanup

# Casks
if [ ! brew info brew-cask &>/dev/null ]; then
  brew tap caskroom/cask
fi

CASKS=(google-chrome sublime-text visual-studio-code sourcetree evernote spotify divvy flycut)
brew cask install ${CASKS[@]}

# Global npm dependencies
# npm install -g dwupload
