@echo off
:loop
set /p name=Your name
echo Hello %name%

if %name% NEQ quit goto loop

pause