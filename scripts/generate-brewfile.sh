#!/bin/bash

ROOT_DIR=$(git rev-parse --show-toplevel)

brew bundle dump --file="$ROOT_DIR/Brewfile"