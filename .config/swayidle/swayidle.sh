#!/bin/bash
swayidle timeout 900 '$HOME/.config/swaylock/swaylock-effect.sh' timeout 910 'hyprctl dispatch dpms off' timeout 960 'systemctl suspend' resume 'hyprctl dispatch dpms on' before-sleep '$HOME/.config/swaylock/swaylock-effect.sh'
