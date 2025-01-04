
# Path to your oh-my-zsh installation.
export ZSH="/Users/msandoval/.oh-my-zsh"

export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/development/flutter/bin:$PATH
PATH=~/.console-ninja/.bin:$PATH

source ~/.dotfiles/zsh/svtech.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}%c%${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  # source "${XDG_CACHE_HOME:-$HOME/.cache}%c%${(%):-%n}.zsh"
fi


# Visit -> https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME=""

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    z
    zsh-autosuggestions
    fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# alias for environment configuration ====================== //
alias zconfig="nvim ~/.zshrc"
alias nconfig="cd ~/.config/nvim"
# alias tconfig="nvim ~/.config/tmux/tmux.conf"
alias tconfig="nvim ~/.tmux.conf"

alias zsource="source ~/.zshrc"
alias tsource="tmux source-file ~/.tmux.conf"

# alias for project container
alias project_php="cd /Applications/XAMPP/xamppfiles/htdocs"
alias project_react="cd ~/Documents/'Proyectos React'"
alias project_astro="cd ~/Documents/'Proyectos Astro'"
alias power10k="nvim ~/.p10k.zsh"

#======================================================= //


# function to delete view text in promp
z () {
  zshz "$@" >/dev/null 2>&1
}


eval "$(fnm env)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# if [[ -z "$TMUX" ]]; then
#     tmux start-server
#     tmux attach -t default || tmux new-session -s default
# fi

# WM_VAR="/$TMUX"
# WM_CMD="tmux"
#
# function start_if_needed() {
#     if [[ $- == *i* ]] && [[ -z "${WM_VAR#/}" ]] && [[ -t 1 ]]; then
#         exec $WM_CMD
#     fi
# }
#
# start_if_needed
