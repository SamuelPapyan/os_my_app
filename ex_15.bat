@echo off
setlocal enabledelayedexpansion

set /p prompt=Enter the number: 

set /A num=%prompt%

for /L %%i in (0,1,%num%) do (
    set /p colors[%%i] x="Array[%%i]="
    echo !colors[%%i]!
)

echo your favorite colors are:

for /L %%i in (0,1,%num%) do (
    echo !colors[%%i]!
)