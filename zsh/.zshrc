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
export GO111MODULE='on'
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

export _ZO_DATA_DIR=$HOME/.local/share
export _ZO_ECHO=0
export _ZO_RESOLVE_SYMLINKS=1
export _ZO_MAXAGE=10000
# export _ZO_FZF_OPTS=
# export _ZO_EXCLUDE_DIRS


# =============================================================================
#
# Utility functions for zoxide.
#

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd() {
    \builtin pwd -P
}

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd() {
    # shellcheck disable=SC2164
    \builtin cd "$@" && __zoxide_pwd
}

# =============================================================================
#
# Hook configuration for zoxide.
#

# Hook to add new entries to the database.
function __zoxide_hook() {
    zoxide add -- "$(__zoxide_pwd)"
}

# Initialize hook.
if [ "${__zoxide_hooked}" != '1' ]; then
    __zoxide_hooked='1'
    chpwd_functions=("${chpwd_functions[@]}" "__zoxide_hook")
fi

# =============================================================================
#
# When using zoxide with --no-aliases, alias these internal functions as
# desired.
#

# Jump to a directory using only keywords.
function __zoxide_z() {
    if [ "$#" -eq 0 ]; then
        __zoxide_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        if [ -n "${OLDPWD}" ]; then
            __zoxide_cd "${OLDPWD}"
        else
            # shellcheck disable=SC2016
            \builtin printf 'zoxide: $OLDPWD is not set'
            return 1
        fi
    elif [ "$#" -eq 1 ] &&  [ -d "$1" ]; then
        __zoxide_cd "$1"
    else
        \builtin local __zoxide_result
        __zoxide_result="$(zoxide query --exclude "$(__zoxide_pwd)" -- "$@")" \
            && __zoxide_cd "${__zoxide_result}"
    fi
}

# Jump to a directory using interactive search.
function __zoxide_zi() {
    \builtin local __zoxide_result
    __zoxide_result="$(zoxide query -i -- "$@")" && __zoxide_cd "${__zoxide_result}"
}

# =============================================================================
#
# Convenient aliases for zoxide. Disable these using --no-aliases.
#

# Remove definitions.
function __zoxide_unset() {
    \builtin unalias "$@" &>/dev/null
    \builtin unfunction "$@" &>/dev/null
    \builtin unset "$@" &>/dev/null
}

__zoxide_unset 'z'
function z() {
    __zoxide_z "$@"
}

__zoxide_unset 'zi'
function zi() {
    __zoxide_zi "$@"
}

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually ~/.zshrc):
#
# eval "$(zoxide init zsh)"


eval "$(zoxide init zsh)"

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
