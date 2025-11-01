@echo off

set /p num="Enter a value: "
set /a fact=1
for /l %%i in (1,1,%num%) do (
	set /a fact*=%%i
)
echo Factorial of %n% is %fact%

pause