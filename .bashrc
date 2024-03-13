# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

###keychain configuration
/usr/bin/keychain --nogui $HOME/.ssh/id_ed2551/id_ghub
source $HOME/.keychain/$HOSTNAME-sh

###bash-config###
PS1='\e[0;32m<bloos-bash>[\w]\$\e[m '
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi
###

###path variables###
export PATH="$PATH:/opt/nvim-linux64/bin"
###
###ssh hostname tmux###

#ssh() {

#    tmux set-option allow-rename off 1>/dev/null

#    tmux rename-window "ssh-$*"

#    command ssh "$@"

#    tmux set-option allow-rename on 1>/dev/null

#}

###alias-commands###
alias v='nvim'
alias e='exit'
alias ..="cd .."
alias ll='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
alias t='tmux'
alias update='apt-get update && apt-get upgrade'
alias dotconf='/usr/bin/git --git-dir=/home/bloosmin/.dotfiles/.git/ --work-tree=/home/bloosmin'
