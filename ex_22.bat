@echo off

setlocal

set /p file=Enter your file name: 
call :folderList %file%
goto :eof


:folderList
type nul > %~1
for /d %%f in (*) do echo %%f >> "%~1"
goto :eof

endlocal

pause