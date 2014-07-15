#!/bin/bash

while [ true ]
do
	date=`date`
	echo "$date   checking..."
	result=`icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`
	if (( result > 0 )) 
	then
		echo "pattern: yellow flashes" > /tmp/blink-calendar.out
	else 
		echo "pattern: none" > /tmp/blink-calendar.out
	fi

	sleep 300 
done
