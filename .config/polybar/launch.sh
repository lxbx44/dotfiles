#!/usr/bin/env bash

killall -q polybar


if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    polybar small &
    polybar hdmi &
else
    polybar small &
fi

