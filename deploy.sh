#!/usr/bin/env bash

URL='rtsp://admin:Kurata1909@21.209.162.229:2500/onvif1'

PREFIX=/media/ggdrive/Camera/$(date "+%y%m%d")
TMP=/tmp/Camera/

TIME=310 # seconds
TIMEOUT=$(( TIME+5 ))

mkdir -p $PREFIX $TMP

FILE=$TMP/$(date "+%y%m%d-%H%M%S")-imou1.mkv

timeout $TIMEOUT ffmpeg -nostdin -hide_banner -re -i "$URL" -t $TIME -rtsp_transport tcp -c:v copy -c:a copy $FILE
mv $FILE $PREFIX/