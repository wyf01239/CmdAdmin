@echo off
if %isadmin% = true (
    title %lang__cmd% - CmdAdmin - Admin Perm ...
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
echo %lang_wver_copy% (c)%wvyear% wyf9. %lang__all_rights_reserved%
echo %lang_wver_project_home%: https://github.com/wyf01239/CmdAdmin


:wend
if %isadmin% = true (
    title %lang__cmd% - CmdAdmin - Admin Perm
) else (
    title %lang__cmd% - CmdAdmin
)