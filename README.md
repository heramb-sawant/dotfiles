# dotfiles

## Getting Started

`make help`

If you do not have make installed. `sh scripts/brew.sh`

## Starship Shell Prompt

Starship is used to manage CLI prompts. https://starship.rs/

`make all` should manage all the setup but not all the symbols used will show up.
You will have to set the default font for the terminal you use to `font-hack-nerd-font`.

TODO: Starship transient prompts

## Git Commands

```
// .zshrc
gitbrd - fuzzy branch deletion
gitco - fuzzy branch checkout
```

```
// .gitconfig

git cleanup: delete all merged branches
git remote-cleanup: delete all remote merged branches
git undo: soft reset last comming
git lol: pretty log of main
git wip: Commit current changes
git fza: fuzzy git add
```

TODO: Add this to a help command

### TODO

- Get rid of /bash if you dont use it for a while
- Set up some custom monitoring scripts using `htop`, `duf`, or `bpytop`
