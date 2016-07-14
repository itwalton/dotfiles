# Use provided aliases unless one exists
function exec() {
  ln -s $PWD/aliases $HOME/.aliases
  ln -s $PWD/gitconfig $HOME/.gitconfig
  ln -s $PWD/bash_profile $HOME/.bash_profile
  ln -s $PWD/zshrc $HOME/.zshrc
}

if [ -e $HOME/.aliases -o -e $HOME/.gitconfig -o -e $HOME/.bash_profile ]; then
  echo "Files already exist. Backing up."
  exit 1
fi

exec;

echo "Loaded."
unset exec;
