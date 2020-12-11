#!/usr/bin/env bash

if pgrep -x "picom" > /dev/null
then
    killall picom
else
    i3-msg exec "picom -b --config ~/.config/picom/picom.conf"
fi
