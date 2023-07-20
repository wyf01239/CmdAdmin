@echo off

cd.
call python sources\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    cd.
    logging get_time %lang%
)
set /p wLoadStart=<data\temp\time.txt