#!/bin/sh
#
# Install depenedencies and packages with Homebrew

# Make sure we can brew
if test ! $(which brew)
then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Install
brew install ack autoconf automake cmake coreutils ctags fontconfig gcc git \
    git-extras go hidapi lcov libftdi libtool libusb libusb-compat ncurses \
    openssl picocom splint valgrind vim wget zsh

exit 0
