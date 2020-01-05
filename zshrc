# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
#
source /home/mrk/.profile

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export PATH=$HOME/bin:/usr/local/bin:$PATH
# export GOROOT=/usr/bin/go
# export GOPATH=$HOME/go/bin
# export PATH=$GOPATH:$GOROOT/bin:$PATH
# export PATH=$PATH:$GOPATH:$GOROOT
export GO111MODULE=on

# Path to your oh-my-zsh installation.
export ZSH="/home/mrk/.oh-my-zsh"
# FPATH=~/.zfunc:$PATH
# export FPATH="$HOME/.zfunc:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.a
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
vi-mode
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General / shorties
alias c='clear'
alias x='exit'
alias v='nvim'
alias n='ncmpcpp'
alias cdh='cd /mnt/h'
alias cdm='cd /mnt/m'
alias cdd='cd /mnt/d'
alias cdf='cd /mnt/f'

# Arch
alias xrc='nvim ~/.xinitrc'
alias sxrc='nvim ~/.config/sxhkd/sxhkdrc'
alias bprc='nvim ~/.config/bspwm/bspwmrc'
alias termiterc='nvim ~/.config/termite/config'
alias polyrc='nvim ~/.config/polybar/config.ini'
alias kbrc='nvim ~/.xbindkeysrc'
alias pbre='killall polybar; polybar main &'
alias picrc='nvim ~/.config/picom/picom.conf'

# Go
alias gt='go test ./... -coverprofile=coverage.out && go vet ./... '
alias gb='go test -v --bench . --benchmem'
alias goc='go tool cover -html=coverage.out'

# Git
alias gp='git pull'
alias gs='git status'
alias ga='git add'
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
# se

# general use
# alias ls='exa'                                                          # ls
# alias la='exa -a'                                                          # ls
# alias laf='exa -laF'                                                          # ls
# alias l='exa -lbF --git'                                                # list, size, type, git
# alias ll='exa -lbGF --git'                                             # long list
# alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
# alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
# alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# specialty views
# alias lS='exa -1'                                                              # one column, just names
# alias lt='exa --tree --level=2'                                         # tree

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# vim settings
# bindkey -v
export KEYTIMEOUT=1
export EDITOR='nvim'
export FZF_DEFAULT_OPTIONS='--layout=reverse --height 40%'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --follow'
#export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
