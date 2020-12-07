# Toggle between workman and US keyboard layouts
alias usla='setxkbmap us; xset -r 66'
alias wla='setxkbmap -v workman && xset r 66'

# General / shorties
alias c='clear'
alias x='exit'
alias v='nvim'
alias n='ncmpcpp'
alias cdh='cd /mnt/h'
alias cdm='cd /mnt/m'
alias cdd='cd /mnt/d'
alias cdf='cd /mnt/f'
# alias rdst='redshift -l 38.6270:90.1994 &'
alias rdst='/home/mrk/.scripts/start-redshift'
alias rdstp='redshift -x &'
alias lg='ls -a | grep '

# Vim Wiki
alias vw='nvim ~/vimwiki/index.wiki'

# Arch
alias arc='nvim ~/dotfiles/alias.sh'
alias xrc='nvim ~/.xinitrc'
alias sxrc='nvim ~/.config/sxhkd/sxhkdrc'
alias bprc='nvim ~/.config/bspwm/bspwmrc'
alias termiterc='nvim ~/.config/termite/config'
alias polyrc='nvim ~/.config/polybar/config.ini'
alias kbrc='nvim ~/.xbindkeysrc'
alias pbre='killall polybar; polybar main &'
alias picrc='nvim ~/.config/picom/picom.conf'
alias S='sudo pacman -S'
alias yS='yay -S'

# Go
alias gt='go test ./... -coverprofile=coverage.out && go vet ./... '
alias gb='go test -v --bench . --benchmem'
alias goc='go tool cover -html=coverage.out'

# Git
alias gp='git pull'
alias gs='git status'
alias ga='git add --all'
alias gc='git checkout $(git branch -l | fzf)'
alias gaa='git add --all'
alias gacm="git add --all && git commit -m"
alias gph="git push origin HEAD"
alias gcm='git commit -m'
alias glg='git log --graph'
alias gbl='git branch --list'
alias gpod='git push origin develop'

# Navigation
alias dl='cd ~/Downloads'
alias cdc='cd ~/code'
alias sendf='cd /mnt/x/code/sendfriend'
alias cdx='cd /mnt/x/'
alias cdcx='cd /mnt/x/code'

# Vim
alias notes='nvim note:note'
alias note='nvim note:note'
alias todo='nvim note:todo'

# TMUX
alias tls='tmux list-sessions'
alias tm='tmux new -A -s '
alias tdo='tmux new -A -s todo'
alias ta='tmux attach -t'
alias tat='tmux attach -t todo'

# Config/script editing aliases
alias alrc='nvim ~/.config/alacritty/alacritty.yml'
alias dots='cd ~/dotfiles'
alias bp='nvim ~/.zshrc'
alias zp='nvim ~/.zshrc'
alias ap='nvim ~/alias.sh'
alias vrc='nvim ~/.vimrc'
alias trc='nvim ~/.tmux.conf'
alias comprc='nvim ~/.config/compton.conf'
alias mpdrc='nvim ~/.config/mpd/mpd.conf'
alias ncrc='nvim ~/.ncmpcpp/config'
alias nvrc='nvim ~/.config/nvim/init.vim'
alias i3p='nvim ~/.config/i3/config'
alias zsrc='source ~/.zshrc'
alias pb='~/bin/pb.sh'

# Misc
alias weather='curl wttr.in'
alias sbg='cp wallpaper.jpg ~/Pictures/ && feh --bg-scale ~/Pictures/wallpaper.jpg'
alias bg='feh --bg-scale ~/Pictures/wallpaper.jpg'
alias vimgo='vim -u ~/.vimrc.go'
alias kp='~/bin/kp'

# Combination of mkdir $ARG && cd $ARG
mkcd () { mkdir --p -- "$1" && cd -P -- "$1" }
# view files -- leveraging fzf
vf () { ls -a | fzf | xargs -r -I % $EDITOR % ; }

# exa not ls
alias ls='exa'                                                          # ls
# alias la='exa -a'                                                          # ls
alias laf='exa -laF'                                                          # ls
alias l='exa -lbF --git'                                                # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# KUBECTL
alias k='kubectl '
