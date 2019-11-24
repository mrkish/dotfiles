# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mrk/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mrk/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mrk/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mrk/.fzf/shell/key-bindings.zsh"
