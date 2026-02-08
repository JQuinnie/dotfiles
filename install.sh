#!/bin/bash

echo "Installing dotfiles..."

# Create config directory if it doesn't exist
mkdir -p ~/.config

# Backup existing configs
echo "Backing up existing configs..."
[ -e ~/.config/kitty ] && mv ~/.config/kitty ~/.config/kitty.backup.$(date +%Y%m%d)
# [ -e ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d)
# [ -e ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d)
# [ -e ~/.config/bat ] && mv ~/.config/bat ~/.config/bat.backup.$(date +%Y%m%d)
[ -e ~/.config/starship.toml ] && mv ~/.config/starship.toml ~/.config/starship.toml.backup.$(date +%Y%m%d)

# Create symlinks
echo "Creating symlinks..."
ln -sf ~/dotfiles/kitty ~/.config/kitty
# ln -sf ~/dotfiles/nvim ~/.config/nvim
# ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
# ln -sf ~/dotfiles/bat ~/.config/bat
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

echo "Dotfiles installed!"
echo "Restart your terminal or run: source ~/.zshrc"
