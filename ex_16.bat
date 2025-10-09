@echo off
setlocal

set folder=%1
set file=%2
type nul > %file%
for %%i in ("%folder%\*.txt") do (
    echo %%i >> %file%
    type %%i >> %file%
    echo. >> %file%
    echo. >> %file%
)

endlocal