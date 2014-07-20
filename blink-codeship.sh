#!/bin/bash


result=`curl -s -I https://codeship.io/projects/7850e470-e5b8-0131-9be6-3221b462f0c1/status?branch=master | grep -c status_error.png`
if (( result > 0 ))
then
	/usr/local/bin/blink1-tool -m 200 -t 400 --red --blink 3
else
	# /usr/local/bin/blink1-tool -m 200 -t 400 --green --blink 3
fi
