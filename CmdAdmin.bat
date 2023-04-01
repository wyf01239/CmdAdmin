@echo off
:: echo [%date% %time%]  >>%wpath%data\running.log
set cd=
set date=
set time=
set wlastpath=%cd%
set wpath=%~dp0
cd %wpath%
set wver=0.6
set wvdate=2023.3.26

echo ================================ >>%wpath%data\running.log
echo  ____                    __  ______      __                              >>%wpath%data\running.log
echo /\  _`\                 /\ \/\  _  \    /\ \              __             >>%wpath%data\running.log
echo \ \ \/\_\    ___ ___    \_\ \ \ \L\ \   \_\ \    ___ ___ /\_\    ___     >>%wpath%data\running.log
echo  \ \ \/_/_ /' __` __`\  /'_` \ \  __ \  /'_` \ /' __` __`\/\ \ /' _ `\   >>%wpath%data\running.log
echo   \ \ \L\ \/\ \/\ \/\ \/\ \L\ \ \ \/\ \/\ \L\ \/\ \/\ \/\ \ \ \/\ \/\ \  >>%wpath%data\running.log
echo    \ \____/\ \_\ \_\ \_\ \___,_\ \_\ \_\ \___,_\ \_\ \_\ \_\ \_\ \_\ \_\ >>%wpath%data\running.log
echo     \/___/  \/_/\/_/\/_/\/__,_ /\/_/\/_/\/__,_ /\/_/\/_/\/_/\/_/\/_/\/_/ >>%wpath%data\running.log
echo. >>%wpath%data\running.log

echo [%date% %time%] CmdAdmin v%wver% Build date %wvdate% >>%wpath%data\running.log
echo [%date% %time%] Loading... >>%wpath%data\running.log

call sources\wAPIGetTimeToSec.bat
set wLoadStart=%wAPIBack_GTTS%
echo [%date% %time%] Load start timestamp in day: %wAPIBack_GTTS% >>%wpath%data\running.log

set wvyear=2023
set wLoadModules=0

if not exist %wpath%data\config\LangNow.wcfg (
    echo en-us>%wpath%data\config\LangNow.wcfg
    echo [%date% %time%] [Warn] Lang file lost. Change to en-us. >>%wpath%data\running.log
    echo [CA] WARNING: Langusge File lost.
    echo [CA] Changed language to "en-us".
)

set /p wlangnow=<%wpath%data\config\LangNow.wcfg
echo [%date% %time%] Now language: %wlangnow% >>%wpath%data\running.log
set isadmin=False

whoami /groups | find "S-1-16-12288">nul && set isadmin=True

echo [%date% %time%] Loading language file... >>%wpath%data\running.log
for /f "eol=# delims=;" %%l in (%wpath%sources\langs\%wlangnow%.wlng) do (
    set %%l>nul
)
echo [%date% %time%] %lang___load_lang_ok% >>%wpath%data\running.log

if %isadmin% == true (
    echo [%date% %time%] %lang___have_admin% >>%wpath%data\running.log
    title %lang__cmd% - CmdAdmin - Admin
    echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow% - Admin. %lang__all_rights_reserved%
) else (
    title %lang__cmd% - CmdAdmin
    echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow%. %lang__all_rights_reserved%
)

echo [%date% %time%] %lang___init_modules% >>%wpath%data\running.log
for /f "eol=; delims=" %%i in ('dir %wpath%modules\ /b /s') do (
    call "%%i" /winit
    set /a wLoadModules=wLoadModules+1
    )
echo [%date% %time%] %lang___init_modules_ok% >>%wpath%data\running.log

doskey /OVERSTRIKE ca=%wpath%wCmd.bat $1 $2 $4 $5 $6 $7 $8 $9

prompt $P$S$G$G$S

call sources\wAPIGetTimeToSec.bat
echo [%date% %time%] %lang___load_end_time%: %wAPIBack_GTTS% >>%wpath%data\running.log
set /a wLoadSec=wAPIBack_GTTS-wLoadStart
echo [%date% %time%] %lang___load_time%: %wLoadSec%s >>%wpath%data\running.log
if %wLoadSec% LSS 1 (
    set wLoadSec=%lang__smaller% 1
    echo [%date% %time%] [Info] %lang___load_time_small% >>%wpath%data\running.log
) else if %wLoadSec% GTR 960 (
    if %time% == 0:0:* (
        set wLoadSec=[Error]
        echo [%date% %time%] [Error] %lang___load_time_long% >>%wpath%data\running.log
    )
)

echo [%date% %time%] %lang___load_modules_ok_1% %wLoadModules% %lang___load_modules_ok_2%. >>%wpath%data\running.log
if %wLoadModules% == 1 (
    echo [CA] %lang__loaded% %wLoadModules% %lang__module%.
) else (
    echo [CA] %lang__loaded% %wLoadModules% %lang__modules%.
)
cd %wpath%wPath 2>nul
cd %wlastpath% 2>nul
echo [%date% %time%] CmdAdmin %lang___load_ok% >>%wpath%data\running.log
echo -------------------------------- >>%wpath%data\running.log
echo [CA] CmdAdmin %lang__load_ok%. (%wLoadSec%s)