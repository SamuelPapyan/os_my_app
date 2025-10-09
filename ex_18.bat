@echo off

setlocal

set file=%1

:moveback
cd ..
set directory=
for %%i in (%CD%) do (
    set directory=%%i
)
echo %directory%

if %directory% == C:\ (
    goto :end
)
if exist %file% (
    echo "File is in %directory%"
) else (
    goto :moveback
)

:end
echo "There is no file %file% in the filesystem"

endlocal