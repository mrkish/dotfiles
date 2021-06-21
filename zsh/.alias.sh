#!/bin/bash

source ~/.zshfunc

# General / shorties
alias c='clear'
alias x='exit'
alias v='nvim'
alias dots='cd ~/dotfiles'
alias sec='cd ~/Secrets'
alias vrc='nvim ~/.vimrc'
alias nvrc='nvim ~/.config/nvim/init.vim'
alias trc='nvim ~/.tmux.conf'
alias bp='nvim ~/.zshrc'
alias zp='nvim ~/.zshrc'
alias dl='cd ~/Downloads'
alias cdc='cd ~/code'
alias vd='vimdiff '
alias nn="touch note-$(timestamp).md"

alias pb='~/bin/pb.sh'
alias pbrc='nvim ~/bin/pb.sh'

# alias lg='ls -a | grep '

# Go
alias gv='go vet ./...'
alias gt='go test ./... -coverprofile=coverage.out && go vet ./... '
alias gb='go test -v --bench . --benchmem'
alias goc='go tool cover -html=coverage.out'
alias gr='find . -name main.go | xargs -t go run '
alias gf='go fmt ./...'
alias gve='go mod tidy; go mod vendor'

# Git
alias lg='lazygit'
alias gp='git push'
alias gs='git status'
alias gd='git diff'
alias ga='git add --all'
alias gc='git checkout $(git branch -l | fzf)'
alias gm='git merge $(git branch | fzf)'
alias gaa='git add --all'
alias gacm="git add --all && git commit -m"
alias gph="git push origin HEAD"
alias gcm='git commit -m'
alias glg='git log --graph'
alias glb='git branch -l'
alias gbl='git branch --arist'
alias gpod='git push origin develop'

# Code/Project Directories
alias tt='cd ~/code/Titan'
alias tng='cd ~/code/tng-intake'
alias aaa='cd ~/code/Titan/tng-intake-auto-auth'
alias st='cd ~/code/Titan/tng-service-type-api'
alias pea='cd ~/code/Titan/tng-product-eligibility-api'
alias ec='cd ~/code/Titan/tng-external-consumer'
alias tcu='cd ~/code/Titan/tng-conversion-utility'
alias pub='cd ~/code/Titan/tng-public-auth'
alias lib='cd ~/code/tng-lib'
alias dops='cd ~/code/tng-devops'

alias bd='~/bin/build-deploy.sh'
alias gpp='~/pushit/push.sh'
alias gpp='~/pushit/push.sh'
alias mr='~/bin/mockResponder'
alias mrp='f(){~/bin/mockResponder -port 3003 $1 &}; f '
alias gr='f(){find . -name main.go | xargs go run $1}; f '
alias dpod='docker run -p 27017:27017 -v ~/data/db/:/data/db -d mongo'

# PPROF
alias aatpp='f(){go tool pprof -http localhost:3005 http://tng-intake-auto-auth-api.ckp-test.centene.com/debug/pprof/$@}; f '
alias patpp='f(){go tool pprof -http localhost:3005 http://tng-public-auth.ckp-test.centene.com/debug/pprof/$@}; f '

# Vim
alias notes='nvim note:note'
alias note='nvim note:note'
alias todo='nvim note:todo'

# Tmux
alias trc='vim ~/.tmux.conf'
alias tls='tmux list-sessions'
alias tm='tmux new -A -s '
alias ta='tmux attach -t'
alias tdo='tmux new -A -s todo'
alias tat='tmux attach -t todo'

# Config/script editing aliases
alias sets='nvim ~/.vim/plugin/sets.vim'
alias crc='nvim ~/.vim/plugin/colors.vim'
alias arc='nvim ~/dotfiles/zsh/.alias.sh'
alias alrc='nvim ~/.config/alacritty/alacritty.yml'
alias ktrc='nvim ~/.config/kitty/kitty.conf'
alias scratch='nvim note:scratch'
alias dots='cd ~/dotfiles'
alias bp='nvim ~/.zshrc'
alias zp='nvim ~/.zshrc'
alias ap='nvim ~/.alias.sh'
alias vrc='nvim ~/.vimrc'
alias vsrc='nvim ~/.vim/settings.vim'
alias vfrc='nvim ~/.vim/func.vim'
alias trc='nvim ~/.tmux.conf'
alias zrc='nvim ~/.zshrc'
alias nvrc='nvim ~/.config/nvim/init.vim'
alias zsrc='source ~/.zshrc'
alias pb='~/bin/pb.sh'

# Misc
alias weather='curl wttr.in'
alias consoleanim='defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float '

alias vimgo='vim -u ~/.vimrc.go'
alias kp='~/bin/kp'

# Combination of mkdir $ARG && cd $ARG
mkcd () { mkdir --p -- "$1" && cd -P -- "$1" }
# view files -- leveraging fzf
vf () { ls -a | fzf | xargs -r -I % $EDITOR % ; }


# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

# LSD not ls
alias ls='lsd --color=auto'                                                          # ls
# alias la='lsd -a'                                                          # ls
alias laf='lsd -laF --color=auto'                                                          # ls
alias l='lsd -lF --color=auto'                                                # list, size, type, git
alias ll='lsd -lGF --git --color=auto'                                             # long list
alias llm='lsd -lGd --git --sort=modified --color=auto'                            # long list, modified date sort
alias la='lsd -lhigUmuSa --time-style=long-iso --git --color=auto'  # all list
alias lx='lsd -lhigUmuSa@ --time-style=long-iso --git --color=auto' # all + extended list

# # EXA not ls
# alias ls='exa --color=auto'                                                          # ls
# # alias la='exa -a'                                                          # ls
# alias laf='exa -laF --color=auto'                                                          # ls
# alias l='exa -lbF --git'                                                # list, size, type, git
# alias ll='exa -lbGF --git --color=auto'                                             # long list
# alias llm='exa -lbGd --git --sort=modified --color=auto'                            # long list, modified date sort
# alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color=auto'  # all list
# alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color=auto' # all + extended list

# Star Wars
alias starwars='nc towel.blinkenlights.nl 23'

# KUBECTL
source ~/dotfiles/zsh/.kube-alias.sh
