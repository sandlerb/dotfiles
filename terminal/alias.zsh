if [[ "$(uname -s)" == "Darwin" ]]; then
    alias ltty='ls /dev/tty.*'
elif [[ "$(uname -s)" == "Linux" ]]; then
    alias ltty='ls /dev/tty*'
fi

alias hag='history | tail -200 | ag'
