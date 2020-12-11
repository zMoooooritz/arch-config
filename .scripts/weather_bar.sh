#!/usr/bin/env bash

weatherreport="/home/moritz/.local/share/weather/report"
weatherscript="/home/moritz/.scripts/weather.py"

! [ -f $weatherreport ] && echo "weather report file does not exist" && exit 0

change_esec=$(stat -c %Y $weatherreport)
date_esec=$(date '+%s')

diff=$((date_esec - change_esec))

[ $diff -gt 300 ] && python "/home/moritz/.scripts/weather.py" > $weatherreport

cat $weatherreport
