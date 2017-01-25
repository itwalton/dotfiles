FILES=("aliases" "bash_profile" "vimrc" "gitconfig" "gitexcludes")

for filename in ${FILES[@]}; do
  echo "Removing $filename"
  rm $HOME/.$filename

  if [ -e $PWD/bak/.$filename.bak ]; then
    echo "Restoring backup from $PWD/bak/.$filename.bak"
    mv $PWD/bak/.$filename.bak $HOME/.$filename
  fi
done