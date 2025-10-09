@echo off
setlocal enabledelayedexpansion

set /A number=%1
set file=%2

type nul > %file%
for /L %%i in (1,1,10) do (
    set /A result= !number! * %%i
    echo !number! * %%i = !result! >> %file%
)

endlocal