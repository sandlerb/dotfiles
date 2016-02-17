alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

if [[ "$(uname -s)" == "Darwin" ]]; then
    alias vi="mvim -v"
    alias vim="mvim -v"

    alias ls='gls --color=auto --group-directories-first -F'
    alias date='gdate'
elif [[ "$(uname -s)" == "Linux" ]]; then
    alias vi="vim"
    alias ls='ls --color=auto -F'
fi
