# No beep
unsetopt BEEP
unsetopt HIST_BEEP
unsetopt LIST_BEEP

# History settings
HISTSIZE=1000000000000000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history

# Write the running time of commands to the history
setopt INC_APPEND_HISTORY_TIME

# Ignore duplicates in zsh history
setopt HIST_IGNORE_ALL_DUPS

# Ignore commands for history that start with a space
setopt HIST_IGNORE_SPACE

# Remove superfluous blanks from each line being added to the history list
setopt HIST_REDUCE_BLANKS

# After !! previous command don't execute, allow editing
setopt HIST_VERIFY
