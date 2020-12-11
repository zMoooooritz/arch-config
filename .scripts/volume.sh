#!/usr/bin/env bash

default="80"
step="${2:-5}"

case "$1" in
    inc|up|dec|down|set)
        ! [[ $2 =~ ^-?[0-9]+$ ]] && echo "second argument has to be an integer" && exit
        ;;&
    inc|up) pamixer --allow-boost -i $step ;;
    dec|down) pamixer --allow-boost -d $step ;;
    set) pamixer --set-volume ${2:-$default} ;;
    reset) pamixer --set-volume $default ;;
    toggle) pamixer -t ;;
    *) ;;
esac

