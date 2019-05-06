#!/usr/bin/env bash

if [[ $(uname) == 'Darwin' ]]; then
  # MacOS
  ./install-mac.sh
else
  # Linux
  ./install-linux.sh
fi

./install-font.sh

# Install global npm packages
npm install -g @angular/cli cordova firebase-tools nativescript neovim npm prettier semver typescript vtop


# Install python packages (mostly for neovim)
# FIXME: maybe later
