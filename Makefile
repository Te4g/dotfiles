dotfiles: ## Setup dotfiles
	./dotfiles.sh

brew: ## Setup brew packages
	./brew.sh

phpswitch: ## Setup phpswitch
	@. _functions.sh && setup_phpswit

macos: dotfiles brew phpswitch ## Setup dotfiles, brew packages and phpswitcher

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
