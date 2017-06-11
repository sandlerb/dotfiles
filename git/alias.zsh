# Git aliases

# Preferred status
alias gst="git status -sb"

# Preferred log, also modified in ~/.gitconfig
alias glg="git lg"
alias gll="git ll"
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:${_git_log_medium_format}'

# Always show what the diff in the commit message editor
alias gc='git commit --verbose'

# Shorter names
alias gd='git diff'
alias ga='git add'
alias gco='git checkout'
alias gdns='git diff --name-status'

alias gflict='git diff --name-only --diff-filter=U'
