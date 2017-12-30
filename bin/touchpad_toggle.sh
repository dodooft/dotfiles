#!/bin/bash

status=$(xinput list-props "Elan Touchpad" | grep "Device Enabled" | awk '{printf $4}')

if [ ${status} == 1 ]; then
	xinput disable "Elan Touchpad"
else
	xinput enable "Elan Touchpad" 
fi

