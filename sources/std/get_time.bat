@echo off

cd.
call python _source\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    cd.
    call sources\get_timestamp
)
set /p wLoadStart=<data\temp\time.txt