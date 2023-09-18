#!/usr/bin/env bash

ffmpeg -nostdin -hide_banner -re -i rtsp://admin:Emngu125@kuratajr.gotdns.ch:620/onvif2 -t 20 -c:v libx264 -vf scale=1280:720 output.avi