export DOTFILES="$(dirname "$(readlink "$HOME/.zshrc")")"

# Find all config files, excluding completions
configs=($DOTFILES/*/*.bash $DOTFILES/*/*.zsh)
for file in ${configs:#*/completions.zsh}
do
  source "$file"
done

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  # Load autocomplete and other zsh stuff
  autoload -Uz compinit
  compinit -i

  for file in ${(M)configs:#*/completions.zsh}
  do
    source "$file"
  done

  # Better history search
  autoload -U up-line-or-beginning-search
  autoload -U down-line-or-beginning-search
  zle -N up-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "^[[A" up-line-or-beginning-search # Up
  bindkey "^[[B" down-line-or-beginning-search # Down
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/denis.lebedev/.sdkman"
[[ -s "/Users/denis.lebedev/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/denis.lebedev/.sdkman/bin/sdkman-init.sh"
