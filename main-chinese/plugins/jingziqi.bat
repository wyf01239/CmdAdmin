@echo off
:started
color
cls
:startnocls
echo ---菜单---
echo s - 开始
echo e - 退出
echo v - 版本
:setting
set jzqcom=null
set /p jzqcom=^>
if %jzqcom%==s goto wnewgame
if %jzqcom%==e cls&&admin wback
if %jzqcom%==v goto version
goto started
:version
cls
echo 井字棋 v1.0 by wyf9 and xhc861.2022.12.19
goto startnocls
:wnewgame
color
echo 操作方式:
echo.
echo mode1:
echo 如同excel,如要下子在第二行第三列,输入"b3"即可(a/b/c是列 1/2/3是行)
echo "无"表示没有
echo 第一次下子默认白子
echo.
echo mode2:
echo 对应格子如下:
echo ┏━┳━┳━┓
echo ┃７┃８┃９┃
echo ┣━╋━╋━┫  
echo ┃４┃５┃６┃
echo ┣━╋━╋━┫  
echo ┃１┃２┃３┃
echo ┗━┻━┻━
echo 进入后随机确定先下
echo.
echo 注意:请勿输入空格, 会使程序崩溃!
echo.
echo 请选择模式:
echo 1.双人(两个人操控同一台电脑) by wyf9
echo 2.人机(和电脑玩)by xhc861
echo 0.返回主界面
echo 数字选择
:wnewgamechoose
set jzqnc=none
set /p jzqnc=^>
if %jzqnc%==1 goto mode1start
if %jzqnc%==2 goto mode2start
if %jzqnc%==0 goto started
goto wnewgamechoose
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
rem if not %a1%==无 if not %a3%==无 if not %b2%==无 if not %c1%==无 if not %c3%==无 goto nowin
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
rem if not %a1%==无 if not %a3%==无 if not %b2%==无 if not %c1%==无 if not %c3%==无 goto nowin
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
if %wzqchoose%==r goto wnewgame
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
if %wzqchoose%==r goto wnewgame
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
if %wzqchoose%==r goto wnewgame
if %wzqchoose%==q goto started
goto nowin2

:mode2start
@echo off
rem mode con lines=12 cols=37
setlocal enabledelayedexpansion
for /l %%s in (1,1,7) do set SP=　!sp!

goto :start
argument是否显示为提示棋盘的指针
fate下子总计数
special是否进行总计数
Turn更换选手指针
sub_flag选手指针
input输入
record下子记录
remain剩下的位置
winflag胜利标记

::标签说明
start进入
newGame新游戏
begin循环开始
Machine电脑下子
T_flash下子棋盘更新

:start
::设置棋盘棋子
set chs1=●
set chs0=×
set L7=┏━┳━┳━┓
set L6=┃７┃８┃９┃
set L5=┣━╋━╋━┫  
set L4=┃４┃５┃６┃
set L3=┣━╋━╋━┫  
set L2=┃１┃２┃３┃
set L1=┗━┻━┻━

::============================================================
::开始
:newGame
color 72
setlocal
set argument=1
set/a whoFirst=%random%%%2
set "remain= 1 2 3 4 5 6 7 8 9"
::----------------------------------------
:begin
cls
call :show
::调用胜负判断
if "%fate%" geq "5" call :judgeVic
if defined winflag goto :end
if "%fate%" geq "9" goto :end
::计算下子数与判断下子方
if not defined special (
　set/a fate+=1,Turn="(whoFirst+fate+1)%%2"
) else set special=
if %Turn% equ 0 goto :Machine

::下子
set sub_flag=%Turn%
set input=
set/p input=%SP:~3%等待您的选择：
if not defined input goto :judgeIn
if %input% lss 1 goto :judgeIn
if %input% gtr 9 goto :judgeIn
if defined _%input% (
:judgeIn
　call :err
　set special=1
　goto :begin
)
goto :T_flash

