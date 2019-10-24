# Homebrew
RECIPES=(vim openssl git node go)
CASKS=(iterm2 brave-browser google-chrome sublime-text visual-studio-code divvy flycut)

if [ ! $(which brew) ]; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install ${RECIPES[@]}
brew cask install ${CASKS[@]}
brew cleanup

# Oh my zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# iterm
if [ ! -d $HOME/.iterm2_shell_integration ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -L https://iterm2.com/shell_integration/zsh \
-o $HOME/.iterm2_shell_integration.zsh)"
fi
