[[ $- != *i* ]] && return
# History
export HISTSIZE=5000
export HISTFILE=~/.bash_history
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " %s")'; PS1='\w\[\e[38;5;124;1m\]${PS1_CMD1}\n\[\e[0;38;5;220m\]> \[\e[0m\]'

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
# Case unsensitive
bind 'set completion-ignore-case on'
# Autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'
# Rebind Ctrl + W to delete only last word
stty werase undef
bind '\C-w:unix-filename-rubout'

alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias sudo='doas'
alias ns='tmux new-session -s'
alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
alias music="ncmpcpp"
alias download-audio="yt-dlp --extract-audio --add-metadata --no-playlist --embed-thumbnail"
alias download-video="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias img='gpicview'
alias ff='fastfetch'

# PATHS
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cargo/bin:$HOME/.cargo/bin"
export WEBKIT_DISABLE_DMABUF_RENDERER=1
source /usr/share/nvm/init-nvm.sh
export PATH="$PATH:$HOME/.cargo/bin"
source /usr/share/git/completion/git-prompt.sh
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
