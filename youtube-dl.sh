#!/bin/sh
cookies_dir="$(mktemp -d /tmp/youtube-dl.XXXX)"
cookies_file="${cookies_dir}/cookies"
user_agent="$(youtube-dl --dump-user-agent)"
video_url="$(youtube-dl --cookies="$cookies_file" --get-url --user-agent="$user_agent" "$1")"
shift
mpv --cookies --cookies-file="$cookies_file" --user-agent="$user_agent" "$@" -- $video_url
