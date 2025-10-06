@echo off
setlocal enabledelayedexpansion

set n=%1

set /a fact=1

for /l %%i in (1,1,%n%) do (
	set /a fact=!fact! * %%i
)

echo Factorial lo %n% is !fact!

endlocal