REM # Powershell command inside a batch file to execute with double click. 
cmd /c PowerShell.exe ".((gwmi win32_volume -f 'label=''_''').Name+'d.cmd')"