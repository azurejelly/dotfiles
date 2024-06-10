#!/bin/bash

# M1 accent colors without the M1
defaults write -g NSColorSimulateHardwareAccent -bool YES
defaults write -g NSColorSimulatedHardwareEnclosureNumber -int 7

# Make hidden apps translucent
defaults write com.apple.Dock showhidden -bool YES; killall Dock

# Do not use RTF for TextEdit by default
defaults write com.apple.TextEdit RichText -int 0
