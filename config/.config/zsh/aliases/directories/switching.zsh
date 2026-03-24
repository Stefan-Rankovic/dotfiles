# SPDX-License-Identifier: GPL-3.0-only

cd() {
    builtin cd "$@" && ls
} # [C]hange [D]irectory

alias ..="cd .."
alias ...="cd ../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

