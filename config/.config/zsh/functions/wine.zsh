# SPDX-License-Identifier: GPL-3.0-only

# [WINE]
wine() {
	local RESET="\e[0m"
	local RED="\e[31m"
	local GREEN="\e[32m"
	local YELLOW="\e[33m"
	local BLUE="\e[34m"
	local MAGENTA="\e[35m"
	printf "${YELLOW}WARNING: No prefix specified! Wine state will be reset after it quits!\n"
	printf "Continue?${RESET} (${GREEN}y${RESET}/${RED}N${RESET}) "
	read confirm
	[[ "$confirm" =~ ^[Yy]$ ]] || return 1

	command wine "$@"

	for i in 5 4 3 2 1; do
		printf "\r${BLUE}Cleaning up ~/.wine in ${MAGENTA}$i${BLUE} seconds...${RESET}"
		sleep 1
	done
	printf "\r${BLUE}Cleaning up ~/.wine...${RESET}                                                 \n"
	rm -rf ~/.wine/
	wineboot --init
}
