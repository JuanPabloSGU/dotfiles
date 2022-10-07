# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sanchezgarciaj/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sanchezgarciaj/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sanchezgarciaj/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sanchezgarciaj/.fzf/shell/key-bindings.zsh"
