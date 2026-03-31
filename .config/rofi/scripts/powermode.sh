#!/bin/bash
if [ -z "$1" ]; then
    # Initial call: print the menu items
    echo "Restart"
    echo "Shutdown"
else
    # Item selected: perform the action
    case "$1" in
        "Restart") reboot ;;
        "Shutdown") poweroff ;;
    esac
fi
