
# Dotfiles

Adam Walker's dotfiles and MacOS and Linux (Pop!/Ubuntu). Uses [dotbot](https://git.io/dotbot), Oh-My-Zsh, and a few fonts from Nerd Fonts.

## Install

    git clone
    ./install
    
**Note** last time I tried this on a bare install (Pop!) the submodules were not correctly linked. Maybe linked to the [clean] section.
    
### Profiles

The system automaticaly picks a few profiles: default, mac/linux, and a common after. You can supply one or more profiles to install between the system profile and the 'after' profile. e.g.

    ./install ubuntu.gui ubuntu.personal

## TODO

### Mac

- [ ] get iTerm settings
- [ ] search for other apps that need installed
- [ ] Install rvm/ruby (2.2.2?) and gems needed for nativescript

### Linux

- Gather settings for gui apps
- Setup for Android dev
- Setup nativescript for iOS cloud builds(?)

### Windows

- port to windows
- Install choc
- Install WSL then continue the linux install

# MISC
To keep submodules at their proper versions, you could include something like git submodule update --init --recursive in your install.conf.yaml.

To upgrade your submodules to their latest versions, you could periodically run git submodule update --init --remote.

