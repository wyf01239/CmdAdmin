@echo off
:: CA / Process

cd.
call %wPyPath% %wpath%sources\py\proc.py %*
goto ret%ERRORLEVEL%>nul 2>nul
:: Unknown
%warning% Proc Unknown Proc Return: %ERRORLEVEL%
goto wend

:ret0
:: OK
::set /p wcaproc=<%wpath%data\temp\proc.txt
::%wcaproc%
goto wend

:ret91
:: Not Found
%warning% Proc %lang___unknown_command%
echo [CA] %lang__unknown_command%.
goto wend

:wend