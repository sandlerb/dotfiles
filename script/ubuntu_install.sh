#!/bin/bash

if ! type apt-get >/dev/null 2>&1; then
    echo "Did not find apt-get, exiting..."
    exit 1
fi

sudo apt-get install vim git zsh picocom git-extras valgrind tree dconf-cli fzf

exit 0
