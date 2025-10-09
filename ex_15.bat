@echo off
setlocal enabledelayedexpansion

set /p colors=Enter the colors: 

echo your favorite colors are:
for %%i in (%colors%) do (
    echo %%i
)

endlocal