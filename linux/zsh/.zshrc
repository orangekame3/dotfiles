# Created by newuser for 5.8.1
export PATH="$(aqua root-dir)/bin:$PATH"
export AQUA_GLOBAL_CONFIG=${AQUA_GLOBAL_CONFIG:-}:${XDG_CONFIG_HOME:-$HOME/.config}/aqua/aqua.yaml

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# fzf
source ~/z/z.sh
source ~/.zshrc-fzf

alias aquag='cd ~/.config/aqua && aqua g >> aqua.yaml'
alias aquai='cd ~/.config/aqua && aqua i -l'
alias ls='lsd'