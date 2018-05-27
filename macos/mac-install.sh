#!/usr/bin/env bash
# This is a script for bootstrapping macOS setup

set -e

if [[ ! -e "manage.sh" ]]; then
  echo "Make sure you have the manage script nearby"
  exit 1
fi

./manage.sh install

if [[ ! -e "$HOME/.bashrc" ]]; then
  echo "Looks like the manage script failed, try and run it manually"
  exit 1
fi

if ! which brew &> /dev/null; then
  echo "You need to install homebrew"
  exit 1
fi

echo "Installing dependencies from Brewfile..."
brew bundle --file="$DOTFILES/macos/Brewfile"
