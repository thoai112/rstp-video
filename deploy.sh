#!/usr/bin/env bash

URL='rtsp://admin:Emngu125@kuratajr.gotdns.ch:620/onvif2'

PREFIX=/media/ggdrive/Camera/$(date "+%y%m%d")


TIME=310 # seconds
TIMEOUT=$(( TIME+5 ))


FILE=$(date "+%y%m%d-%H%M%S")-imou1.mkv

timeout $TIMEOUT ffmpeg -i "$URL" -c:v libx264 -vf scale=1280:720 $FILE