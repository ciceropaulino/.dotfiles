#!/bin/bash
# [1] Obter as resoluções dos monitores
resolutions=$(xrandr | awk '/\*/ {print $1}')
# [2] Encontrar a maior largura entre as resoluções
max_width=$(echo "$resolutions" | awk -F'x' '{print $1}' | sort -nr | head -n1)
# --------------------------------------------------------------------------------
# [3] Choose proper clock script, based on the resolution of the primary monitor
# We need this so that the clock script can print the data/time on the center
# of the statusbar.
# This is necessary because the slstatus does not support a centralized area 
# to display elements. So I have to add several white spaces so that the
# date/time output appears centralized on the statusbar.
# --------------------------------------------------------------------------------
# notify-send "Found resolution = $max_width"
# Selan, on July 10th, 2023
if [[ "$max_width" -eq "1920" ]]; then
    ln -sf $HOME/.local/bin/statusbar/clock_1920 $HOME/.local/bin/statusbar/clock
else
    ln -sf $HOME/.local/bin/statusbar/clock_2560 $HOME/.local/bin/statusbar/clock
fi
# --------------------------------------------------------------------------------
