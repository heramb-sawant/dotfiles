# Set node version through nvm
function change_node_version {
	nvmrc="./.nvmrc"
	if [ -f "$nvmrc" ]; then
		version="$(cat "$nvmrc")"
		nvm use $version
	fi
}

chpwd_functions=(change_node_version)

# Git fuzzy search branch switcher
function gitco() {
  git checkout $(git branch --sort=-committerdate | fzf)
}

# Git fuzzy search branch deleter
function gitbrd() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" | fzf --multi ) &&
  git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# Starship https://starship.rs
eval "$(starship init zsh)"