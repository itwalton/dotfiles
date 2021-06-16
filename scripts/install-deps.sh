# Homebrew
RECIPES=(iterm2 vim openssl gnupg git node nvm pinentry-mac ykman sourcetree keeper-password-manager brave-browser firefox google-chrome visual-studio-code divvy flycut)
CASKS=(docker)

if [ ! $(which brew) ]; then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew install ${RECIPES[@]}
brew install --cask ${CASKS[@]}
brew cleanup

# Oh my zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

# iterm
if [ ! -d $HOME/.iterm2_shell_integration ]; then
  echo "Installing iterm2 shell integration..."
  sh -c "$(curl -L https://iterm2.com/shell_integration/zsh \
  -o $HOME/.iterm2_shell_integration.zsh)"
fi
