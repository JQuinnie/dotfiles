# Agent Instructions

## Project Overview
Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that mirrors the target path relative to `$HOME`.

## Structure
```
~/dotfiles/
├── <package>/
│   └── .config/
│       └── <app>/
│           └── config files...
├── install.sh        # Bootstrap script
├── README.md
└── AGENT.md
```

## Active Packages
- `kitty/` - Kitty terminal config (stows to `~/.config/kitty/`)
- `nvim/` - Neovim/LazyVim config (stows to `~/.config/nvim/`)
- `starship/` - Starship prompt config (stows to `~/.config/starship.toml`)
- `zsh/` - Zsh shell config (stows to `~/.zshrc`)

## Conventions
- **Theme**: Gruvbox Dark across all tools (kitty, starship, nvim)
- **Font**: JetBrainsMono Nerd Font
- **ls replacement**: eza (not lsd)
- **Shell**: Zsh with Oh My Zsh + Starship prompt

## Adding a New Package
1. Create `<package>/.config/<app>/` mirroring the path relative to `$HOME`
2. Add config files inside
3. Run `stow <package>` from `~/dotfiles`
4. Add `stow <package>` to `install.sh`

## Important
- Never commit API keys or secrets. Use `~/.secrets` or environment-specific files
- The `zsh/.zshrc` in this repo is a sanitized copy - the local `~/.zshrc` may differ
- Test config changes by reloading the app before committing
