@echo off

setlocal

set file=%1

:moveback
cd ..
set directory=
for %%i in (%CD%) do (
    set directory=%%i
)
if !directory! EQU C:\ (
    goto :end
)
if exist %file% (
    echo "File is in !directory!"
) else (
    goto :moveback
)

:end
echo "There is no file %file% in the directory"

endlocal