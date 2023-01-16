@echo off
setlocal enabledelayedexpansion
set i=1
for /f "delims=" %%f in ('dir /b /a-d *.mp3') do (
    set "file=%%~f"
    set "newfile=!i!.mp3"
    ren "!file!" "!newfile!"
    set /a i=i+1
)
echo Done renaming files
pause
