set now to current date

tell application "Microsoft Outlook"
	set number_of_events to count (every calendar event whose start time is less than or equal to now and end time is greater than or equal to now)
	
	if number_of_events > 0 then
		do shell script "/usr/local/bin/blink1-tool -m 200 -t 400 --red --blink 3"
	end if
end tell
