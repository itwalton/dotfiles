# Dotfiles

A collection of my preferred dotfiles and system dependencies intended to bootstrap new OSX environments

## Installation

  * Everything: `make install`
  * Just dotfiles: `make install-dotfiles`
  * Just dependencies: `make install-deps`

## Uninstall

  * `make uninstall-dotfiles`

## Security

### Add GPG/SSH keys to agents

  1. Run `gpg --card-status` & copy sig key signature
  2. Run `gpg --armor --export [sig key signature] > [sig key signature].asc`
  3. Run `gpg --import < [sig key signature].asc`
  4. Enable ssh support `gpg-agent --enable-ssh-support`