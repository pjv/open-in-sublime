The best description (with pictures, even) of Open In Sublime is in the [wiki](https://github.com/pjv/open-in-sublime/wiki).

The following probably barely makes sense :-O

Version 2.1 fixes an issue where the script was popping up a dialog asking where Path Finder was located if it was not installed on the machine where the script was run. 

This version does a little two-step in order to work on systems that do not have Path Finder installed
without popping up a dialog asking where it is. The idea here is to compile it with the needed terms
from Path Finder's dictionary but save that compiled script such that it can then be exported as an
application that no longer needs to have access to Path Finder in order to run.

Complicated, I know.

If you don't have Path Finder, you should just download the pre-compiled app from https://github.com/pjv/open-in-sublime/downloads

With Path Finder installed, you can run the raw script from the repo here and it will create a NEW script in your home directory called "Open Folder in Sublime.scpt"

Next you need to open that script in AppleScript Editor and Export as an application.

Name the app "open folder in sublime" if you want it to always load the finder window directory.

Name it anything else if you want it to open the finder selection.

If you want it to look cool, do a cmd-i on Sublime Text 2, click on the icon in the upper left and copy, then cmd-i on the open in sublime app you just made, click its icon and paste. sweet.

Version 2.0 of Open In Sublime has two new features:

1. It works with Path Finder as well as Finder

2. By popular demand and the work of ProLoser, this verison of Open in Sublime lets it open the finder selection in Sublime Text 2. You can have either the original behavior or the open selection behavior depending on how you name the application that you create in AppleScript. If you name the app "open folder in sublime" then you will get the original behavior which is to always load the open finder (path finder) window in Sublime's sidebar regardless of whether there is a selection in the window or not. If you name it anything else, then you will get the new behavior which is to open the selection if there is one and the directory if there is not.

##### Yosemite Tip
If you are running Yosemite you can not just drag an app to your Finder Toolbar. In Yosemite you need to hold `command` and drag the app to the Finder Toolbar for it to "install". *Open-in-sublime* falls under this category. Reference from [Mac OS X Hints](http://hints.macworld.com/article.php?story=20131025093452688).