::电脑下子
:Machine
set sub_flag=%Turn%
if %fate% gtr 1 call :PCI
::电脑随机下子
:PCR
set Rc=
if defined bN (set/a Rc=%random%%%bN) else set/a Rc="%random%%%(9-fate)"
if not defined Best set Best=%remain: =%
set input=!Best:~%Rc%,1!
set/p=%SP:~3%电脑正在思考 <nul
set "cir=/-\|"
set CN=&set cirN=
:lp
if "%cirN%" geq "4" set/a cirN=0,CN+=1
set/p=!cir:~%cirN%,1!<nul
set/a cirN+=1
ping -n 1 127.1>nul
if "%CN%" leq "3" goto :lp

::下子后棋盘更新
:T_flash
set _%input%=%sub_flag%
set record=%record%%input%
set remain=!remain:%input%=!
set/a m=(input-1)/3+1,n=(input-1)%%3+1
set/a m2=m*2,n2=n*2,ln=n2-1
set LL=!L%m2%!
set/a pie="(sub_flag+whoFirst)%%2"
set L%m2%=!LL:~,%ln%!!chs%pie%!!LL:~%n2%!
goto :begin
::----------------------------------------

::结果显示
:end
set player1=你&set color1=color 3a
set player0=电脑&set color0=color 7e
if defined winflag (echo.%SP:~1%!player%sub_flag%!赢了。&!color%sub_flag%!) else echo.%SP%平局。
echo %SP%输入n继续,其他输入返回主界面.
endlocal
set none=0
set /p none=
if %none%==0 goto started
if %none%==n goto wnewgame
goto started
rem goto :newGame
::============================================================

::调用标签
::显示棋盘
:show
echo+
for /l %%i in (7 -1 1) do echo %SP:~2%!L%%i!
if defined argument (
　set argument=
　set L=%L2:~,1%
　set L2=!L!　!L!　!L!　!L!
　set L4=!L2!
　set L6=!L2!
)
goto :eof

::错误
:err
echo 输入错误，或该位置上已有棋子。请重新输入……
ping -n 2 127.1>nul
goto :eof

::结束判断，胜负平
::最笨的列举法
:judgeVic
for %%i in (123 456 789 147 258 369 159 357) do (
　set had=%%i
　set had=!had:~,1! !had:~1,1! !had:~-1!
　for /f "tokens=1-3" %%j in ("!had!") do (
　　if "!_%%j!!_%%k!!_%%l!"=="%sub_flag%%sub_flag%%sub_flag%" set winflag=%sub_flag%
　)
)
goto :eof

::电脑智能下子
:PCI
::echo Remain%remain%
set/a _subFlag=(sub_flag+1)%%2
set bN=
set ept=&set Epx=
set Best=
set input=
set d_3flag=
for %%c in (%remain%) do (
　set d1=&set d2=&set d3=
　set d_1=&set d_2=&set d_3=
　for %%i in ("1 2 3" "4 5 6" "7 8 9" "1 4 7" "2 5 8" "3 6 9" "1 5 9" "3 5 7") do (
　　set isFlag=
　　set noFlag=&set _noFlag=
　　set/a baseN=1,_baseN=1
　　for %%j in (%%~i) do (
　　　if "%%j"=="%%c" set isFlag=1
　　　if "!_%%j!"=="%_subFlag%" set/a noFlag=1,_baseN+=1
　　　if "!_%%j!"=="%sub_flag%" set/a baseN+=1,_noFlag=1
　　)
　　if defined isFlag (
　　　if not defined noFlag set/a d!baseN!+=1
　　　if not defined _noFlag set/a d_!_baseN!+=1
　　)
　　if defined d3 set Best=%%c&set bN=1&goto :eof
　　if defined d_3 set d_3flag=%%c
　)
　set/a ept=baseN+d!baseN!+_baseN+d_!_baseN!
　if "!Epx!" equ "!ept!" set Best=%%c!Best!&set/a bN+=1
　if "!Epx!" lss "!ept!" set Epx=!ept!&set Best=%%c&set bN=1
)
if defined d_3flag set Best=%d_3flag%&set bN=1
goto :eof