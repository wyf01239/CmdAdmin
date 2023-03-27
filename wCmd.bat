@echo off
title %lang_cmd% - CmdAdmin ...

if "%1" == "/t" echo Test
if "%1" == "/q" goto quit
if "%1" == "/v" goto wver
goto wend

:wend
title %lang_cmd% - CmdAdmin