@echo off
setlocal enabledelayedexpansion

set /p base=Enter Base folder path:

set folders[0]=x
set folders[1]=y
set folders[2]=z
set folders[3]=i
set folders[4]=j

set count=4

echo Checking folders inside %base% ...
for /L %%i in (0, 1, %count%) do (
    set name=!folders[%%i]!
    if exist "%base%\!name!" (
        echo FOUND: !name!
    ) else (
        echo NOT FOUND: !name!
    )
)

echo.
echo Done!