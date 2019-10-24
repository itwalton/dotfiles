# Homebrew
RECIPES=(vim openssl git node go)
CASKS=(brave-browser google-chrome sublime-text visual-studio-code divvy flycut)

if [ ! $(which brew) ]; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install ${RECIPES[@]}
brew cask install ${CASKS[@]}
brew cleanup

# Oh my zsh
if [ ! -d ${HOME}/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

