# blink(1) scripts

Some scripts I've written to control my blink(1) [http://thingm.com/products/blink-1/]

## blink-gmail.sh

Checks whether there are any unread messages in your gmail inbox. Username and password are specified in ~/gmail.props

The properties are:
	
	username
	password

## blink-calendar.sh

Checks your calendar to see whether you should be somewhere. It uses icalBuddy [http://hasseg.org/icalBuddy/icalBuddy/] which can be install using homebrew `brew install ical-buddy` 

You have to start it from a terminal window due to calendar's privacy settings. I just type `nohup blink-calendar.sh &` and then close the terminal window.

## flash.applescript

Flashes the colour specified 3 times. Valid colours are:

* red
* blue
* yellow
* white
* purple

basically any colour in blink-control that matches `{colour} flashes`

to run it: `osascript flash.applescript {colour}`

if no colour is specifed, it flashes red. 

## perl

The following are the commands to install the perl dependencies used by these scripts:

	sudo cpan install Mail::IMAPClient
    sudo cpan install Config::Properties