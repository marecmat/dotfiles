#!/bin/bash

accent="999999ff"
black="000000ff"
white="ffffffff"
bg="#262626aa"

i3lock -n -c $bg \
    --radius=30 \
    --ring-width=6 \
    --veriftext="" \
    --wrongtext="" \
    --modif-align=0 \
    --keyhlcolor=$accent \
    --bshlcolor=$white \
    --insidewrongcolor=$bg \
    --insidevercolor=$bg \
    --insidecolor=$bg \
    --ringwrongcolor="#8430d9" \
    --ringvercolor="#8430d9" \
    --ringcolor=$black \
    --linecolor=$bg \
    --greetertext="" \
    --greetercolor=$black \
    --greeter-align=0 \
    --greetersize=14 \
    --clock \
    --timestr="%H:%M:%S" \
    --timecolor=$black \
    --timepos="650:520" \
    --time-align=0 \
    --timesize=16 \
    --datestr="%a %d %m %Y" \
    --indicator
