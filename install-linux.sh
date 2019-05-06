#!/usr/bin/env bash

# install vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [[ -n $(which apt-get)  ]];
then
  echo "Ubuntu-ish..."
  ./install-ubuntu.sh
else
  echo "Unknown (unhandled) linux dist"
fi
