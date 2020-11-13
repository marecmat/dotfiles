#!/bin/bash
#brightness_set set DP-2 0.9 
#brightness_set verbose DP-2

MON=$2

MONITORS=$(xrandr | grep " connected " | awk '{ print$1 }')
CurrBright=$( xrandr --verbose --current | grep ^"$MON" -A5 | tail -n1 )
CurrBright="${CurrBright##* }"  # Get brightness level with decimal place

if [[ "$1" == "verbose" ]] ; then
    status="/"
    for item in ${MONITORS[*]}
    do
        test "$item" == "$MON" && { status=$CurrBright; break; }
    done    
    echo "$status "
fi

if [[ "$1" == "set" ]] ; then
    xrandr --output "$MON" --brightness "$3"
fi

