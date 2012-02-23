-- script was opened by click in toolbar
on run
   set st2 to POSIX path of (path to application "Sublime Text 2")
   set subl to st2 & "Contents/SharedSupport/bin/subl"
   
   tell application "Finder"
      set currentPath to (POSIX path of (target of front window as string))
      tell current application to do shell script "\"" & subl & "\"" & " " & "'" & currentPath & "'"
   end tell
   
end run