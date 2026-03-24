# SPDX-License-Identifier: GPL-3.0-only

ZINIT_HOME="${XDG_DATA_HOME}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# The alias zi is needed for zoxide, so set zinit to zzi instead.
alias zzi="${aliases[zi]}"
unalias zi

for plugin in "$ZDOTDIR"/addons/zinit_plugins/*.zsh; do
	source "$plugin"
done
