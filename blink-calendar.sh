#!/bin/bash

while [ true ]
do
	echo "Checking..."
	result=`icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`
	if (( result > 0 )) 
	then
		echo "pattern: yellow flashes" > /Users/andrew/scripts/blink-calendar.out
	else 
		echo "pattern: none" > /Users/andrew/scripts/blink-calendar.out
	fi

	sleep 15 
done
