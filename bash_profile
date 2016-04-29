# Set default editor
export EDITOR=vim

# Source aliases if exists
if [ -r ~/.aliases ]; then
  source ~/.aliases
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

# Terminal customizations
export CLICOLOR=1

PURPLE='\e[1;35m'
GREEN='\e[0;32m'
TEXTRESET='\e[0m'

print_prompt_title () {
  printf "\n $PURPLE%s$GREEN in %s \n$TEXTRESET" "$USER" "$PWD"
}

PROMPT_COMMAND=print_prompt_title
export PS1="o "
