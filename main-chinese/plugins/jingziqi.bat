@echo off
:started
cls
:startnocls
echo ---菜单---
echo s - 开始
echo e - 退出
echo v - 版本
:setting
set jzqcom=null
set /p jzqcom=^>
if %jzqcom%==s goto newgame
if %jzqcom%==e cls&&admin wback
if %jzqcom%==v goto version
goto started
:version
cls
echo 井字棋 v1.0 by wyf9 and xhc861.2022.12.19
goto startnocls
:newgame
echo notice:
echo 操作方式:如同excel,如要下子在第二行第三列,输入"b3"即可(a/b/c是列 1/2/3是行)
echo "无"表示没有
echo 第一次下子默认白子
echo 请勿输入空格，会使程序崩溃!
echo 请选择模式:
echo 1.双人(两个人操控同一台电脑) by wyf9
echo 2.人机(未开放 崩溃警告)by xhc861
echo 0.返回主界面
echo 数字选择
:newgamechoose
set /p jzqnc=^>
if %jzqnc%==1 goto mode1start
if %jzqnc%==2 goto mode2
if %jzqnc%==0 goto started
goto newgamechoose
:mode1start
echo Loading...
set jzqdown=none
set a1=无
set a2=无
set a3=无
set b1=无
set b2=无
set b3=无
set c1=无
set c2=无
set c3=无
set alltick=0
set whitetick=0
set blacktick=0
:mode1white
set jzqnow=w
cls
echo 模式:双人 / 现在轮到:白子 
echo 已下棋子:%alltick% / 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C
echo  ┌───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│
echo  ├───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│
echo  ├───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│
echo  └───┴───┴───┘
set jzqdown=null
set /p jzqdown=^>
:mode1whiteio
if %jzqdown%==null goto mode1white
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1black
if %jzqdown%==a1 (if %a1%==无 set a1=白&&goto mode1whiteio2)
if %jzqdown%==a2 (if %a2%==无 set a2=白&&goto mode1whiteio2)
if %jzqdown%==a3 (if %a3%==无 set a3=白&&goto mode1whiteio2)
if %jzqdown%==b1 (if %b1%==无 set b1=白&&goto mode1whiteio2)
if %jzqdown%==b2 (if %b2%==无 set b2=白&&goto mode1whiteio2)
if %jzqdown%==b3 (if %b3%==无 set b3=白&&goto mode1whiteio2)
if %jzqdown%==c1 (if %c1%==无 set c1=白&&goto mode1whiteio2)
if %jzqdown%==c2 (if %c2%==无 set c2=白&&goto mode1whiteio2)
if %jzqdown%==c3 (if %c3%==无 set c3=白&&goto mode1whiteio2)
goto mode1white
:mode1whiteio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
if %a1%==白 if %a2%==白 if %a3%==白 goto mode1whitewin
if %b1%==白 if %b2%==白 if %b3%==白 goto mode1whitewin
if %c1%==白 if %c2%==白 if %c3%==白 goto mode1whitewin
if %a1%==白 if %b1%==白 if %c1%==白 goto mode1whitewin
if %a2%==白 if %b2%==白 if %c2%==白 goto mode1whitewin
if %a3%==白 if %b3%==白 if %c3%==白 goto mode1whitewin
if %a1%==白 if %b2%==白 if %c3%==白 goto mode1whitewin
if %a3%==白 if %b2%==白 if %c1%==白 goto mode1whitewin
if not %a1%==无 if not %a3%==无 if not %b2%==无 if not %c1%==无 if not %c3%==无 goto nowin
if %alltick%==8 goto nowin
goto mode1black
:mode1black
set jzqnow=b
cls
echo 模式:双人 / 现在轮到:黑子 
echo 已下棋子:%alltick% / 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C
echo  ┌───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│
echo  ├───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│
echo  ├───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│
echo  └───┴───┴───┘
set jzqdown=null
set /p jzqdown=^>
:mode1blackio
if %jzqdown%==null goto mode1black
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1white
if %jzqdown%==a1 if %a1%==无 set a1=黑&&goto mode1blackio2
if %jzqdown%==a2 if %a2%==无 set a2=黑&&goto mode1blackio2
if %jzqdown%==a3 if %a3%==无 set a3=黑&&goto mode1blackio2
if %jzqdown%==b1 if %b1%==无 set b1=黑&&goto mode1blackio2
if %jzqdown%==b2 if %b2%==无 set b2=黑&&goto mode1blackio2
if %jzqdown%==b3 if %b3%==无 set b3=黑&&goto mode1blackio2
if %jzqdown%==c1 if %c1%==无 set c1=黑&&goto mode1blackio2
if %jzqdown%==c2 if %c2%==无 set c2=黑&&goto mode1blackio2
if %jzqdown%==c3 if %c3%==无 set c3=黑&&goto mode1blackio2
goto mode1black
:mode1blackio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
if %a1%==黑 if %a2%==黑 if %a3%==黑 goto mode1blackwin
if %b1%==黑 if %b2%==黑 if %b3%==黑 goto mode1blackwin
if %c1%==黑 if %c2%==黑 if %c3%==黑 goto mode1blackwin
if %a1%==黑 if %b1%==黑 if %c1%==黑 goto mode1blackwin
if %a2%==黑 if %b2%==黑 if %c2%==黑 goto mode1blackwin
if %a3%==黑 if %b3%==黑 if %c3%==黑 goto mode1blackwin
if %a1%==黑 if %b2%==黑 if %c3%==黑 goto mode1blackwin
if %a3%==黑 if %b2%==黑 if %c1%==黑 goto mode1blackwin
if not %a1%==无 if not %a3%==无 if not %b2%==无 if not %c1%==无 if not %c3%==无 goto nowin
if %alltick%==8 goto nowin
goto mode1white
:mode1whitewin
cls
echo 模式:双人 / 现在轮到:Null 
echo 已下棋子:%alltick% / 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C
echo  ┌───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│
echo  ├───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│
echo  ├───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│
echo  └───┴───┴───┘
echo.
echo 白方赢了!
echo r重新开始/q返回主界面
:mode1whitewin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto mode1whitewin2
:mode1blackwin
cls
echo 模式:双人 / 现在轮到:Null 
echo 已下棋子:%alltick% / 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C
echo  ┌───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│
echo  ├───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│
echo  ├───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│
echo  └───┴───┴───┘
echo.
echo 黑方赢了!
echo r重新开始/q返回主界面
:mode1blackwin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto mode1blackwin2
:nowin
cls
echo 模式:双人 / 现在轮到:Null 
echo 已下棋子:%alltick% / 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C
echo  ┌───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│
echo  ├───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│
echo  ├───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│
echo  └───┴───┴───┘
echo.
echo 平局!
echo r重新开始/q返回主界面
:nowin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto nowin2

:mode2start
echo 1145141919810
copy 1 1
exit