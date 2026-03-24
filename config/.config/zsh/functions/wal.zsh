# SPDX-License-Identifier: GPL-3.0-only

# [WAL]
wal() {
	echo -e "Custom wal behavior\n"
	command wal "$@"

	local wallpaper=""
	local i_encountered=0
	for arg in "$@"; do
		if [[ $i_encountered -eq 1 ]]; then
			wallpaper=$(basename "$arg")
			break
		fi
		[[ "$arg" == "-i" ]] && i_encountered=1
	done
	[[ $i_encountered -eq 0 ]] && return # Return if no -i argument.

	local pywal_dir="${PYWAL_CACHE_DIR:-${XDG_CACHE_HOME:?}/wal}"
	local json_location="$pywal_dir/colors.json"

	case "$wallpaper" in
		"hoshino_ai.png")
			jq '.colors.color2 = "#ff7f00"' "$json_location" | sponge "$json_location"
			;;
		*)
			return 0
			;;
	esac

	wal --theme "$json_location"
}

