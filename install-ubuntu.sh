#!/usr/bin/env bash

sudo apt-get install -y software-properties-common git-core curl build-essential openssl libssl-dev snapd

# install nvm if we don't have it
if [[ -f ~/.nvm ]];
then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
fi

# install the latest node if we don't have node at all
if [[ -n $(which apt-get)  ]];
then
  nvm install node
fi

# Add all the PPAs we need
sudo add-apt-repository multiverse
sudo add-apt-repository ppa:gnome-terminator
sudo add-apt-repository ppa:neovim-ppa/stable

# Update apt cache
sudo apt-get update

# Install fest
# FIXME: Should probably breakout all the TUI from GUI programs
# TUI
sudo apt-get install -y python-dev python-pip python3-dev python3-pip nodejs neovim

# GUI
sudo apt-get install -y terminator steam

# Snaps
sudo snap install -y gitkraken spotify

# NeoVim alts
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor


