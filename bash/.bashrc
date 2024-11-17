# Use Homebrew packages instead of system
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# Starship https://starship.rs
eval "$(starship init bash)"
