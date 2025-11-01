@echo off
set /p number="Number :"
set /a remainder=%number% %% 2
if %remainder%==0 echo Zuyg
if %remainder%==1 echo Kent
pause