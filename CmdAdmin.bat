@echo off
:: echo [Info %date% %time%]  >>%wpath%data\running.log
:: reset
set cd=
set date=
set time=
set wlastpath=%cd%
:: get program path
set wpath=%~dp0
cd %wpath%
:: program ver
set wver=0.6
set wvdate=2023.4.1
set CmdAdmin=wyf9
set wcal=False

:: CAL.bat support
if "%1" == "/cal" (
    set wlastpath=%2
    set wcal=True
)

::DosKey
doskey logging=%wpath%sources\stdbat\log\info $*
doskey logwarn=%wpath%sources\stdbat\log\warn $*
doskey logerror=%wpath%sources\stdbat\log\error $*

echo ================================ >>%wpath%data\running.log
::draw a text picture in Running.log :)
call sources\stdbat\draw

echo [Info %date% %time%] CmdAdmin v%wver% Build date %wvdate% >>%wpath%data\running.log
echo [Info %date% %time%] Loading... >>%wpath%data\running.log

:: get start timestamp
set wLoadStart=%wBack%

echo [Info %date% %time%] Load start timestamp in day: %wLoadStart% >>%wpath%data\running.log

:: reset modules num
set wvyear=2023
set wLoadModules=0

if not exist %wpath%data\config\LangNow.wcfg (
:: ¡ú¡ý if LangNow.wcfg lost
    echo en-us>%wpath%data\config\LangNow.wcfg
    echo [Warn %date% %time%] Lang file lost. Changed to en-us. >>%wpath%data\running.log
    echo [CA] WARNING: Langusge File lost.
    echo [CA] Changed language to "en-us".
)

cd.
:: get now lang
set /p wlangnow=<%wpath%data\config\LangNow.wcfg
echo [Info %date% %time%] Now language: %wlangnow% >>%wpath%data\running.log

echo [Info %date% %time%] Loading language file... >>%wpath%data\running.log
:: loading language...
for /f "eol=# delims=;" %%l in (%wpath%sources\langs\%wlangnow%.wlng) do (
    set %%l>nul
)
echo [Info %date% %time%] %lang___load_lang_ok% >>%wpath%data\running.log

:: title
title %lang__cmd% - CmdAdmin
echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow%. %lang__all_rights_reserved%


echo [Info %date% %time%] %lang___init_modules% >>%wpath%data\running.log
cd.
:: load modules
for /f "eol=; delims=" %%i in ('dir %wpath%modules\ /b /s') do (
    call "%%i" /winit
    set /a wLoadModules=wLoadModules+1
    cd.
    )
echo [Info %date% %time%] %lang___init_modules_ok% >>%wpath%data\running.log

::doskey: CA command
doskey /OVERSTRIKE ca=%wpath%wCmd.bat $*

::change prompt to "%cd% >> "
prompt $P$S$G$G$S

:: get end timestamp
cd.
call python _source\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    cd.
    call sources\get_timestamp
)
set /p wLoadEnd=<data\temp\time.txt

echo [Info %date% %time%] %lang___load_end_time%: %wLoadEnd% >>%wpath%data\running.log

:: calc load time
cd.
call python _source\wcalc.py 2 %wLoadEnd% %wLoadStart%
if not %ERRORLEVEL% == 0 (
    call sources\wcalc 2 %wLoadEnd% %wLoadStart%
)
set /p wLoadSec=<data\temp\calced.txt


echo [Info %date% %time%] %lang___load_time%: %wLoadSec%s >>%wpath%data\running.log

echo [Info %date% %time%] %lang___load_modules_ok_1% %wLoadModules% %lang___load_modules_ok_2%. >>%wpath%data\running.log
if %wLoadModules% == 1 (
    echo [CA] %lang__loaded% %wLoadModules% %lang__module%.
) else if %wLoadModules% == 0 (
    echo [CA] %lang__load_modules_nope%.
) else (
    echo [CA] %lang__loaded% %wLoadModules% %lang__modules%.
)
cd %wpath%wPath 2>nul
cd %wlastpath% 2>nul
echo [Info %date% %time%] CmdAdmin %lang___load_ok% >>%wpath%data\running.log
echo -------------------------------- >>%wpath%data\running.log
echo [CA] %lang__load_time%: %wLoadSec%s
:: CAL.bat support 2
if "%wcal%" == "True" (
    cd %wpath%wPath
)
echo [CA] CmdAdmin %lang__load_ok%.