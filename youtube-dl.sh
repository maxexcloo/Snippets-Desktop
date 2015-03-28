#!/bin/sh
COOKIES="/tmp/youtube-dl.cookies"
USER_AGENT="$(youtube-dl --dump-user-agent)"
VIDEO_URL="$(youtube-dl --cookies="$COOKIES" --get-url --user-agent="$USER_AGENT" "$1")"
shift
mpv --cookies --cookies-file="$COOKIES" --user-agent="$USER_AGENT" "$@" -- $VIDEO_URL
