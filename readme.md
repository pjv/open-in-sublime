The best description (with pictures, even) of Open In Sublime is in the [wiki](https://github.com/pjv/open-in-sublime/wiki).

The following probably barely makes sense :-O

If you want to turn this raw script into the equivalent of the application that is available for download from this repo's wiki, open it in applescript and then save as an application.

If you want it to look cool, cmd-i on the saved applet and cmd-i on Sublime Text 2 and copy the ST2 icon from ST2 to the applet.

Version 2.0 of Open In Sublime has two new features:

1. It works with Path Finder as well as Finder

2. By popular demand and the work of ProLoser, this verison of Open in Sublime lets it open the finder selection in Sublime Text 2. You can have either the original behavior or the open selection behavior depending on how you name the application that you create in AppleScript. If you name the app "open folder in sublime" then you will get the original behavior which is to always load the open finder (path finder) window in Sublime's sidebar regardless of whether there is a selection in the window or not. If you name it anything else, then you will get the new behavior which is to open the selection if there is one and the directory if there is not.