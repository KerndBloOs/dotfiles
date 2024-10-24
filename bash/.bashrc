# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

###bash-config###
#PS1='\n\e[1;34m[\w]>\e[m '
export PS1="[\w]$ "
export EDITOR='/opt/nvim-linux64/bin/nvim'

# keybinds
bind -x '"\C-l":clear'

###path variables###
export PATH="$PATH:/opt/nvim-linux64/bin"

###alias-commands###
alias t='/usr/bin/tmux attach || /usr/bin/tmux'
alias v='nvim'
alias e='exit'
alias ..="cd .."
alias ll='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
alias t='tmux'
