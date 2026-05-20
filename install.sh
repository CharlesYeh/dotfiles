#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1"
  local dest="$2"
  ln -sfn "$src" "$dest"
  echo "linked $dest -> $src"
}

link "$DOTFILES_DIR/bash_profile" "$HOME/.bash_profile"
link "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

if [[ ! -f "$HOME/.bash_profile.local" ]]; then
  echo "tip: cp $DOTFILES_DIR/bash_profile.local.example ~/.bash_profile.local"
fi
if [[ ! -f "$HOME/.zshrc.local" ]]; then
  echo "tip: cp $DOTFILES_DIR/zshrc.local.example ~/.zshrc.local"
fi

echo "done — open a new shell or run: source ~/.zshrc"
