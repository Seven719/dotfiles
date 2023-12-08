[[ $- != *i* ]] && return
# bash prompt
PS1='$(printf "%*s\r%s" $(( COLUMNS-1 )) "$(git_branch_prompt)" "\[\e[1m\]\u\[\e[0m\]@\h \[\e[1m\]\w\n\[\e[0m\]> \[\e[38;5;22;1m\]\\$ \[\e[0m\]")'

git_branch_prompt() {
    local branch
    branch=$(git branch 2>/dev/null | grep '^*' | sed s/..//)
    if [ -n "$branch" ]; then
        echo "[$branch] "
    fi
}

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
