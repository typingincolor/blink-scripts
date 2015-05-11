#!/bin/bash

date=`date`
result=`/usr/local/bin/icalBuddy -iep title -ic Calendar -ea 'eventsNow' | wc -l`
attempts=1
if (( result > 0 ))
then
	echo pattern: yellow flashes
fi

echo pattern: none
