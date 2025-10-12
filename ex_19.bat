@echo off
setlocal enabledelayedexpansion

set /P prompt=Enter your number: 
set /A number=%prompt%

call :Square %number%
exit /B %ERRORLEVEL%

:Square
set /A num = %~1
set /A sqr = %num% * %num%
echo %sqr%
exit /B 0


endlocal
