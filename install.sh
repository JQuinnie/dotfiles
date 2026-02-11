#!/bin/bash

echo "Installing dotfiles..."

# Install prerequisites via Homebrew
echo "Installing prerequisites..."
brew install stow
brew install --cask kitty
brew install starship eza bat fzf neovim

# Create config directory if it doesn't exist
mkdir -p ~/.config

# Stow packages (creates symlinks automatically)
echo "Stowing packages..."
cd ~/dotfiles
stow kitty
stow starship
# stow zsh    # uncomment to symlink .zshrc
# stow nvim   # coming soon
# stow bat    # coming soon

echo "Dotfiles installed!"
echo "Restart your terminal or run: source ~/.zshrc"
