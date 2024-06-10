#!/bin/bash

# Ask for password
sudo -v

# Get Git root directory
ROOT_DIR=$(git rev-parse --show-toplevel)

# Install Homebrew if needed
if test ! $(which brew)
then
    echo "Could not find Homebrew, attempting to install"
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

# Install stuff from Brewfile
brew bundle --file="$ROOT_DIR/Brewfile"