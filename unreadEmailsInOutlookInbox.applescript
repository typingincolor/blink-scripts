tell application "Microsoft Outlook"
	set OutlookCount to 0
	using terms from application "Microsoft Outlook"
		repeat with thisOutlookMailAccount in every exchange account
			set OutlookUnreadCount to 0
			try
				set thisOutlookMailInBox to mail folder "Inbox" of thisOutlookMailAccount
				set OutlookUnreadCount to count of (messages of thisOutlookMailInBox whose is read is false)
			end try
			set OutlookCount to OutlookCount + OutlookUnreadCount
		end repeat
	end using terms from
	
	if OutlookCount ³ 1 then
		"pattern: red flashes"
	else
		"pattern: none"
	end if
end tell