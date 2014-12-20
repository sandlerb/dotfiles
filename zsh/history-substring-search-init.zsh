# Initialize zsh-history-substring-search submodule
source $ZSHFILES/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh \
    || return 1

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red,bold'
