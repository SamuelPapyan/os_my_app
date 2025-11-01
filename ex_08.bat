@echo off
set /P filename="Enter a new file name: "
type nul > %filename%
echo Empty file %filename% created successfully
pause