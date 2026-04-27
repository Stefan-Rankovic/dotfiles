#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

echo "-- Switching to hyprpaper -- "

echo "Uninstalling awww"
$AUR_HELPER -Rns awww

echo "Installing hyprpaper"
$AUR_HELPER -S hyprpaper

echo "-- Done --"

