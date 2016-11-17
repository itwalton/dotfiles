# Use provided aliases unless one exists
function exec() {
  ln -s $PWD/files/aliases $HOME/.aliases
  ln -s $PWD/files/gitconfig $HOME/.gitconfig
  ln -s $PWD/files/bash_profile $HOME/.bash_profile
  ln -s $PWD/files/gitexcludes $HOME/.gitexcludes
  ln -s $PWD/files/vimrc $HOME/.vimrc
}

if [ -e $HOME/.aliases -o -e $HOME/.gitconfig -o -e $HOME/.bash_profile ]; then
  echo "Files already exist. Backing up."
  exit 1
fi

exec;

echo "Loaded."
unset exec;
