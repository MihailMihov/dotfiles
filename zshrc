setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

HISTSIZE=1000000000
SAVEHIST=1000000000

autoload -Uz compinit && compinit

source <(fzf --zsh)
