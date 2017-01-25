FILES=("aliases" "bash_profile" "vimrc" "gitconfig" "gitexcludes")

for filename in ${FILES[@]}; do
  if [ -e $HOME/.$filename ]; then
    echo "Backing up $HOME/.$filename to $HOME/.$filename.bak"
    mv $HOME/.$filename $HOME/.$filename.bak
  fi

  echo "Creating $HOME/.$filename"
  ln -s $PWD/files/$filename $HOME/.$filename
done

unset loadFile;