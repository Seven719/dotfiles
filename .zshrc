# environment Variables
export EDITOR="nvim"
export GOPATH=$HOME/.go
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="nvim +Man!"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
)

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

# tab autocompletions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
# lazy load compinit
function load_completion() {
  compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
  unfunction load_completion
}
# compinit will be loaded when tab is first pressed
zle -N expand-or-complete load_completion
bindkey '^I' expand-or-complete

# use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Cycle through suggestions with Ctrl-P and Ctrl-N
bindkey "^P" up-line-or-search
bindkey '^N' down-line-or-search
