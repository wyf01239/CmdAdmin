@echo off
:: refresh lang
:: 2023.7.27

echo %lang__refreshing_lang%
%logging% Main//Refresh/Lang %lang__refreshing_lang%
set /p wlangnow=<%wpath%data\config\LangNow.wcfg
for /f "eol=# delims=;" %%l in (%wpath%sources\langs\%wlangnow%.wlng) do (
    set %%l>nul
)
%logging% Main//Refresh/Lang %lang__refreshed_lang%
echo %lang__refreshed_lang%