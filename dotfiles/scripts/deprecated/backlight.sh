#!/bin/bash
list=()
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    line=$(cd $HOME/Documents/Projets/scripts/ && ./brightness.sh | grep $m)
    cut_lin=$(echo $line | grep -o -P 'brightness: .{0,4}')
    list+=( "$m:${cut_lin:12:3}" )
done

printf " %s " "${list[@]}"
