# Use Homebrew packages instead of system
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
