#!/bin/bash
result=`osascript /Users/abraithwaite/scripts/should-I-be-somewhere.scpt`

if [ "$result" == "you should be somewhere" ] 
then
	echo "pattern: yellow flashes"
else 
	echo "pattern: none"
fi