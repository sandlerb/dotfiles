#!/bin/bash

PS3='Which application manager would you like to use: '
options=("homebrew" "apt-get" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "Proceeding with homebrew"
            source ../homebrew/install.sh
            source bootstrap
            break
            ;;
        "Option 2")
            echo "Proceeding with apt-get"
            source ./ubuntu_install.sh
            source bootstrap
            break
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
