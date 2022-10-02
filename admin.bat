title wyfadmin
set wver=Beta 2.0.0
if %1==launch goto go
if %1==back goto goto
:go
echo Wyfadmin 版本：%wver%.
echo 版权所有 wyf9. 保留所有权.
echo 系统时间；%date% %time%
:goto
set /p com=^>^>
io %com%
exit