#!/bin/bash
ffmpeg -f x11grab -s 3840x2160 -i :0.0 -f alsa -ac 1 -ar 44100 -i hw:2 -acodec mp3 -vf scale=1920:1080 -sws_flags bitexact -preset superfast $@
