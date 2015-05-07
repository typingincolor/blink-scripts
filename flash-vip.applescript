on run argv
	set colour to item 1 of argv

	try
		get colour
	on error
		set colour to "white"
	end try
	
	set command to "/usr/bin/curl http://localhost:8934/blink1/pattern/play?pname=" & colour & "%20flashes"
	
	do shell script command
end run