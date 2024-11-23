DOTFILES   := bash config

.DEFAULT_GOAL := help

all: brew link ## Install brew and symlink

brew: ## Install brew
	@sh ./scripts/brew.sh

dr-link: ## Dryrun a symlink to home directory
	@echo '==> Symlinking dotfiles...'
	@echo ''
	@$(foreach val, $(DOTFILES), stow -n -v -R $(val);)
	@echo '==> Completed symlinking dotfiles...'

link: ## Symlink to home directory
	@echo '==> Symlinking dotfiles...'
	@echo ''
	@$(foreach val, $(DOTFILES), stow -v -S $(val);)
	@echo '==> Completed symlinking dotfiles...'

unlink: ## Remove symlinks from home directory
	@echo 'Removing symlinks...'
	@echo ''
	@-$(foreach val, $(DOTFILES), stow -v -D $(val);)
	@echo 'Removed symlinks...'

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'