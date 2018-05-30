# Detect which ls flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color=auto"
else # macOS `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# Always use color output for ls
alias ls="command ls ${colorflag}"
