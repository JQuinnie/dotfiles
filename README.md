# My Dotfiles

Personal configuration files for my development environment.

## What's Included

- **Kitty** - Terminal emulator config with Gruvbox Dark theme
- **Neovim** - LazyVim editor configuration with Gruvbox Material
- **Starship** - Cross-shell prompt with Gruvbox palette
- **Zsh** - Shell configuration with Oh My Zsh

## Installation

```bash
git clone https://github.com/JQuinnie/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
1. Install prerequisites via Homebrew (stow, kitty, starship, eza, bat, fzf, neovim)
2. Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink configs to the correct locations

To stow individual packages manually:
```bash
cd ~/dotfiles
stow kitty      # symlinks ~/.config/kitty
stow nvim       # symlinks ~/.config/nvim
stow starship   # symlinks ~/.config/starship.toml
stow zsh        # symlinks ~/.zshrc
```

## Tools Used

- Terminal: Kitty
- Editor: Neovim with LazyVim
- Shell: Zsh + Oh My Zsh
- Prompt: Starship (Gruvbox palette)
- ls replacement: eza
- Theme: Gruvbox Dark
- Font: JetBrains Mono Nerd Font
