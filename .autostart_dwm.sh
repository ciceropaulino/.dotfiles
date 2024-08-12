#!/bin/sh

#set keyboard layout
setxkbmap -layout us -variant intl &

#start picom
picom --experimental-backends &

#set background
zsh ./.fehbg &

#start slstatus
slstatus &

eval "$(dbus-launch --sh-syntax --exit-with-session)"
