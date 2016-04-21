# Dotfiles

This repository contains my dotfiles.

## Manual Setup
There seems to be an issue with Neovim and `C-h` overriding to move between
split windows in Neovim. This turned out to be a iTerm2 + 256 colour issue.
There's a long issue on the Neovim repo with [this comment being the
solution](https://github.com/neovim/neovim/issues/2048#issuecomment-78045837).

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```

This is a one time setup.
