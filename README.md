# dotfiles

<p align="center">
  <a href="https://www.gnu.org/software/stow/"><img alt="Managed with GNU Stow" src="https://img.shields.io/badge/managed%20with-GNU%20Stow-8A2BE2?logo=gnu&logoColor=white"></a>
  <img alt="OS Linux" src="https://img.shields.io/badge/OS-Linux-FCC624?logo=linux&logoColor=000">
  <img alt="Shell fish" src="https://img.shields.io/badge/Shell-fish-4AAE47?logo=gnu-bash&logoColor=white">
  <img alt="Editor Neovim" src="https://img.shields.io/badge/Editor-Neovim-57A143?logo=neovim&logoColor=white">
  <img alt="WM Hyprland" src="https://img.shields.io/badge/WM-Hyprland-00A3FF?logo=archlinux&logoColor=white">
  <img alt="tmux" src="https://img.shields.io/badge/tmux-1BB91F?logo=tmux&logoColor=white">
  <img alt="Yazi" src="https://img.shields.io/badge/Yazi-FF6F00?logo=files&logoColor=white">
</p>

Opinionated personal dotfiles managed with GNU Stow. Each top-level directory corresponds to an app and contains files laid out exactly as they should appear under `$HOME`.

## Layout

- `hypr/`: Hyprland config
- `nvim/`: Neovim config
- `tmux/`: tmux config
- `yazi/`: Yazi file manager config

## Prerequisites

- GNU Stow (`stow`)

## Quick start

From the repository root:

```bash
# Dry run (recommended first):
stow -nvt "$HOME" hypr nvim tmux yazi

# Stow selected modules into $HOME:
stow -vt "$HOME" hypr nvim tmux yazi

# Or stow everything in the repo to $HOME:
stow -vt "$HOME" .
```

## Common operations

```bash
# Add or update symlinks for a module
stow -Rt "$HOME" nvim

# Remove symlinks for a module
stow -Dt "$HOME" tmux

# Restow all modules
stow -Rt "$HOME" hypr nvim tmux yazi
```

## Notes

- Run commands from the repo root (`/home/samudev/code/dotfiles`).
- Stow creates symlinks in `$HOME`. Existing conflicting files should be moved or removed first.
- Adjust the target with `-t` if you want to install to a different prefix.

## Bootstrap on a new machine

```bash
# Install prerequisites
# Arch
sudo pacman -S --needed git stow
# Debian/Ubuntu
sudo apt update && sudo apt install -y git stow
```

```bash
# Clone this repo (SSH)
mkdir -p "$HOME/code"
git clone git@github.com:samudev/dotfiles.git "$HOME/code/dotfiles"

# Or via HTTPS
# git clone https://github.com/samudev/dotfiles.git "$HOME/code/dotfiles"
```

```bash
# Stow configs into $HOME
cd "$HOME/code/dotfiles"

# Dry run first (recommended)
stow -nvt "$HOME" hypr nvim tmux yazi

# Apply
stow -vt "$HOME" hypr nvim tmux yazi
``` 