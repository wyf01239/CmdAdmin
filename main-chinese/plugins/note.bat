set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
echo.
if %1==open echo %9>>plugins\notes.txt
if %1==new goto new
if %1==delall del plugins\notes.txt
if %1==exit admin back
:open
echo ***create a note:new name
echo ***delete all note:delall
type plugins\notes.txt
set /p choose=^>
%0 %choose%
rem ----------
admin back