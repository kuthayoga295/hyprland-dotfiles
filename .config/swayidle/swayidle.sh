#!/bin/bash
swayidle timeout 900 '$HOME/.config/swaylock/swaylock-effect.sh' timeout 910 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 1200 'systemctl suspend' before-sleep '$HOME/.config/swaylock/swaylock-effect.sh'
