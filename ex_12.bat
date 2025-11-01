@echo off
set /p folder=Enter folder name: 
set /p ext=Enter extension:
del "%folder%\*.%ext%"
echo All %ext% files deleted.
pause