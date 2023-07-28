@echo off
:: reset
set cd=
set date=
set time=
set wlastpath=%cd%
:: get program path
set wpath=%~dp0
cd /d %wpath%
:: program ver
set wver=0.7
set wvdate=2023.7.23
set wvyear=%wvdate:~0,4%
set CA=wyf9
set wcal=False
set calLoadErr=0

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
    %warning% Load Python Path config Lost. Changed to "python".
    echo python>data\config\py_path.wcfg
)
set /p wPyPath=<data\config\py_path.wcfg
%logging% Load Python Path: "%wPyPath%"

::check python ver
cd.
%wPyPath% --version>nul 2>nul
if not %ERRORLEVEL% == 0 (
    %warning% Python "%wPyPath%" maybe cannot use
    echo Python "%wPyPath%" Maybe Cannot use. If it is True, You will can't use CmdAdmin.
)

:: get start timestamp
cd.
call %wPyPath% sources\py\get_timestamp.py>nul 2>nul
if not %ERRORLEVEL% == 0 (
    set /a calLoadErr=calLoadErr+1
) else (
    set /p wLoadStart=<data\temp\time.txt
)

:: reset modules num
set wLoadModules=0

if not exist %wpath%data\config\LangNow.wcfg (
:: ¡ú¡ý if LangNow.wcfg lost
    echo en-us>%wpath%data\config\LangNow.wcfg
    %warning% Main Lang file lost. Changed to en-us.
    echo [CA] WARNING: Langusge File lost.
    echo [CA] Changed language to "en-us".
    echo [CA] You can use "CASetting set LangNow *language*" to change language config.
    echo      And use "CA / refresh lang" to refresh language file.
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
    set /a calLoadErr=calLoadErr+1
) else (
    set /p wLoadEnd=<data\temp\time.txt
)


:: calc load time
cd.
call %wPyPath% sources\py\wcalc.py 2 %wLoadEnd% %wLoadStart%
if not %ERRORLEVEL% == 0 (
    set /a calLoadErr=calLoadErr+1
) else (
    set /p wLoadSec=<data\temp\calced.txt
)

:: check get time status
if %calLoadErr% GTR 0 (
    %erroring% Load %lang___get_loadtime_failed%
    echo [CA] %lang___get_loadtime_failed%
) else (
    set wLoadSec=%wLoadSec%
    if not "%wLoadSec%" == "" (
        set wLoadSec=%wLoadSec:~0,8%
        %logging% Load %lang___load_time%: %wLoadSec%s
        echo [CA] %lang__load_time%: %wLoadSec%s
    )
    
)

%logging% Load %lang___load_modules_ok_1% %wLoadModules% %lang___load_modules_ok_2%.
if %wLoadModules% == 1 (
    echo [CA] %lang__loaded% %wLoadModules% %lang__module%.
) else if %wLoadModules% == 0 (
    echo [CA] %lang__load_modules_nope%.
) else (
    echo [CA] %lang__loaded% %wLoadModules% %lang__modules%.
)
cd /d %wlastpath% 2>nul
%logging% Load CmdAdmin %lang___load_ok%
echo -------------------------------- >>%wpath%data\running.log
echo [CA] CmdAdmin %lang__load_ok%.