# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

### bash-config ###
#export PS1='❯'
export EDITOR='/opt/nvim-linux64/bin/nvim'

# set vi mode
set -o vi

# keybinds

### path variables ###
export PATH="$PATH:/opt/nvim-linux64/bin"

### alias-commands ###
alias wvro='curl "https://wttr.in/rosenheim?1&F&q"'
alias wro='curl "https://wttr.in/rosenheim?format=1"'
alias wvri='curl "https://wttr.in/riedering?1&F&q"'
alias wri='curl "https://wttr.in/riedering?format=1"'
alias t='/usr/bin/tmux attach || /usr/bin/tmux'
alias c='clear'
alias v='nvim'
alias e='exit'
alias ..="cd .."
#alias ll='ls --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -lathr'
alias t='tmux'
