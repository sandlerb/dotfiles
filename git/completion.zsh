# Use git completion from Homebrew
completion='/usr/local/bin/share/zsh/site-functions/_git'

# If we have it, add it to $fpath
if test -f $completion
then
    $fpath=($completion $fpath)
    source $completion
fi
