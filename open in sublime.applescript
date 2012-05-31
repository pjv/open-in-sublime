-- script was opened by click in toolbar
on run
	tell application "Finder"
		if selection is {} then
			set finderSelection to folder of the front window as string
		else
			set finderSelection to selection as alias list
		end if
	end tell
	
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