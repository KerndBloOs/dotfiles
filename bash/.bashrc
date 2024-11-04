# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

###bash-config###
export PS1='[\w]\e[m> '
export EDITOR='/opt/nvim-linux64/bin/nvim'

# keybinds

###path variables###
export PATH="$PATH:/opt/nvim-linux64/bin"

###alias-commands###
alias t='/usr/bin/tmux attach || /usr/bin/tmux'
alias c='clear'
alias v='nvim'
alias e='exit'
alias ..="cd .."
alias ll='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
alias t='tmux'
