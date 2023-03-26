@echo off
setlocal

set wPath=%~dp0
set /p wLangNow=<%wPath%data\LangNow.wcfg
set isAdmin=False

whoami /groups | find "S-1-16-12288">nul && set isAdmin=True

for /f "eol=# delims=;" %%l in (%wPath%langs\%wLangNow%.wlng) do (
    set %%l
)

echo CmdAdmin v0.6 by wyf9 2023.3.26 - %wLangNow%. %lang_all_rights_reserved%

prompt $P$S$G$G$S

for /f %%m in ('dir %wpath%modules\ /b /a:-d /s /o:n') do (
    set wM=%%~nm
    doskey /OVERSTRIKE %wM%=%%m
)

doskey /OVERSTRIKE ca=%wPath%Sources\wCmd.bat $1 $2 $4 $5 $6 $7 $8 $9