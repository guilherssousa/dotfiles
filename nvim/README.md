# bdnvim

A brand new Neovim configuration done from nearly scratch,
carefully crafted for myself after using kickstart.nvim for a couple of months.

## Summary

- [How to use it](#how-to-use-it)
- [Motivations](#motivations)
- [Features](#features)
- [References](#references)

## How to use it

Clone the repository under your `nvim` installation place, and just run it.
Really. It's that simple. Acktually 🤓👆 you might have to install `ripgrep`
and `fzf`, but most Neovim users already have this installed.

### Useful notes

- `clang` is the best compiler to use, as I noted installing on a Linux Mint and a Xubuntu.
- If treesitter starts being bad with your language installations, just comment them out of the `ensure_installed` lists.
- You need to have your Wakatime key with you all the time.
- To use Copilot, run `:Copilot auth`

## Motivations

Using Vim is like buying a car or a snicker. It's amazing without any tweaks,
but getting to customize them to your own vibe is the magic part of it.

Although Neovim with kickstart.nvim is amazing to beginners,
it was kind of limited on the flexibility side: You need to learn how to configure
new plugins while you also need to understand how configuration you didn't wrote
was set. That was why I decided to wipe out everything and rewrite it from scratch.

I used many of my favorite plugins from kickstart, and also added my new plugins,
configuration style, directory structure, etc., so I can feel I know how the things
work underneath my own terminal.

## Features

- Fuzzy search with Telescope
- Quick buffer changes with Harpoon
- Autocompletion with nvim-cmp and GitHub Copilot
- Keymap helpers with Which-key
- Activity tracking with Wakatime
- a whole bunch stuff I can't remember

## References

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [ThePrimeagen's init.lua](https://github.com/ThePrimeagen/init.lua)
- [craftzdog's dotfiles-public](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim/)
- [Nvchad](https://nvchad.com/)

