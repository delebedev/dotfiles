if [[ $OSTYPE == darwin* ]]; then
  export MACOS=true
fi

# Set the path to include:
#  - /usr/local/bin   for Homebrew
#  - /usr/local/sbin
#  - /usr/bin         for system executables
#  - /usr/sbin
#  - /bin
#  - /sbin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
