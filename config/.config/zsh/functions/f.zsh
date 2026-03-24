# SPDX-License-Identifier: GPL-3.0-only

f() {
    fb --exclude /.Trash-0 \
       --exclude /home/.Trash-0 \
       "$@" /
} # [F]ind

