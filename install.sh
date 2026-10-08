#!/usr/bin/env zsh

set -eu

repo=${0:A:h}
config=${XDG_CONFIG_HOME:-$HOME/.config}

link() {
  local source=$1 target=$2

  if [[ -L "$target" && "$(readlink "$target")" == "$source" ]]; then
    return
  fi
  if [[ -e "$target" || -L "$target" ]]; then
    print -u2 -- "Already exists: $target (move it aside before retrying)"
    return 1
  fi

  mkdir -p -- "${target:h}"
  ln -s -- "$source" "$target"
  print -r -- "$target -> $source"
}

link "$repo/zshrc" "$HOME/.zshrc"
link "$repo/nvim" "$config/nvim"
link "$repo/tmux" "$config/tmux"
