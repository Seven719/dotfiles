# Enable emacs key bindings
set -o emacs

# Use Ctrl+P for history search backward
bind '"\C-p": history-search-backward'
# Use Ctrl+N for history search forward
bind '"\C-n": history-search-forward'
# Use Alt+W to delete the word before the cursor (kill-region)
bind '"\ew": kill-region'
# Spell Check
shopt -s cdspell
# Case insensitive completion
bind 'set completion-ignore-case on'
# Autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'
# Rebind Ctrl + W to delete only last word
stty werase undef
bind '\C-w:unix-filename-rubout'

# Set history options
HISTCONTROL=ignoredups
HISTSIZE=5000

# Shell Aliases
alias sudo='doas'
alias ns='tmux new-session -s'
alias ls='ls --color=auto'
alias la='ls -a'
alias download-audio='yt-dlp --extract-audio --add-metadata --no-playlist --embed-thumbnail'
alias download-video='yt-dlp -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"'
alias img='gpicview'
alias ff='fastfetch'
alias gs="git status"
alias gl="git log"
alias gc="git commit"

export EDITOR="nvim"
export GTK_THEME="Tokyonight-Dark"
export GOPATH=$HOME/.go

eval "$(starship init bash)"
