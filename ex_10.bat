@echo off
setlocal enabledelayedexpansion

set /p folder=Enter folder path:

set /p prefix=Enter prefix:

cd /d "%folder%"

for %%f in (*.*) do (
	ren "%%f" "%prefix%%%f"
)

echo Done! All files renames with prefix "%prefix%".