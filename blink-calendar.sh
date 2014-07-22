#!/bin/bash

while [ true ]
do
	date=`date`
	echo "$date   checking..."
	result=`icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`

	attempts=1
	if (( result > 0 )) 
	then
		osascript /blink-scripts/flash.applescript yellow
	fi

	sleep 5 
done
