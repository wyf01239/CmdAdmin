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
set CA=wyf9
set wcal=False

:: CAL.bat support
if "%1" == "/cal" (
    set wlastpath=%2
    set wcal=True
)

::DosKey for Logging
set logging=call %wpath%sources\std\log\info
set warning=call %wpath%sources\std\log\warn
set erroring=call %wpath%sources\std\log\error

echo ================================ >>%wpath%data\running.log
::draw a text picture in Running.log :)
call sources\std\draw

%logging% Load CmdAdmin v%wver% Build date %wvdate%
%logging% Load Loading...

:: get python path config
if not exist data\config\py_path.wcfg (
    %warning% Load Python Path config Lost. Change to "python".
    echo python>data\config\py_path.wcfg
)
set /p wPyPath=<data\config\py_path.wcfg
%logging% Load Python Path: "%wPyPath%"

:: get start timestamp
cd.
call %wPyPath% sources\py\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    cd.
    call sources\get_timestamp
)
set /p wLoadStart=<data\temp\time.txt

%logging% Load Load start timestamp in day: %wLoadStart%

:: reset modules num
set wvyear=2023
set wLoadModules=0

if not exist %wpath%data\config\LangNow.wcfg (
:: ¡ú¡ý if LangNow.wcfg lost
    echo en-us>%wpath%data\config\LangNow.wcfg
    %warning% Main Lang file lost. Changed to en-us.
    echo [CA] WARNING: Langusge File lost.
    echo [CA] Changed language to "en-us".
    echo [CA] You can use CASetting set LangNow *language* to change language config.
)

cd.
:: get now lang
set /p wlangnow=<%wpath%data\config\LangNow.wcfg
%logging% Load Now language: %wlangnow%

%logging% Load Loading language file...
:: loading language...
for /f "eol=# delims=;" %%l in (%wpath%sources\langs\%wlangnow%.wlng) do (
    set %%l>nul
)
%logging% Load %lang___load_lang_ok%

:: title
title %lang__cmd% - CmdAdmin
echo [CA] CmdAdmin v%wver% %wvdate% - %wlangnow%. %lang__all_rights_reserved%


%logging% Load %lang___init_modules%
cd.
:: load modules
for /f "eol=; delims=" %%i in ('dir %wpath%modules\ /b /s') do (
    call "%%i" /winit
    set /a wLoadModules=wLoadModules+1
    cd.
    )
%logging% Load %lang___init_modules_ok%

::doskey: CA command
doskey /OVERSTRIKE ca=%wpath%wCmd.bat $*

::change prompt to "%cd% >> "
prompt $P$S$G$G$S

:: get end timestamp
cd.
call %wPyPath% sources\py\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    cd.
    call sources\get_timestamp
)
set /p wLoadEnd=<data\temp\time.txt

%logging% Load %lang___load_end_time%: %wLoadEnd%

:: calc load time
cd.
call %wPyPath% sources\py\wcalc.py 2 %wLoadEnd% %wLoadStart%
if not %ERRORLEVEL% == 0 (
    %erroring% Load Calc Load Time Failed.
)
set /p wLoadSec=<data\temp\calced.txt


%logging% Load %lang___load_time%: %wLoadSec%s

%logging% Load %lang___load_modules_ok_1% %wLoadModules% %lang___load_modules_ok_2%.
if %wLoadModules% == 1 (
    echo [CA] %lang__loaded% %wLoadModules% %lang__module%.
) else if %wLoadModules% == 0 (
    echo [CA] %lang__load_modules_nope%.
) else (
    echo [CA] %lang__loaded% %wLoadModules% %lang__modules%.
)
cd %wpath%wPath 2>nul
cd %wlastpath% 2>nul
%logging% Load CmdAdmin %lang___load_ok%
echo -------------------------------- >>%wpath%data\running.log
echo [CA] %lang__load_time%: %wLoadSec%s
:: CAL.bat support 2
if "%wcal%" == "True" (
    cd %wpath%wPath
)
echo [CA] CmdAdmin %lang__load_ok%.