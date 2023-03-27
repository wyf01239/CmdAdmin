@echo off
set wpath=%~dp0

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

echo CmdAdmin v0.6 by wyf9 2023.3.26 - %wlangnow%. %lang_all_rights_reserved%

prompt $P$S$G$G$S

doskey /OVERSTRIKE ca=%wpath%wCmd.bat $1 $2 $4 $5 $6 $7 $8 $9