@echo off

set isadmin=False
whoami /groups | find "S-1-16-12288">nul && set isadmin=True

if %isadmin% == true (
    title %lang__cmd% - CmdAdmin - Admin ...
) else (
    title %lang__cmd% - CmdAdmin ...
)


if "%1" == "/t" echo Test
if "%1" == "/q" goto quit
if "%1" == "/v" goto wver
goto wend

:wver
echo CmdAdmin v%wver%. %wvdate%
echo %lang_wver_lang%: %wlangnow% - %lang_wver_nowlang%
echo %lang_wver_copy% (c) %wvyear% wyf9. %lang__all_rights_reserved%
echo %lang_wver_project_home%: https://github.com/wyf01239/CmdAdmin

:wend
if %isadmin% == true (
    title %lang__cmd% - CmdAdmin - Admin
) else (
    title %lang__cmd% - CmdAdmin
)