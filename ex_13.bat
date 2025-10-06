@echo off
setlocal enabledelayedexpansion

set /p src=Enter source folder path:

set /p dst=Enter destination folder path:

for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
	set d1=%%a
	set d2=%%b
	set d3=%%c
	set d4=%%d
)

for /f "tokens=1-2 delims=: " %%h in ('time /t') do (
	set hh=%%h
	set mm=%%i
)

set Min=%mm%
set YYYY=%d4%
set MM=%d2%
set DD=%d3%
set HH=%hh%


set timestamp=%YYYY%-%MM%-%DD%_%HH%-%Min%

for %%F in (%src%) do set folderName=%%~nxF

set newFolder=%folderName%_%timestamp%

md "%dst%\%newFolder%"

xcopy "%src%" "%dst%\%newFolder%\" /E /I /H /Y

echo Done! Copied "%src%" to "%dst%\%newFolder%"
