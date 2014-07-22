#!/bin/bash

#!/bin/bash

result=`/blink-scripts/gmail.pl`
if (( result > 0 )) 
then
	osascript /blink-scripts/flash.applescript blue 
fi