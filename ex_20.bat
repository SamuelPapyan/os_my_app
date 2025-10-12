@echo off
setlocal enabledelayedexpansion

set /p numbers=Enter your number sequence: 

set prev=

for %%n in (%numbers%) do (
    if defined prev (
        call :sum !prev! %%n
    )
    set "prev=%%n"
)
goto :eof

:sum
set /a result=%1 + %2
echo %1 + %2 = %result%
goto :eof