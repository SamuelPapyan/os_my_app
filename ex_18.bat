@echo off

setlocal

set /p file=Enter filename: 

:moveback
set directory=
for %%i in (%CD%) do (
    set directory=%%i
)
set file = %CD%\%1

if %directory% == C:\ (
    goto :badend
)

if exist %file% (
    echo File is in %directory%
    goto :end
) else (
    cd ..
    goto :moveback
)

:badend
echo There is no file %file% in the filesystem

:end

endlocal