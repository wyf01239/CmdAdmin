@echo off
set calPath=%~dp0
set cd=
set wcallastpath=%cd%
cd %calPath%
..\CmdAdmin.bat /cal "%wcallastpath%"