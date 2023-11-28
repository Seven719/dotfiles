export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/home/iulian/.local/bin"
export TERMINAL=/usr/local/bin/st

ZSH_THEME="bureau"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias music="ncmpcpp"
alias download="yt-dlp --extract-audio --add-metadata --no-playlist"
alias nvmopen="source ~/.nvm/nvm.sh"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
