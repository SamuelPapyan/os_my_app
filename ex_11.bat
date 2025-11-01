@echo off
set /p source_folder=Source folder: 
set /p dest_folder=Destination folder: 

md "%dest_folder%"
xcopy "%source_folder%\*" "%dest_folder%" /s /i
echo Files copied successfully
pause