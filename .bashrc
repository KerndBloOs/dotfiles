# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

###bash-config###
PS1='\e[0;32m<bash>[\w]\$\e[m '

###path variables###
export PATH="$PATH:/opt/nvim-linux64/bin"

###alias-commands###
alias v='nvim'
alias e='exit'
alias ..="cd .."
alias ll='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
alias t='tmux'
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'
alias dotcommit='dotgit commit -am'
alias dot='cd $HOME/.dotfiles/; lazygit'
