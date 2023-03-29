@echo off
set time=
set wAPITemp_timeHH=%time:~0,2%
set wAPITemp_timeMM=%time:~3,2%
set wAPITemp_timeSS=%time:~6,2%
set wAPITemp_timeMS=%time:~-2%
set /a wAPITemp_timeHHsec=wAPITemp_timeHH*3600
set /a wAPITemp_timeMMsec=wAPITemp_timeMM*60
set /a wAPITemp0=wAPITemp_timeHHsec+wAPITemp_timeMMsec+wAPITemp_timeSS
set wAPITemp=%wAPITemp0%%wAPITemp_timeMS%
set wAPIBack_GTTS_s=%wAPITemp0%
set wAPIBack_GTTS_ms=%wAPITemp_timeMS%
rem exit /b %wAPITemp%
:: Back: aaaaabb
:: aa: s
:: bb: ms
:: s: %wAPIBack_GTTS_s%
:: ms: %wAPIBack_GTTS_ms%