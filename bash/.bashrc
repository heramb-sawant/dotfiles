# Use Homebrew packages instead of system
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# Starship https://starship.rs
eval "$(starship init bash)"

function gitco() {
  git checkout $(git branch --sort=-committerdate | fzf)
}

function gitbrd() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" | fzf --multi ) &&
  git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
