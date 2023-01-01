#!/bin/bash
volume=`awk -F"[][]" '/Left:/ { print $4 }' <(amixer sget Master)` 
if [ $volume == "on" ]; then
  amixer set Master mute
else
  amixer set Master unmute
fi
