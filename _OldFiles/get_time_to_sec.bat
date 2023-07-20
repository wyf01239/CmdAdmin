@echo off
goto main
set time=
set wAPITemp_timeHH=%time:~0,2%
set wAPITemp_timeMM=%time:~3,2%
set wAPITemp_timeSS=%time:~6,2%
set /a wAPITemp_timeHHsec=wAPITemp_timeHH*3600
set /a wAPITemp_timeMMsec=wAPITemp_timeMM*60
set /a wAPITemp=wAPITemp_timeHHsec+wAPITemp_timeMMsec+wAPITemp_timeSS
set wAPIBack_GTTS=%wAPITemp%
rem exit /b %wAPITemp%
:: Back: xxxxx
:: s: %wAPIBack_GTTS_s%

:: ¡ü old    ¡ý new

:: chinese:
:: date:2023/07/15 ÖÜÁù
:: time:14:02:29.05

:main
set cd=
set nowcd=%cd%
cd /d %~dp0\..\..
set date=
set time=

echo %date%>%wpath%data\temp\date.txt
cd.
find /i "ÖÜ" data\temp\date.txt>nul 2>nul
if %ERRORLEVEL% == 0 (
    :: found
    set wMonth=%DATE:~4,2%
    set wDate=%DATE:~8,2%

    ::calc Month

) else (
    :: not found
    set datesec=0
)
goto :END

10000.51
10001.21

 10001.21
-10000.51 -> 100-(51-21)
_________
 00001.0

:END

cd /d %nowcd%