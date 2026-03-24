#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

export ZDOTDIR="${HOME}/.config/zsh"

if ! source "$ZDOTDIR/.zshenv"; then
    echo "FATAL ERROR: Could not source $ZDOTDIR/.zshenv"
    echo "NOTE: Originated from ${HOME}/.zshenv"
    return 1
fi
