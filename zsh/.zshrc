# Paths
export PATH="$HOME/.nvm/bin:$PATH"

# nvm init
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="spaceship"  # Replaced by Starship prompt (see bottom of file)

# Plugins
plugins=(
  git
  dotenv
  macos
  node
  jsontools
  colorize
  common-aliases
  copyfile
  zsh-autosuggestions
  kube-ps1
  zsh-syntax-highlighting
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ---- Spaceship settings (kept for reference) ----
# SPACESHIP_PROMPT_PREFIXS_SHOW=true
# SPACESHIP_DIR_SHOW=true
# SPACESHIP_DIR_TRUNC=4
# SPACESHIP_DIR_TRUNC_PREFIX='.../'
# SPACESHIP_TIME_SHOW=true
# SPACESHIP_TIME_12HR=true
# SPACESHIP_TIME_COLOR=yellow
# SPACESHIP_BATTERY_THRESHOLD=15
# SPACESHIP_PROMPT_ASYNC=false
# SPACESHIP_KUBECTL_SHOW=true
# SPACESHIP_KUBECTL_VERSION_SHOW=false
# SPACESHIP_KUBECTL_CONTEXT_SHOW=true
# SPACESHIP_KUBECTL_CONTEXT_COLOR_GROUPS=(
#   red /production/
#   yellow staging
# )
# ---- End Spaceship settings ----

# zsh-autosuggestions + highlighting
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completions
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
  autoload -Uz compinit
  compinit
fi

# Optional Docker init guard
[[ -f /Users/jchu/.docker/init-zsh.sh ]] && source /Users/jchu/.docker/init-zsh.sh

# K8s completions
source <(kubectl completion zsh)


# ---- lsd aliases (replaced by eza below) ----
# alias ls='lsd --icon=auto'
# alias l='lsd -l --icon=auto'
# alias la='lsd -la --icon=auto'
# alias ltr='lsd -ltr --icon=auto'
# alias ltree='lsd --tree --icon=auto'
# ---- End lsd aliases ----

# Git aliases
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gmm='git merge master'
alias gs='git status'
alias gl='git log'
alias glh='git log | head'
alias glo='git log --oneline'
alias gls='git shortlog -sne'
alias gsha='git show -s --format=%H'
alias gp='git pull'
alias gpom='git pull origin master'
alias gmmaster='git fetch origin && git merge origin/master'
alias gmmain='git fetch origin && git merge origin/main'
alias gps='git push'
alias gd='git diff'
alias gb='git branch'
alias gbs='git branch --sort=-committerdate'
alias gba='git branch -a'
alias gf='git fetch'
alias del='git branch -d'
alias galldog='git log --graph --oneline --all --decorate'

# Sublime
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# General
alias ll='ls -lart'
alias ports='lsof -i -P -n | grep LISTEN'
alias dockps='docker ps -a'
alias dockka='docker rm -f $(docker ps -aq)'

# Git branch merge helper
git_merge_branch() {
  branch_name="$1"
  current_branch=$(git symbolic-ref --short -q HEAD)
  git fetch origin "$branch_name" && git merge "origin/$branch_name"
  git push origin "$current_branch"
}
alias gm=git_merge_branch

# Git fuzzy branch checkout
gcob() {
  git checkout $(git branch | fzf -1 -q "$1")
}

# Node version switcher
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    echo "Setting Node version from .nvmrc:"
    cat .nvmrc
    nvm use > /dev/null
  fi
}
cd .

# API keys - source from ~/.secrets or a secrets manager, not here
# export GEMINI_API_KEY=""
# export ANTHROPIC_API_KEY=""
export PATH="/opt/homebrew/bin:$PATH"
export EDITOR="nvim"
export VISUAL="nvim"

# fzf key-bindings and completion
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
source <(fzf --zsh)

# TheFuck
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# eza aliases
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias l="eza -l --icons=always"
alias la="eza -la --icons=always"
alias ltr="eza -l --sort=modified --reverse --icons=always"
alias ltree="eza --tree --icons=always"

# bat theme
export BAT_THEME=gruvbox-dark

# Starship prompt
eval "$(starship init zsh)"
