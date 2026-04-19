#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

WALLPAPERS_DIR="${HOME}/.config/hypr/wallpapers"
HYPRPAPER_CONF="${HOME}/.config/hypr/hyprpaper.conf"

if [[ -z "$1" ]]; then
    echo "Usage: $0 <path or filename>" >&2
    exit 1
fi

# If the argument starts with / or ~, it's an absolute path.
if [[ "$1" == /* || "$1" == ~* ]]; then
	IMG_PATH="$1"
	# If not a valid file.
    if [[ ! -f "$IMG_PATH" ]]; then
        echo "Error: '$IMG_PATH' is not a valid file." >&2
        exit 1
    fi
# Otherwise it's a file name
else
    # Search in $WALLPAPERS_DIR using fd.
    matches=("${(@f)$(fd --type f "$1" "$WALLPAPERS_DIR")}")
	# If no file matches.
    if [[ ${#matches[@]} -eq 0 ]]; then
        echo "Error: No file matching '$1' found in $WALLPAPERS_DIR." >&2
        exit 1
	# If more than 1 file matches.
    elif [[ ${#matches[@]} -gt 1 ]]; then
        echo "Error: Multiple matches found for '$1':" >&2
        for m in "${matches[@]}"; do
            echo "  $m" >&2
        done
        exit 1
    fi
    IMG_PATH="${matches[1]}"
fi

# cat > "$HYPRPAPER_CONF" <<EOF
# # SPDX-License-Identifier: GPL-3.0-only
# # NOTE: This file is automatically managed by \`scripts/change_wallpaper.zsh\`! Please use that to change your wallpaper.
#
# preload = $IMG_PATH
#
# wallpaper {
# 	monitor =
# 	path = $IMG_PATH
# }
#
# splash = false
# EOF

echo "Changing wallpaper"
awww img "$IMG_PATH"

echo "Sourcing wal function from $ZDOTDIR/functions/wal.zsh"
source "$ZDOTDIR/functions/wal.zsh"
wal -n -i "$IMG_PATH"

