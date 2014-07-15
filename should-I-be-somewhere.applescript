set now to current date
set end_time to now + (5 * minutes)


tell application "Microsoft Outlook"
	
	set number_of_events to count (every calendar event whose start time is less than or equal to now and end time is greater than or equal to now)
	
	if number_of_events > 0 then
		"you should be somewhere"
	else
		"ok where you are"
	end if
end tell
