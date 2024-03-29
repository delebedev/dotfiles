if [[ $OSTYPE == darwin* ]]; then
  export MACOS=true
fi

# Set the path to include:
#  - /opt/homebrew/bin   for Homebrew
#  - /usr/local/sbin
#  - /usr/bin         for system executables
#  - /usr/sbin
#  - /bin
#  - /sbin
#  - ~/dotfiles/bin
export PATH="/opt/homebrew/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/dotfiles/bin"

# System had en_GB by default and caused obscure failures
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
