@echo off
:: if "%1" == "" goto 

if not "%CA%" == "wyf9" (
    exit /b 1
)

logging Main %lang___running_command%: CA %*
title %lang__cmd% - CmdAdmin ...
set wCleanLog=False

if "%1" == "/t" (
    logging Main/Proc Test
    echo Test
    goto wend
    )
if "%1" == "/q" goto quit
if "%1" == "/e" (
    logging Main/Proc Quitting CMD...
    set CmdAdmin=
    exit 0
)
if "%1" == "/v" goto wver
if "%1" == "/h" goto whelp
if "%1" == "/d" goto wdellog
warning Main/Proc %lang___unknown_command%
if not "%1" == "" (
    if not "%1" == " " (
        if exist %wpath%plugins\%1 goto plg
        if exist %wpath%plugins\%1.bat goto plg
        echo [CA] %lang__unknown_command%.
    )
)
goto wend

:wver
    logging Main %lang___wver%
    echo CmdAdmin v%wver%. %wvdate%
    echo %lang_wver_lang%: %wlangnow% - %lang_wver_nowlang%
    echo %lang_wver_copy% (c) %wvyear% wyf9. %lang__all_rights_reserved%
    echo %lang_wver_project_home%: https://github.com/wyf01239/CmdAdmin
    goto wend

:quit
    if %wCleanLog% == False (
        logging Main %lang___quitting% CmdAdmin...
    )
    echo [CA] %lang_quitting% CmdAdmin...
    prompt $P$G
    title %lang__cmd%
    cd /d %wlastpath% 2>nul
    start %wpath%sources\AltAddF10.vbs
    set CmdAdmin=
    cmd
    exit

:wdellog
    del %wpath%data\running.log
    echo %lang_wdellog% Running.log.
    set wCleanLog=True
    goto quit

:whelp
    if exist %wpath%sources\helps\%2.whelp (
        logging Main/Help %lang___whelp_showing% "%wlangnow%"
        echo %lang_whelp_name% %wlangnow%.whelp:
        for /f "eol=# delims=;" %%l in (%wpath%sources\helps\%wlangnow%.whelp) do (
                echo %%l
            )
    ) else if exist %wpath%sources\helps\%wlangnow%.whelp (
        warning Main/Help %lang___whelp_showing% "%wlangnow%"
        echo %lang_whelp_name% %wlangnow%.whelp:
        for /f "eol=# delims=;" %%l in (%wpath%sources\helps\%wlangnow%.whelp) do (
                echo %%l
            )
    ) else (
        erroring Main/Help %lang___whelp_error% "%wlangnow%"
        echo %lang_whelp_unknown%: %wlangnow%.whelp
    )

:wend
    title %lang__cmd% - CmdAdmin
    if "%wca%" == "True" (
    goto %wcalastpath%
)
    exit /b 0

:plg
echo ...