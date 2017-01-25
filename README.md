# Dotfiles

A collection of my preferred dotfiles and system dependencies intended to bootstrap new OSX environments

## download from github

`git clone git@github.com:itwalton/dotfiles.git`

### install everything

`make install`

### brew/npm dependencies

A collection of brew recipes (gpg, node, etc.) and applications (chrome, flycut, etc.)

`make install-deps`

### install dotfiles

The aliases, bash_profile, gitconfig, gitexcludes, and vimrc dotfiles
*Note*: Stores backups of existing files to bak/

`make install-dotfiles`

To uninstall:

`make uninstall-dotfiles`