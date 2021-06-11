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
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export PATH=$PATH:/Users/cn188380/bin
export PATH=$HOME/.emacs.d/bin:$PATH
export CONFIG_FILE_PATH="./config.json"
export EDITOR='nvim'
export KUBE_EDITOR='nvim'

export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --follow --glob '!vendor/*'"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"


function timestamp() {
    date '+%Y-%m-%d'
}
alias nn="touch note-$(timestamp).md"


vf() { fzf | xargs -I % $EDITOR % }
mkcd() { mkdir -p -- "$1" && cd -P -- "$1" }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

source ~/.alias.sh
source ~/code/obsidian-tools/oo-k8s.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source <(helm completion zsh) # setup autocompelte for helm
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
# echo "[[ $commands[kubectl] ]] && source <(kubectl completion zsh)" >> ~/.zshrc # add autocomplete permanently to your zsh shell
#
#
#
# PROMPT='%(?.%F{green}→.%F{red}✖)%f %B%F{240}%1~%f%b %$ '

source ~/gits/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v
eval "$(starship init zsh)"
# alias kl() {
#     kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$1 -f --context $2
# }
