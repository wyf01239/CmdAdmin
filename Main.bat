@echo off
set wpath=%~dp0
cd %wpath%

call sources\wAPIGetTimeToSec.bat
set wLoadStarts=%wAPIBack_GTTS_s%
set wLoadStartms=%wAPIBack_GTTS_ms%

set wver=0.6
set wvdate=2023.3.26
set wvyear=2023
set wLoadModules=0

if not exist %wpath%data\LangNow.wcfg (
    echo en-us>%wpath%data\LangNow.wcfg
    echo [CA] WARNING: Langusge File lost.
    echo [CA] Changed language to "en-us".
)

set /p wlangnow=<%wpath%data\LangNow.wcfg
set isadmin=False

whoami /groups | find "S-1-16-12288">nul && set isadmin=True

for /f "eol=# delims=;" %%l in (%wpath%sources\langs\%wlangnow%.wlng) do (
    set %%l>nul
)

if %isadmin% == true (
    title %lang__cmd% - CmdAdmin - Admin Perm
    echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow% - Admin Perm. %lang__all_rights_reserved%
) else (
    title %lang__cmd% - CmdAdmin
    echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow%. %lang__all_rights_reserved%
)

for /f "eol=; delims=" %%i in ('dir %wpath%modules\ /b /s') do (
    call "%%i" /winit
    set /a wLoadModules=wLoadModules+1
    )

doskey /OVERSTRIKE ca=%wpath%wCmd.bat $1 $2 $4 $5 $6 $7 $8 $9

prompt $P$S$G$G$S

call sources\wAPIGetTimeToSec.bat
set /a wLoadSecs0=wAPIBack_GTTS_s-wLoadStarts
set /a wLoadSecms0=wAPIBack_GTTS_ms-wLoadStartms
if %wLoadSecms0% LSS 0 (
    set /a wLoadSecs=wLoadSec-1
    set /a wLoadSecms=100-%wLoadSecms0:~-2%
) else (
    set wLoadSecs=%wLoadSecs0%
    set wLoadSecms=%wLoadSecms0%
)
set wLoadSec=%wLoadSecs%.%wLoadSecms%
if %wLoadModules% == 1 (
    echo [CA] %lang__loaded% %wLoadModules% %lang__module%.
) else (
    echo [CA] %lang__loaded% %wLoadModules% %lang__modules%.
)
echo [CA]CmdAdmin %lang__load_ok%. (%wLoadSec%s)