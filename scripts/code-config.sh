#!/bin/bash

TIMESTAMP=$(date +%s)
ROOT_DIR=$(git rev-parse --show-toplevel)

code --install-extension digitalbrainstem.javascript-ejs-support
code --install-extension fisheva.eva-theme
code --install-extension illixion.vscode-vibrancy-continued
code --install-extension j69.ejs-beautify
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension prisma.prisma
code --install-extension ritwickdey.liveserver
code --install-extension rust-lang.rust-analyzer
code --install-extension tamasfe.even-better-toml
code --install-extension usernamehw.errorlens

mv $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings-$TIMESTAMP.bak
cp $ROOT_DIR/.vscode/user/settings.json $HOME/Library/Application\ Support/Code/User/settings.json