install-deps:
	./scripts/install-deps.sh

install-dotfiles:
	./scripts/install-dotfiles.sh

uninstall-dotfiles:
	./scripts/uninstall-dotfiles.sh

install: install-deps install-dotfiles