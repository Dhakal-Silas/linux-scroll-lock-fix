#!/bin/bash

# Ask for sudo upfront
echo "Your_SUDO_PASSWORD" | sudo -S true

# Find scrolllock LED folder excluding input2
SCROLLLOCK_DIR=$(ls -d /sys/class/leds/input*::scrolllock 2>/dev/null | grep -v "/input2::" | head -n 1)

if [ -z "$SCROLLLOCK_DIR" ]; then
    echo "No suitable Scroll Lock LED found!"
    exit 1
fi

# Read current brightness value
CURRENT_BRIGHTNESS=$(cat "$SCROLLLOCK_DIR/brightness")

# Toggle brightness
if [ "$CURRENT_BRIGHTNESS" -eq 0 ]; then
    echo "38258" | sudo -S sh -c "echo 1 > \"$SCROLLLOCK_DIR/brightness\""
else
    echo "38258" | sudo -S sh -c "echo 0 > \"$SCROLLLOCK_DIR/brightness\""
fi

