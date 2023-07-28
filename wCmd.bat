@echo off
:: if "%1" == "" goto 

if not "%CA%" == "wyf9" (
    exit /b 1
)

%logging% Main %lang___running_command%: "CA %*"
title %lang__cmd% - CmdAdmin ...
set wCleanLog=False

::#region progress
if "%1" == "/" (
    %wpath%sources\proc %*
    goto wend
)
if "%1" == "/t" (
    %logging% Proc Test
    echo Test
    goto wend
    )
if "%1" == "/q" goto quit
if "%1" == "/e" goto wexit
if "%1" == "/v" goto wver
if "%1" == "/h" goto whelp
if "%1" == "/d" goto wdellog

if not "%1" == "" (
    if not "%1" == " " (
        if exist %wpath%plugins\%1 goto plg
        if exist %wpath%plugins\%1.bat goto plg
        %warning% %lang___unknown_command%
        echo [CA] %lang__unknown_command%.
    )
)
::#endregion
goto wend

:wver
    %logging% Main %lang___wver%
    echo CmdAdmin v%wver%. %wvdate%
    echo %lang_wver_lang%: %wlangnow% - %lang_wver_nowlang%
    echo %lang_wver_copy% (c)%wvyear% wyf9. %lang__all_rights_reserved%
    echo %lang_wver_project_home%: https://github.com/wyf01239/CmdAdmin
    goto wend

:quit
    if %wCleanLog% == False (
        %logging% Main %lang___quitting% CmdAdmin...
    )
    echo [CA] %lang_quitting% CmdAdmin...
    prompt $P$G
    title %lang__cmd%
    start %wpath%sources\AltAddF10.vbs
    set CmdAdmin=
    cmd
    exit

:wexit
    %logging% Proc Quitting CMD...
    set CmdAdmin=
    exit 0

:wdellog
    del %wpath%data\running.log
    echo %lang_wdellog% Running.log.
    set wCleanLog=True
    goto quit

:whelp
    if exist %wpath%sources\helps\%2.whelp (
        %logging% Main/Help %lang___whelp_showing% "%wlangnow%"
        echo %lang_whelp_name% %wlangnow%.whelp:
        for /f "eol=# delims=;" %%l in (%wpath%sources\helps\%wlangnow%.whelp) do (
                echo %%l
            )
    ) else if exist %wpath%sources\helps\%wlangnow%.whelp (
        %logging% Main/Help %lang___whelp_showing_now% "%wlangnow%"
        echo %lang_whelp_name% %wlangnow%.whelp:
        for /f "eol=# delims=;" %%l in (%wpath%sources\helps\%wlangnow%.whelp) do (
                echo %%l
            )
    ) else (
        %erroring% Main/Help %lang___whelp_error% "%wlangnow%"
        echo %lang_whelp_unknown%: %wlangnow%.whelp
    )
    goto wend

:plg
:: TODO: �������

:wend
    title %lang__cmd% - CmdAdmin
    if "%wca%" == "True" (
    goto %wcalastpath%
)
    exit /b 0
