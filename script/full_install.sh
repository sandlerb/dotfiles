#!/bin/bash

PS3='Which application manager would you like to use: '
options=("homebrew" "apt" "quit")
select opt in "${options[@]}"
do
    case $opt in
        "homebrew")
            echo "Proceeding with homebrew"
            source ../homebrew/install.sh
            source script/bootstrap
            break
            ;;
        "apt")
            echo "Proceeding with apt-get"
            source ./ubuntu_install.sh
            source script/bootstrap
            break
            ;;
        "quit")
            break
            ;;
        *)
            echo invalid option;;
    esac
done
