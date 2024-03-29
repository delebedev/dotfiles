#!/usr/bin/env bash
# This is a script for bootstrapping macOS setup

set -e

if [[ ! -e "manage.sh" ]]; then
  echo "Make sure you have the manage script nearby"
  exit 1
fi

if ! which brew &> /dev/null; then
  echo "You need to install homebrew"
  exit 1
fi

echo "Installing dependencies from Brewfile..."
brew tap homebrew/cask-fonts
brew bundle --file="macos/Brewfile"
brew bundle --file="macos/Brewfile.cask"

### defaults
echo "Setting up defaults..."

defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.00001