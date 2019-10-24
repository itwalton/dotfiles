FILES=("aliases" "zshrc" "vimrc" "gitconfig" "gitexcludes")

for filename in ${FILES[@]}; do
  if [ -e $HOME/.$filename ]; then
    mkdir -p bak

    echo "Backing up $HOME/.$filename to $PWD/bak/.$filename.bak"
    mv $HOME/.$filename $PWD/bak/.$filename.bak
  fi

  echo "Creating $HOME/.$filename"
  ln -s $PWD/dotfiles/$filename $HOME/.$filename
done