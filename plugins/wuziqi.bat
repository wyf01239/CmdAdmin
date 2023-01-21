@echo off
set showver=null
set nogame=null
:started
cls
echo 菜单:
echo s / 开始
echo v / 版本信息
echo e / 退出
if %showver%==true set showver=false&&echo 五子棋 v0.114514 by wyf9.2022.12.28
if %nogame%==true echo 没有检测到文件!
:started2
set startedchoose=null
set /p startedchoose=^>
if %startedchoose%==s goto startgame
if %startedchoose%==v goto showversion
if %startedchoose%==e admin wback
goto started
:showversion
set showver=true
goto started
:startgame
echo 即将开始
echo 棋盘:9x9
echo 第一次下子默认白子
echo 操作方法:如同excel,如要下子在第二行第三列,输入"c2"即可(a/b/c是列 1/2/3是行)
echo "无"表示没有
echo 输入1开始,0返回
:startgameyn
set startgameyn=none
set /p startgameyn=^>
if %startgameyn%==0 goto started
if %startgameyn%==1 goto startgamenext
goto startgameyn
:startgamenext
cls
echo Loading......
set now=Null
set alltick=0
set whitetick=0
set blacktick=0
set a1=无
set a2=无
set a3=无
set a4=无
set a5=无
set a6=无
set a7=无
set a8=无
set a9=无
set b1=无
set b2=无
set b3=无
set b4=无
set b5=无
set b6=无
set b7=无
set b8=无
set b9=无
set c1=无
set c2=无
set c3=无
set c4=无
set c5=无
set c6=无
set c7=无
set c8=无
set c9=无
set d1=无
set d2=无
set d3=无
set d4=无
set d5=无
set d6=无
set d7=无
set d8=无
set d9=无
set e1=无
set e2=无
set e3=无
set e4=无
set e5=无
set e6=无
set e7=无
set e8=无
set e9=无
set f1=无
set f2=无
set f3=无
set f4=无
set f5=无
set f6=无
set f7=无
set f8=无
set f9=无
set g1=无
set g2=无
set g3=无
set g4=无
set g5=无
set g6=无
set g7=无
set g8=无
set g9=无
set h1=无
set h2=无
set h3=无
set h4=无
set h5=无
set h6=无
set h7=无
set h8=无
set h9=无
set i1=无
set i2=无
set i3=无
set i4=无
set i5=无
set i6=无
set i7=无
set i8=无
set i9=无
:gamingwhite
set now=白
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│ %d1%│ %e1%│ %f1%│ %g1%│ %h1%│ %i1%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│ %d2%│ %e2%│ %f2%│ %g2%│ %h2%│ %i2%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│ %d3%│ %e3%│ %f3%│ %g3%│ %h3%│ %i3%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 4│ %a4%│ %b4%│ %c4%│ %d4%│ %e4%│ %f4%│ %g4%│ %h4%│ %i4%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 5│ %a5%│ %b5%│ %c5%│ %d5%│ %e5%│ %f5%│ %g5%│ %h5%│ %i5%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 6│ %a6%│ %b6%│ %c6%│ %d6%│ %e6%│ %f6%│ %g6%│ %h6%│ %i6%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 7│ %a7%│ %b7%│ %c7%│ %d7%│ %e7%│ %f7%│ %g7%│ %h7%│ %i7%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 8│ %a8%│ %b8%│ %c8%│ %d8%│ %e8%│ %f8%│ %g8%│ %h8%│ %i8%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 9│ %a9%│ %b9%│ %c9%│ %d9%│ %e9%│ %f9%│ %g9%│ %h9%│ %i9%│
echo  └───┴───┴───┴───┴───┴───┴───┴───┴───┘
goto gamingwhiteio
:gamingwhiteio
set choose=null
set /p choose=^>
if %choose%==null goto gamingwhiteio
if %choose%==a1 set a1=白&&set /a alltick=%alltick%+1set /a whitetick=%whitetick%+1&&goto gamingwhiteio2
goto gamingwhite
:gamingblack
set now=黑
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│ %d1%│ %e1%│ %f1%│ %g1%│ %h1%│ %i1%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│ %d2%│ %e2%│ %f2%│ %g2%│ %h2%│ %i2%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│ %d3%│ %e3%│ %f3%│ %g3%│ %h3%│ %i3%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 4│ %a4%│ %b4%│ %c4%│ %d4%│ %e4%│ %f4%│ %g4%│ %h4%│ %i4%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 5│ %a5%│ %b5%│ %c5%│ %d5%│ %e5%│ %f5%│ %g5%│ %h5%│ %i5%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 6│ %a6%│ %b6%│ %c6%│ %d6%│ %e6%│ %f6%│ %g6%│ %h6%│ %i6%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 7│ %a7%│ %b7%│ %c7%│ %d7%│ %e7%│ %f7%│ %g7%│ %h7%│ %i7%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 8│ %a8%│ %b8%│ %c8%│ %d8%│ %e8%│ %f8%│ %g8%│ %h8%│ %i8%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 9│ %a9%│ %b9%│ %c9%│ %d9%│ %e9%│ %f9%│ %g9%│ %h9%│ %i9%│
echo  └───┴───┴───┴───┴───┴───┴───┴───┴───┘
goto gamingwhite