set now to current date

tell application "Calendar"
	set number_of_events to count (every event in  calendar "Calendar" whose start date is less than or equal to now and end date is greater than or equal to now)
	
	if number_of_events > 0 then
		do shell script "/usr/local/bin/blink1-tool -m 200 -t 400 --red --blink 3"
	end if
end tell
