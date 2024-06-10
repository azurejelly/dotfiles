#!/bin/bash

TIMESTAMP=$(date +%s)
ROOT_DIR=$(git rev-parse --show-toplevel)

mv $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings-$TIMESTAMP.bak
cp $ROOT_DIR/.vscode/user/settings.json $HOME/Library/Application\ Support/Code/User/settings.json