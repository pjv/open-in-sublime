(**
	v. 2.1

This version does a little two-step in order to work on systems that do not have Path Finder installed
without popping up a dialog asking where it is. The idea here is to compile it with the needed terms
from Path Finder's dictionary but save that compiled script such that it can then be exported as an
application that no longer needs to have access to Path Finder in order to run.

Complicated, I know.

you will need to have Path Finder installed in order to compile or run this script
if you don't have Path Finder, you should just download the pre-compiled app from https://github.com/pjv/open-in-sublime/downloads

with Path Finder installed, you can run this script and it will create a new script in your home directory called "Open Folder in Sublime.scpt"
next you need to open that script in AppleScript Editor and Export as an application.

name the app "open folder in sublime" if you want it to always load the finder window directory
name it anything else if you want it to open the finder selection

Copyright © 2013 pjv <pjv@pjv.me>
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar http://www.wtfpl.net/. 
See the COPYING file for more details.

**)

using terms from application "Path Finder"
	
	script theScript
		
		on run
			
			-- find out if path finder is installed
			set pathfinder_installed to true
			try
				tell application "Finder"
					set pathFinder to name of application file id "com.cocoatech.pathfinder"
				end tell
			on error
				set pathfinder_installed to false
			end try
			
			if pathfinder_installed then tell application "System Events"
				-- if anyone knows a better way to find out if the script was
				-- launched from path finder, this would be a good place to put it
				set pathFinder_running to (get name of processes) contains "Path Finder"
			end tell
			
			if name of me as string is "open folder in sublime" then
				set openFiles to false
			else
				set openFiles to true
			end if
			
			if pathfinder_installed and pathFinder_running then
				
				tell application pathFinder
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
			tell application "Sublime Text"
				open listOfAliases
				activate
			end tell
		end st2
		
	end script
	
end using terms from

store script theScript in (path to home folder as string) & "Open Folder in Sublime.scpt"