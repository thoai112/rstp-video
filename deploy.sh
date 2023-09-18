#!/usr/bin/env bash

ffmpeg -i rtsp://admin:Emngu125@kuratajr.gotdns.ch:620/onvif2 -c:v libx264 -vf scale=1280:720 output.mp4