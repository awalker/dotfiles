
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/adam/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


###-tns-completion-start-###
if [ -f /Users/adam/.tnsrc ]; then
    source /Users/adam/.tnsrc
fi
###-tns-completion-end-###
eval "$(starship init bash)"
eval "$(fnm env)"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
