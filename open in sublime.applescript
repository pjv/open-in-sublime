-- v. 2.0
-- save as an application
-- name the app "open folder in sublime" if you want it to always load the finder window directory
-- name it anything else if you want it to open the finder selection
on run
	
	tell application "System Events"
		-- if anyone knows a better way to find out if the script was
		-- launched from path finder, this would be a good place to put it
		set pathFinder to (get name of processes) contains "Path Finder"
	end tell
	
	if name of me as string is "open folder in sublime" then
		set openFiles to false
	else
		set openFiles to true
	end if
	
	if pathFinder then
		tell application "Path Finder"
			if openFiles then
				set finderSelection to {}
				set selectedItems to selection
				repeat with theItem in selectedItems
					copy (path of theItem as alias) to the end of finderSelection
				end repeat
			else
				set finderSelection to path of target of item 1 of finder windows
			end if
			
		end tell
	else
		tell application "Finder"
			if openFiles then
				if selection is {} then
					set finderSelection to folder of the front window as string
				else
					set finderSelection to selection as alias list
				end if
			else
				set finderSelection to folder of the front window as string
			end if
		end tell
	end if
	
	st2(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	st2(theList)
end open

-- open in Sublime
on st2(listOfAliases)
	tell application "Sublime Text 2"
		open listOfAliases
		activate
	end tell
end st2