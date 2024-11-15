# environment Variables
export EDITOR="nvim"
export GOPATH=$HOME/.go
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="nvim +Man!"

ZSH_THEME="robbyrussell"

plugins=(git)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias sudo='doas'
alias ns='tmux new-session -s'
alias la='ls -a'
alias download-audio='yt-dlp --extract-audio --add-metadata --no-playlist --embed-thumbnail'
alias download-video='yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"'
alias img='gpicview'
alias ff='fastfetch'
alias gs="git status"
alias gl="git log"
alias gc="git commit"

# avoid duplicate entries in the command history
setopt HIST_IGNORE_DUPS

# Cycle through past commands with Ctrl-P and Ctrl-N
bindkey "^P" up-line-or-search
bindkey '^N' down-line-or-search
