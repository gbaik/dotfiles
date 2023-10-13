# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/gideon/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/gideon/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/gideon/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/gideon/.fzf/shell/key-bindings.zsh"
