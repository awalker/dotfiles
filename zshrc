# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi
eval "$(zoxide init zsh)"
eval "$(rtx activate)"

function osc7 {
    local LC_ALL=C
    export LC_ALL

    setopt localoptions extendedglob
    input=( ${(s::)PWD} )
    uri=${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-\/])/%${(l:2::0:)$(([##16]#match))}}
    print -n "\e]7;file://${HOSTNAME}${uri}\e\\"
}
add-zsh-hook -Uz chpwd osc7

eval "$(starship init zsh)"
# general use
# alias ls='exa'                                                          # ls
alias l='exa --icons --git'                                                # list, size, type, git
alias ll='exa --icons -lbGF --git'                                             # long list
alias llm='exa --icons -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa --icons -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa --icons -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# specialty views
alias lS='exa --icons -1'                                                              # one column, just names
alias lt='exa --icons --tree --level=2 --git'                                         # tree

