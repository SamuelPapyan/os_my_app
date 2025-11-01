@echo off
setlocal
:loop
set /P num=Enter your number: 
if "%num%"=="q" goto end
call :Square %num%
goto loop

:Square
set /A sqr = %~1 * %~1
echo %sqr%
exit /b

:end

endlocal
pause