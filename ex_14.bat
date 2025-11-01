@echo off

set /p base=Enter Base folder path:

set folders=x y z i j

echo Checking folders inside %base% ...
for %%f in (%folders%) do (
    if exist "%base%\%%f" (
        echo FOUND: %%f
    ) else (
        echo NOT FOUND: %%f
    )
)
echo.
echo Done!
pause