[[ $- != *i* ]] && return
# PATHS
export PATH="$PATH:$HOME/.cargo/bin"
# bash prompt
source /usr/share/git/completion/git-prompt.sh

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\w\[\e[38;5;124;1m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;220m\]>\[\e[0m\] '

HISTSIZE=10000
HISTFILESIZE=2000000

# Spell Check
shopt -s cdspell
# Save all lines in the history file immediately
shopt -s histappend
# Scroll through past commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# Case unsensitive
bind 'set completion-ignore-case on'
# Autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'
# Rebind Ctrl + W to delete only last word
stty werase undef
bind '\C-w:unix-filename-rubout'

alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
alias music="ncmpcpp"
alias download-audio="yt-dlp --extract-audio --add-metadata --no-playlist"
alias download-video="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias img="gpicview"
alias connect='bluetoothctl connect 74:45:CE:97:88:63'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH=/home/iulian/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/iulian/.cargo/bin:/home/iulian/.cargo/bin
source /usr/share/nvm/init-nvm.sh
