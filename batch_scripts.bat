ex_01.bat 
 
 
@echo off
echo "Hello World"
pause 
 
ex_02.bat 
 
 
@echo off
cls
set /p name=Your name:
echo Hello, %name%. How are you?
pause 
 
ex_03.bat 
 
 
@echo off
:loop
set /p name=Your name
echo Hello %name%

if %name% NEQ quit goto loop

pause 
 
ex_04.bat 
 
 
@echo off
set /A sum = %1 + %2
set /A mul = %1 * %2
echo Sum = %sum%
echo Multiplication = %mul%
pause 
 
ex_05.bat 
 
 
@echo off
set /p number="Number :"
set /a remainder=%number% %% 2
if %remainder%==0 echo Zuyg
if %remainder%==1 echo Kent
pause 
 
ex_06.bat 
 
 
@echo off

set /p num="Enter a value: "
set /a fact=1
for /l %%i in (1,1,%num%) do (
	set /a fact*=%%i
)
echo Factorial of %n% is %fact%

pause 
 
ex_07.bat 
 
 
@echo off
set /P name="What's your name? "
set /P age="How old are you? "

if %age% GEQ 18 (
    echo Dear %name%. You are adult.
) else (
    echo Dear %name%. You are minor.
)
pause 
 
ex_08.bat 
 
 
@echo off
set /P filename="Enter a new file name: "
type nul > %filename%
echo Empty file %filename% created successfully
pause 
 
ex_09.bat 
 
 
@echo off
set /P dirname="Enter a directory path: "
dir %dirname%
pause 
 
ex_10.bat 
 
 
@echo off
set /p folder=Enter folder path: 
set /p prefix=Enter prefix: 
cd /d "%folder%"
for %%f in (*) do (
	ren "%%f" "%prefix%%%f"
)
echo Done! All files renames with prefix "%prefix%".
pause 
 
ex_11.bat 
 
 
@echo off
set /p source_folder=Source folder: 
set /p dest_folder=Destination folder: 

md "%dest_folder%"
xcopy "%source_folder%\*" "%dest_folder%" /s /i
echo Files copied successfully
pause 
 
ex_12.bat 
 
 
@echo off
set /p folder=Enter folder name: 
set /p ext=Enter extension:
del "%folder%\*.%ext%"
echo All %ext% files deleted.
pause 
 
ex_13.bat 
 
 
@echo off
set /p src=Enter source folder: 
set /p dest=Enter destination folder: 

for /f "tokens=1-3 delims=/ " %%a in ("%date%") do (
    for /f "tokens=1-3 delims=: " %%x in ("%time%") do (
        set foldername=%src%_%%a-%%b-%%c_%%x%%y%%z
    )
)
set foldername=%foldername::=-%
xcopy "%src%\*" "%dest%\%foldername%\" /s /i
echo Folder copied as %foldername%
pause 
 
ex_14.bat 
 
 
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
 
ex_15.bat 
 
 
@echo off
set /p colors=Enter the colors: 
echo your favorite colors are:
for %%i in (%colors%) do (
    echo %%i
) 
 
ex_16.bat 
 
 
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
 
ex_17.bat 
 
 
@echo off
setlocal enabledelayedexpansion

set /A number=%1
set file=%2

type nul > %file%
for /L %%i in (1,1,10) do (
    set /A result= !number! * %%i
    echo !number! * %%i = !result! >> %file%
)

endlocal 
 
ex_18.bat 
 
 
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
 
ex_19.bat 
 
 
@echo off
setlocal
:loop
set /P num=Enter your number: 
if "%num%"=="q" goto end
call :Square %num%
goto loop

:Square
set /A sqr = %~1 * %~1
echo %sqr%
exit /b

:end

endlocal
pause 
 
ex_20.bat 
 
 
@echo off
setlocal enabledelayedexpansion

set /p numbers=Enter your number sequence: 

set prev=

for %%n in (%numbers%) do (
    if defined prev (
        call :sum !prev! %%n
    )
    set "prev=%%n"
)
goto :eof

:sum
set /a result=%1 + %2
echo %~1 + %~2 = %result%
goto :eof

pause 
 
ex_21.bat 
 
 
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

pause 
 
ex_22.bat 
 
 
@echo off

setlocal

set /p file=Enter your file name: 
call :folderList %file%
goto :eof


:folderList
type nul > %~1
for /d %%f in (*) do echo %%f >> "%~1"
goto :eof

endlocal

pause 
 
