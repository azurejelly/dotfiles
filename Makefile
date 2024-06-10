SHELL := /bin/bash
ROOT_DIR := $(shell git rev-parse --show-toplevel)

all: brew skhd yabai npm defaults code

brew:
	$(ROOT_DIR)/scripts/brew.sh

yabai:
	ln -sfn "$(ROOT_DIR)/.yabairc" "$(HOME)/.yabairc"

skhd:
	ln -sfn "$(ROOT_DIR)/.skhdrc" "$(HOME)/.skhdrc"

npm:
	$(ROOT_DIR)/scripts/npm.sh

defaults:
	$(ROOT_DIR)/scripts/defaults.sh

code:
	$(shell $(ROOT_DIR)/scripts/code-config.sh)

.PHONY: all brew skhd yabai npm defaults code
