@echo off
rem if "%1" == "" goto 

echo [Info %date% %time%] %lang___running_command%: CA %1 %2 %3 %4 %5 %6 %7 %8 %9 >>%wpath%data\running.log
title %lang__cmd% - CmdAdmin ...

if "%1" == "/t" (
    echo [Info %date% %time%] Test >>%wpath%data\running.log
    echo Test
    goto wend
    )
if "%1" == "/q" goto quit
if "%1" == "/e" (
    echo [Info %date% %time%]Quitting CMD... >>%wpath%data\running.log
    exit 0
)
if "%1" == "/v" goto wver
if "%1" == "/h" goto whelp
echo [Warn %date% %time%] %lang___unknown_command% >>%wpath%data\running.log
echo [CA] %lang__unknown_command%.
goto wend

:wver
    echo [Info %date% %time%] Showing version >>%wpath%data\running.log
    echo CmdAdmin v%wver%. %wvdate%
    echo %lang_wver_lang%: %wlangnow% - %lang_wver_nowlang%
    echo %lang_wver_copy% (c) %wvyear% wyf9. %lang__all_rights_reserved%
    echo %lang_wver_project_home%: https://github.com/wyf01239/CmdAdmin
    goto wend

:quit
    echo [Info %date% %time%] %lang___quitting% CmdAdmin... >>%wpath%data\running.log
    echo [CA] %lang_quitting% CmdAdmin...
    prompt $P$G
    title %lang__cmd%
    cd %wlastpath% 2>nul
    start %wpath%sources\AltAddF10.vbs
    cmd
    exit 0

:whelp

:wend
    title %lang__cmd% - CmdAdmin
    exit /b 0