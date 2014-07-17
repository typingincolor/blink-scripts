#!/bin/bash

result=`/usr/local/bin/icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`
if (( result > 0 )) 
then
	/usr/local/bin/blink1-tool -m 200 -t 400 --yellow --blink 3
fi
