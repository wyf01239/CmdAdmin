@echo off
title vbsspawner
:home
echo vbs生成器
echo 选项:
echo 1.创建一个新的文件
echo 2.读取未编辑完的文件(未开放)
echo 3.版本信息
echo 0.退出
echo 使用数字选择
:go
set choose=null
set /p choose=^>
if %choose%==1 goto newfile
if %choose%==2 goto readfile
if %choose%==3 goto version
if %choose%==0 admin wback
goto go
:version
echo vbs生成器 v1 by wyf9.2022.12.21.
goto go
:readfile

:newfile
echo 本程序可以生成vbs
echo 每一步都可以选择:执行命令(cmd)/弹窗,以后会有高级功能,也可以跳过
echo 一步即一行
echo 每步添加后直接写入文件 添加后不可撤销
echo enjoy it!
echo.
echo 1.继续
echo 0.返回主菜单
:newfilec
set choose=none
set /p choose=^>
if %choose%==1 goto newfile0
if %choose%==0 goto home
goto newfilec
:newfile0
set addcommandtick=0
echo 请输入vbs文件的名称(不带.vbs):
:newfile0next
set vbsname=null
set /p vbsname=^>
if %vbsname%==null goto newfile0next
set line=1
:newfileing
echo File "%vbsname%.vbs" / Line %line%
echo 请选择要添加的条目:
echo 1.执行命令
echo 2.弹窗
echo 0.退出编辑
:newfileing2
set choosenew=none
set /p choosenew=^>
if %choosenew%==1 goto newfileingcommand
if %choosenew%==2 goto newfileingwindow
if %choosenew%==0 goto newfileingexit
goto newfileing2
:newfileingexit
echo 确定要退出编辑?(y/n)
set exityn=n
set /p exityn=^>
if %exityn%==y if %line%==1 (goto nodone) else goto done
if %exityn%==n goto newfileing
goto newfileingexit
:nodone
echo 文件 %vbsname%.vbs 已退出编辑.
echo 最终文件:
echo 因为没有添加任何功能,所以文件不存在
echo 输入b返回主界面,其他输入退出
set nodonenone=0
set /p nodonenone=^>
if %nodonenone%==b goto home
admin wback
exit
:done
echo 文件 %vbsname%.vbs 已退出编辑.
echo 第 %line% 行,最终文件:
echo -----
type %vbsname%.vbs
echo -----
echo q退出, 其他输入返回主界面
set none=null
if %none%==q admin wback
goto home
:newfileingcommand
echo File "%vbsname%.vbs" / Line %line%
echo 输入c取消添加
echo 请输入要执行的cmd命令:
:newfileingcommandback
set addcommand=null
set /p addcommand=^>
if %addcommand%==null goto newfileingcommandback
if %addcommand%==c goto newfileing
if %addcommandtick%==0 echo set ws=createobject("wscript.shell")>>%vbsname%.vbs
set addcommandtick=1
echo ws.run"cmd.exe /c %addcommand%">>%vbsname.vbs%
set /a line=%line%+1
goto newfileing
:newfileingwindow
echo File "%vbsname%.vbs" / Line %line%
echo 输入c取消添加
echo 请输入要弹出的窗口内容:
:newfileingwindowback
set addwindow=null
set /p addwindow=^>ine%
echo 输入c取消添加
if %addwindow%==null goto newfileingwindowback
if %addwindow%==c goto newfileing
echo msgbox("%addwindow%")>>%vbsname%.vbs
set /a line=%line%+1
goto newfileing

