set wver=Beta 0.1.0
set wvdate=2022.7.2
:go
if %1==exit goto exit
if %1==cls goto cls
if %1==wver goto wyfver
if %1==sysver goto systemver
if %1==whelp goto wyfhelp
%1
:back
admin back
:exit
exit
:cls
cls
goto back
:wyfver
echo wyfadmin 版本：%wver%
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 联系方式：
echo 邮箱：wyf01299@163.com
echo 网站：wyf9.bj.bcebos.com
goto back
:systemver
ver
start %windir%\system32\winver.exe
goto back
:wyfhelp
echo None
goto back
:err
if %errorlevel%==1 goto back
if %errorlevel%==9009 goto back
echo.
echo 你的程序遇到问题，需要重新启动。
echo 请按任意键以重新启动程序。
echo 如果需要帮助，请向开发者提供以下信息：
echo 错误代码：%errorlevel%
set errorlevel=0
pause
cls
launcher

if NOT %errorlevel%==0 goto err