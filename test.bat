@echo off
set message=Hello World
echo %message%
set /A a=0x10
set /A b=13

set /A c=%a%+%b%
echo %a%
echo %b%
echo %c%

setlocal

endlocal