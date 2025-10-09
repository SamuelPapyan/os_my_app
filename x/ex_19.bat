@echo off
setlocal

:Square
set /A num = %~1
set /A sqr = %num% * %num%
echo sqr

endlocal