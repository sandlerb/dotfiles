# TODO
#   add upstream and downstream counts
#   add indicator for merge, bisect, etc.

autoload colors && colors

# Use homebrew git if it exists
if (( $+commands[git] ))
then
    git="$commands[git]"
else
    git="/usr/bin/git"
fi

# Use a function be slightly more descriptive
l_brack() {
    echo "%F{white}[%f"
}

r_brack() {
    echo "%F{white}]%f"
}

# Print the current branch
git_branch() {
    echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

GIT_STAGED=" %{$fg[green]%}●%{$reset_color%}"
GIT_UNSTAGED=" %{$fg[red]%}●%{$reset_color%}"
GIT_UNTRACKED=" %{$fg[grey]%}●%{$reset_color%}"

git_staging_status() {
    staging=""
    st=$($git status 2>/dev/null)
    if [[ $st =~ 'Changes to be committed' ]]
    then
        staging="$staging$GIT_STAGED"
    fi
    if [[ $st =~ 'Changes not staged for commit' ]]
    then
        staging="$staging$GIT_UNSTAGED"
    fi
    if [[ $st =~ 'Untracked files' ]]
    then
        staging="$staging$GIT_UNTRACKED"
    fi

    echo "$staging"
}

git_info() {
    if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1
    then
        echo "$(l_brack)%F{yellow}$(git_branch)$(git_staging_status)$(r_brack) "
    else
        echo ""
    fi
}

directory() {
    echo "%F{blue}%2~"
}

sentinel() {
    echo "%F{blue}❯%f"
}

PROMPT=$'$(directory) $(git_info)$(sentinel) '

