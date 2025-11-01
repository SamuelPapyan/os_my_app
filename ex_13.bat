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