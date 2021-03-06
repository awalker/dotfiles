#!/usr/bin/env bash

sudo apt-get install -y software-properties-common git curl build-essential openssl libssl-dev snapd

# install nvm if we don't have it

# install the latest node if we don't have node at all
if [[ -n $(which node)  ]];
then
  echo "node is already installed"
else
  fnm install 14
fi

# Add all the PPAs we need
sudo add-apt-repository -y multiverse
if [[ ! -f /etc/apt/sources.list.d/gnome-terminator-ubuntu-ppa-disco.list ]]; then
  sudo add-apt-repository -y ppa:gnome-terminator
fi
if [[ ! -f /etc/apt/sources.list.d/neovim-ppa-ubuntu-stable-disco.list ]]; then
  sudo add-apt-repository -y ppa:neovim-ppa/stable
fi
if [[ ! -f /etc/apt/sources.list.d/fish-shell.list]]; then
  sudo apt-add-repository ppa:fish-shell/release-3
fi

# Update apt cache
sudo apt-get update

# Install fest
# FIXME: Should probably breakout all the TUI from GUI programs
# TUI
sudo apt-get install -y python-dev python-pip python3-dev python3-pip nodejs neovim fish

# GUI
# sudo apt-get install -y terminator
# steam

# Snaps
# sudo snap install -y gitkraken spotify

# NeoVim alts
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
# sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
# sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
# sudo update-alternatives --config editor


