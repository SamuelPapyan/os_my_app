@echo off

setlocal

set /p file=Enter your file name: 
call :folderList %file%
goto :eof


:folderList
dir /b /ad > %~1 
goto :eof

endlocal