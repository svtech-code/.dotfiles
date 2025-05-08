
# Path to your oh-my-zsh installation.
export ZSH="/Users/msandoval/.oh-my-zsh"

export PATH=$HOME/.composer/vendor/bin:$PATH
# export PATH=$HOME/development/flutter/bin:$PATH
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
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME=""

# plugins
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
alias tconfig="nvim ~/.config/tmux/tmux.conf"
alias gconfig="nvim ~/.config/ghostty/config"
alias aconfig="nvim ~/.config/alacritty/alacritty.toml"

alias zsource="source ~/.zshrc"
alias tsource="tmux source-file ~/.config/tmux/tmux.conf"

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


# bun completions
[ -s "/Users/msandoval/.bun/_bun" ] && source "/Users/msandoval/.bun/_bun"

# script for ghostty opacity
toggle_ghostty_opacity() {
  local CONFIG_PATH="$HOME/.config/ghostty/config"

  if [ "$TERM" != "xterm-ghostty" ]; then
    echo "Script valid only for ghostty !"
    return
  fi


  if grep -q '^[[:space:]]*#.*background-opacity' "$CONFIG_PATH"; then
    sed -i '' 's/^[[:space:]]*#\([[:space:]]*background-opacity[[:space:]]*=.*\)/\1/' "$CONFIG_PATH"
    echo "Opacity on!"

  elif grep -q '^[[:space:]]*background-opacity' "$CONFIG_PATH"; then
    sed -i '' 's/^[[:space:]]*\(background-opacity[[:space:]]*=.*\)/#\1/' "$CONFIG_PATH"
    echo "Opacity off!"

  else
    echo "the background-opacity line does not exist"

  fi

  # Simula la combinación de teclas cmd+shift+,
  osascript -e 'tell application "System Events" to keystroke "," using {command down, shift down}'
}
