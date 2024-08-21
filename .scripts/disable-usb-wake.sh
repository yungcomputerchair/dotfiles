#!/bin/bash
# N.B. must be run as root
DEV_COUNT=0
WAKING=$(grep . /sys/bus/usb/devices/*/power/wakeup | grep enabled)
WAKING_EXISTS=$?
if [ $WAKING_EXISTS -eq 0 ]; then
	while read line ; do
		DEV_PATH=$(echo $line | awk '{split($0,a,":"); print a[1]}')
		echo 'disabled' > $DEV_PATH
		DEV_COUNT=$((DEV_COUNT+1))
	done <<< $WAKING
fi
echo "Disabled wake on $DEV_COUNT USB devices"
