export DOTFILES="$(dirname "$(readlink "$HOME/.zshrc")")"

# Find all config files, excluding completions
configs=($DOTFILES/*/*.bash $DOTFILES/*/*.zsh)
for file in ${configs:#*/completions.zsh}
do
  source "$file"
done

# Load autocomplete and other zsh stuff
autoload -Uz compinit
compinit -i

for file in ${(M)configs:#*/completions.zsh}
do
  source "$file"
done
