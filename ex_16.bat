@echo off
setlocal
set /p folder=Enter folder name: 
set /p file=Enter output file: 
type nul > %file%
for %%i in ("%folder%\*.txt") do (
    echo %%i >> %file%
    type %%i >> %file%
    echo. >> %file%
    echo. >> %file%
)
endlocal
pause