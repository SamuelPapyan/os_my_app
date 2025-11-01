@echo off

set file=batch_scripts.bat
type nul > batch_scripts.bat

for %%f in (ex_*.bat) do (
    echo %%f >> %file%
    echo. >> %file%
    echo. >> %file%
    type %%f >> %file%
    echo. >> %file%
    echo. >> %file%
)

pause