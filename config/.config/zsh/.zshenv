# SPDX-License-Identifier: GPL-3.0-only
# Do not modify this file! Add your changes to `personal.zshenv` instead.

# Programs
export TERMINAL="kitty"
export FILE_EXPLORER="yazi"
export BROWSER="firefox"
export AUR_HELPER="paru"
export EDITOR="nvim"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# PATH
export PATH="$PATH:/opt/jython/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.lmstudio/bin"
export PATH="$PATH:$HOME/.local/share/pnpm"

# Zsh
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE="50000" # 50k
export SAVEHIST="50000" # 50k

# Pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"

# Personal
source "$ZDOTDIR/personal.zshenv"

