
Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c pseb.cmd"
oShell.Run strArgs, 0, false