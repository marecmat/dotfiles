#!/bin/bash

MUTE=$(pacmd list-sinks|grep -A 15 '* index'|awk '/muted:/{ print $2 }')

if [[ "$MUTE" == "no" ]] ; then
    VOL=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
        head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
    VOLUME="$VOL%"

else
    VOLUME="00%"
fi

echo "  $VOLUME"
