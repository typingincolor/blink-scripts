#!/bin/bash


result=`/Users/abraithwaite/scripts/gmail.pl`
if (( result > 0 )) 
then
	/usr/local/bin/blink1-tool -m 200 -t 400 --blue --blink 3
fi
