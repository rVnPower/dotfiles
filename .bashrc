#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias config="/usr/bin/git --git-dir=$HOME/CodingProjects/dotfiles/ --work-tree=$HOME"
alias setbg="feh --bg-fill"
alias youtube="youtube-viewer"
alias towall="mv $1 $2 --target-directory=$HOME/Pictures/.wallpaper/"
alias doom="exec $HOME/.emacs.d/bin/doom"
alias rm='echo "This is not the command you are looking for."; false'
alias tp="trash-put"
alias tr="trash-restore"
alias sudo="doas"

# PS1='[\u@\h \W]\$ '
