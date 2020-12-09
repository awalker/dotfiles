# Dotfiles

Adam Walker's dotfiles and MacOS and Linux (Pop!/Ubuntu). Uses [dotbot](https://git.io/dotbot), Starship prompt, and a few fonts from Nerd Fonts.

## Install

    git clone https://github.com/awalker/dotfiles
    cd dotfiles
    ./install

**Note** last time I tried this on a bare install (Pop!) the submodules were not correctly linked. Maybe linked to the [clean] section.

### Profiles

The system automatically picks a few profiles: default, mac/linux, and a common after. You can supply one or more profiles to install between the system profile and the 'after' profile. e.g.

    ./install ubuntu.gui ubuntu.personal

## TODO

### Mac

- [x] get iTerm settings
- [ ] search for other apps that need installed

### Linux

- Gather settings for gui apps
- Setup for Android dev

### Windows

- port to windows
- Install choc
- Install WSL then continue the linux install

# MISC

To keep submodules at their proper versions, you could include something like git submodule update --init --recursive in your install.conf.yaml.

To upgrade your submodules to their latest versions, you could periodically run git submodule update --init --remote.
