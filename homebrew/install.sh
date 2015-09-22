#!/bin/sh
#
# Install depenedencies and packages with Homebrew

# Make sure we can brew
if test ! $(which brew)
then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

brew install autoconf automake brew-cask coreutils ctags gcc gdbm git \
    git-extras glib gnutls go hidapi lcov libffi libftdi libsodium libtool \
    libusb libusb-compat lua macvim mercurial mysql ncurses python qemu rust \
    sl splint sqlite the_silver_searcher tree valgrind wget zsh picocom llvm

brew cask install day-o macdown razer-synapse transmission vlc slack \
    torbrowser wkhtmltopdf omndisksweeper iterm2 1password flux dropbox \
    google-chrome skype

exit 0
