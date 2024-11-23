DOTFILES   := bash config

.DEFAULT_GOAL := help

all: brew install

list: ## Show dot files in this repo
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

dr-link: ## Dryrun a re symlink
	@echo '==> Symlinking dotfiles...'
	@echo ''
	@$(foreach val, $(DOTFILES), stow -n -v -R $(val);)
	@echo '==> Completed symlinking dotfiles...'

link: ## Symlink to home directory
	@echo '==> Symlinking dotfiles...'
	@echo ''
	@$(foreach val, $(DOTFILES), stow -v -S $(val);)
	@echo '==> Completed symlinking dotfiles...'

unlink: ## Remove symlinks to home directory
	@echo 'Removing symlinks...'
	@echo ''
	@-$(foreach val, $(DOTFILES), stow -v -D $(val);)
	@echo 'Removed symlinks...'

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'