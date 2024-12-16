#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# fnm
export PATH="/home/juarri/.local/share/fnm:$PATH"
eval "$(fnm env)"

. "$HOME/.cargo/env"
. "/home/juarri/.deno/env"
source /home/juarri/.local/share/bash-completion/completions/deno.bash