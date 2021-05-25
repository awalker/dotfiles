set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set PATH $PATH $HOME/src/flutter/bin
# set MANPATH $NPM_PACAKGES/share/man $MANPATH
set SHELL /bin/fish

fish_vi_key_bindings

# set -gx ANDROID_HOME "/Users/adam/adt/"
starship init fish | source
