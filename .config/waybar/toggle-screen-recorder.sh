#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  wf-recorder -c libx264 -x yuv420p --audio=easyeffects_sink.monitor -f $(xdg-user-dir VIDEOS)/$(date +'recording_%Y-%m-%d-%H%M%S.mp4');
else 
  pkill --signal SIGINT wf-recorder
fi;
