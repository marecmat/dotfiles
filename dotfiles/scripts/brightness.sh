#!/bin/bash
MON=$2              # Discover monitor name with: xrandr | grep " connected"
STEP=$3             # Step Up/Down brightnes by: 5 = ".05", 10 = ".10", etc.
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

else
    Left=${CurrBright%%"."*}        # Extract left of decimal point
    Right=${CurrBright#*"."}        # Extract right of decimal point

    MathBright="0"
    [[ "$Left" != 0 && "$STEP" -lt 10 ]] && STEP=10     # > 1.0, only .1 works
    [[ "$Left" != 0 ]] && MathBright="$Left"00          # 1.0 becomes "100"
    [[ "${#Right}" -eq 1 ]] && Right="$Right"0          # 0.5 becomes "50"
    MathBright=$(( MathBright + Right ))

    [[ "$1" == "+" ]] && MathBright=$(( MathBright + STEP ))
    [[ "$1" == "-" ]] && MathBright=$(( MathBright - STEP ))
    [[ "${MathBright:0:1}" == "-" ]] && MathBright=0    # Negative not allowed
    [[ "$MathBright" -gt 999  ]] && MathBright=999      # Can't go over 9.99

    if [[ "${#MathBright}" -eq 3 ]] ; then
        MathBright="$MathBright"000         # Pad with lots of zeros
        CurrBright="${MathBright:0:1}.${MathBright:1:2}"
    else
        MathBright="$MathBright"000         # Pad with lots of zeros
        CurrBright=".${MathBright:0:2}"
    fi

    xrandr --output "$MON" --brightness "$CurrBright"   # Set new brightness

    # Display current brightness
    echo "$MON $CurrBright"
fi