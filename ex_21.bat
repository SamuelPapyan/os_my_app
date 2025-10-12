@echo off

setlocal enabledelayedexpansion

set /p numbers=Enter your number sequence: 

set prev=
for %%i in (%numbers%) do (
    if defined prev (
        echo !prev! and %%i
        call :sum !prev! %%i
        call :hanum !prev! %%i
        call :mul !prev! %%i
        call :divide !prev! %%i
        call :mod2 !prev! %%i
        echo =====================
    )
    set prev=%%i
)
goto :eof

:sum
set /A res=%~1 + %~2
echo %~1 + %~2 = %res%
goto :eof

:hanum
set /A res=%~1 - %~2
echo %~1 - %~2 = %res%
goto :eof

:mul
set /A res=%~1 * %~2
echo %~1 * %~2 = %res%
goto :eof

:divide
set /A res=%~1 / %~2
echo %~1 / %~2 = %res%
goto :eof

:mod2
set /A res=%~1 %% %~2
echo %~1 %% %~2 = %res%
goto :eof

endlocal