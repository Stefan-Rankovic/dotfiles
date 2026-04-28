#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

echo "-- Switching to awww -- "

echo "Uninstalling hyprpaper"
$AUR_HELPER -Rns hyprpaper

echo "Installing awww"
$AUR_HELPER -S awww

echo "-- Done --"

