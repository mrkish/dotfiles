setopt autocd

fpath=(~/.zsh/completion $fpath)fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit

HISTFILE=~/.zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go/bin
export PATH=$GOPATH:$GOROOT/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.emacs.d/bin:$PATH
# export PATH=$PATH:$GOPATH:$GOROOT
# export GO111MODULE=on

# export FZF_DEFAULT_OPTIONS='--layout=reverse --height 40% --border'
export FZF_CTRL_R_OPTS='--layout=reverse --height 40%'
export FZF_DEFAULT_OPTIONS='--layout=reverse --info=inline --height 40% --border --margin=1 --padding=1'
# export FZF_DEFAULT_COMMAND="rg --files --no-ignore --follow --preview 'head -100 {}'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export LANG=en_US.UTF-8
export KEYTIMEOUT=1
export EDITOR='nvim'

source /home/mrk/.profile
source ~/.alias.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

if [ -e /home/mrk/.nix-profile/etc/profile.d/nix.sh ]; then . /home/mrk/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# load theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
