#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
# Add ~/.local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Initialize Oh My Posh with your theme
eval "$(oh-my-posh init bash --config https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/1_shell.omp.json)"
alias config='/usr/bin/git --git-dir=/home/dfanso/.cfg/ --work-tree=/home/dfanso'
