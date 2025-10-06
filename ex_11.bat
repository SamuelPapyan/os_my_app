::@echo off
set /p source_folder=Source folder:
set /p dest_folder=Destination folder:

md "%dest_folder%"
copy "%source_folder%\*" "%dest_folder%"