if [ -z $MACOS ]; then
  return
fi

# Link zsh completion files from homebrew
# https://github.com/zsh-users/zsh-completions
fpath=(/usr/local/share/zsh/site-functions $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)
