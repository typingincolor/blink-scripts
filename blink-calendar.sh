#!/bin/bash

while [ true ]
do
	date=`date`
	echo "$date   checking..."
	result=`icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`

	attempts=1
	if (( result > 0 )) 
	then
		until /usr/local/bin/blink1-tool -m 200 -t 400 --yellow --blink 3 || [ $attempts -gt 5 ]
		do
			attempts=$((attempts + 1))
			sleep 2
		done
	fi

	sleep 180 
done
