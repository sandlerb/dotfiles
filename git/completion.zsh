# Use git completion from Homebrew
completion='/usr/local/bin/share/zsh/site-functions/_git'

if test -f $completion
then
    source $completion
fi
