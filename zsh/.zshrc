fpath=(~/.zsh/completion $fpath)fpath=(~/.zsh/completion $fpath)
# export FPATH=/usr/local/share/zsh/site-functions:/usr/local/Cellar/zsh/5.8_1/share/zsh/functions

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

# If you come from bash you might have to change your $PATH.
# export GOPATH=$HOME/code/Go
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export GO111MODULE=on

# for CHP-JWT
export GOPRIVATE=*.centene.com
export GONOSUMDB=gitlab.centene.com
export GOPROXY="https://artifactory.devx.srd.mms.aws.centene.com/artifactory/api/go/gds-go-rc-local-devx,https://proxy.golang.org,direct"

export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOBIN
export PATH="/usr/local/sbin:$PATH"

export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export PATH=$PATH:/Users/cn188380/bin
export PATH=$HOME/.emacs.d/bin:$PATH

export CONFIG_FILE_PATH="./config.json"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export LANG=en_US.UTF-8
export KEYTIMEOUT=1
export EDITOR='nvim'
export KUBE_EDITOR='nvim'

export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --follow --glob '!vendor/*'"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

source ~/.alias.sh
source ~/code/obsidian-tools/oo-k8s.sh

source <(helm completion zsh) # setup autocompelte for helm
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[[ ~/gits/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/gits/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ ~/gits/zsh/zsh-vi-mode/zsh-vi-mode.zsh ]] && source ~/gits/zsh/zsh-vi-mode/zsh-vi-mode.zsh
[[ ~/gits/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source ~/gits/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# bindkey -v

# eval "$(starship init zsh)"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
