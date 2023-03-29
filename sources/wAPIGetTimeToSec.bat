@echo off
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