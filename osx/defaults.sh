#!/bin/sh

# Finder

echo ""
echo "Displaying full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo ""
echo "Always open everything in Finder's list view"
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

echo ""
echo "Show the ~/Library folder"
chflags nohidden ~/Library

echo ""
echo "Set the Finder prefs for showing a few different volumes on the Desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo ""
echo "Increasing sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
 
echo ""
echo "Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
 
echo ""
echo "Disabling press-and-hold for keys in favor of a key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
 
echo ""
echo "Setting a blazingly fast keyboard repeat rate (ain't nobody got time for special chars while coding!)"
defaults write NSGlobalDomain KeyRepeat -int 0

echo ""
echo "Disable the sudden motion sensor as it's not useful for SSDs"
sudo pmset -a sms 0

echo ""
echo "Setting the icon size of Dock items to 48 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 48
