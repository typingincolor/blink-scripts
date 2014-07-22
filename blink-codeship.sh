#!/bin/bash


result=`curl -s -I https://codeship.io/projects/7850e470-e5b8-0131-9be6-3221b462f0c1/status?branch=master | grep -c status_error.png`
if (( result > 0 ))
then
	osascript /blink-scripts/flash.applescript red
else
	osascript /blink-scripts/flash.applescript green
fi
