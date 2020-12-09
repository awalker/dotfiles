#!/usr/bin/env bash

if [[ -n $(which brew) ]]; then
  # Got brew
  echo "Brew Already Installed"
else
  # install home brew
  #/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Install brew"
fi

brew tap caskroom/cask
brew tap caskroom/versions
brew install git
brew install wget
brew install node
brew install nvm
brew install fish
brew cask install dropbox
brew cask install google-chrome
brew cask install iterm2
brew cask install spotify
brew cask install alfred dash

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Save screenshots to the desktop
defaults write com.apple.screencapture location -string “$HOME/Desktop”
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “png”

# TODO: Install rvm
# TODO: Ensure ruby 2.2.2 is avaiable for nativescript projects

# Update App Store apps
sudo softwareupdate -i -a
# Update Homebrew (Cask) & packages
brew update
brew upgrade
# Update npm & packages
npm install npm -g
npm update -g
