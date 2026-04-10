#!/bin/bash

choice=$(ls /home/pawritra/.config/hypr/applets | rofi -dmenu -p "Settings")

echo $choice
python3 /home/pawritra/.config/hypr/applets/$choice
