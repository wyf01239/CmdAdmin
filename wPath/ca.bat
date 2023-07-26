@echo off
if not "%CmdAdmin%" == "wyf9" (
    exit /b 114514
)
set caPath=%~dp0
set cd=
set wcalastpath=%cd%
set wca=True
cd %caPath%
..\wCmd.bat %*