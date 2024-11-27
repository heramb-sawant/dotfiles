################## Git signed commit key
export GPG_TTY=$(tty)

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
