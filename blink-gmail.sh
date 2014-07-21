#!/bin/bash

attempts=1
result=`/Users/abraithwaite/scripts/gmail.pl`
if (( result > 0 )) 
then
	until /usr/local/bin/blink1-tool -m 200 -t 400 --blue --blink 3 || [ $attempts -gt 5 ]
	do
		attempts=$((attempts + 1))
		sleep 2
	done
fi
