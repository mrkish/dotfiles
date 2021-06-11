#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias bp='vim ~/.bash_profile'
alias vrc='vim ~/.vimrc'
alias src='source ~/.bash_profile'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gt='go test'
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias glg='git log --graph'
alias gbl='git branch --list'
alias gpod='git push origin develop'
alias dl='cd ~/Downloads'
alias cdc='cd ~/code'
alias sendf='cd /mnt/x/code/sendfriend'
alias cdx='cd /mnt/x/'
alias weather='curl wttr.in'
alias notes='vim note:note'
alias note='vim note:note'
alias todo='vim note:todo'
alias weather='curl wttr.in'
alias tls='tmux list-sessions'
alias ta='tmux attach -t'
alias bg='cp wallpaper.jpg ~/Pictures/ && feh --bg-scale ~/Pictures/wallpaper.jpg'

force_color_prompt=yes

export PATH="$HOME/.cargo/bin:$PATH"
