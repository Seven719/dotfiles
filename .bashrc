[[ $- != *i* ]] && return
# bash prompt
source /usr/share/git/completion/git-prompt.sh
GIT_BRANCH='$(__git_ps1 " [%s]")'
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="\[\e[1m\]\u\[\e[0m\]|\w\[\e[31;1m\]${GIT_BRANCH} \[\e[0;38;5;178m\]\\$ \[\e[0m\]"

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# spell check
shopt -s cdspell
# scroll through past commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# case unsensitive
bind 'set completion-ignore-case on'
# autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias music="ncmpcpp"
alias download-audio="yt-dlp --extract-audio --add-metadata --no-playlist"
alias download-video="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias nvmopen="source ~/.nvm/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
