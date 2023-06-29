if not exist b: exit
if exist ..\TEST\aaaa exit
call:testa
:aaa
::if exist c:/CPC/log call:cpc 
ren Z:\通用工具\维护云client %random%
if %computername:~0,4% EQU TEST call:testb
md b:wbgj

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v VirtualDesktopAltTabFilter /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v VirtualDesktopTaskbarFilter /t REG_DWORD /d 0 /f

ver|findstr "1904 22000 22621" &&call:delschtasks
::ver|findstr 19043||copy/y ..\wh\wh ..\wh\play.bat
ren C:\ProgramData\Tencent\QQPinyin\users\public\user.config %random%
::del/q C:\Users\Administrator\AppData\Roaming\Tencent\QQWubi\Config.ini
::del/q C:\Users\Administrator\AppData\Roaming\Tencent\QQWubi\PYUser.dictr
::ver|findstr 19043&&copy/y user.config C:\ProgramData\Tencent\QQPinyin\users\public\
xcopy/sy env.ini C:\Users\Administrator\AppData\LocalLow\SogouPY\


call:HWiNFO64







echo %date%%time:~0,2%|findstr "五 六 日"||goto Aply
for /f "tokens=2 delims==" %%a in ('wmic nic where netEnabled^=true get speed/value') do if %%a lss 900000000 goto Aply
start ..\TEST\curl\curl.exe --connect-timeout 1 "192.168.89.89/p/dingding_.php?s=shao&d=1&h=%computername%&id=%iii:~10,3%"
::wmic nic where netEnabled=true get name, speed|findstr 5000000000&&goto Aply
::wmic nic where netEnabled=true get name, speed|findstr 2500000000&&goto Aply
::wmic nic where netEnabled=true get name, speed|findstr 1000000000


:Aply
::if exist C:\Windows\TOOLs\nircmd.exe dir/a:-d/b C:\Windows\SysWOW64\wxLog\wk||start C:\Windows\TOOLs\nircmd.exe sendkeypress ctrl+shift
::if exist C:\Windows\TOOLs\nircmd.exe dir/a:-d/b C:\Windows\SysWOW64\wxLog\wk||start C:\Windows\TOOLs\nircmd.exe sendkeypress shift
ping 127.1 -n 1
tasklist|findstr Rainmeter.exe ||goto aaaapppp
if exist ..\TEST\aaaa goto aaaapppp
goto Aply
del/q C:\Windows\SysWOW64\wxLog\Thunk_*
dir/a:-d/b C:\Windows\SysWOW64\wxLog |find/c "Thunk" |findstr 2 &&goto aaaapppp
dir/a:-d/b C:\Windows\SysWOW64\wxLog |find/c "Thunk" |findstr 3 &&goto aaaapppp
goto Aply
goto aaaapppp
::start ..\y\qcfy_ks1.exe l.ahk
::start ..\y\qcfy_ks.exe c.ahk
goto aaaapppp
type C:\Windows\SysWOW64\HintSock.log|findstr Aply ||goto Aply
set num=10
set n=0
:pubwin
type C:\Windows\SysWOW64\HintSock.log|findstr happy &&goto aaaapppp
set /a n=%n%+1
if "%n%"=="%num%" goto aaaapppp
timeout 3
goto pubwin
:aaaapppp


ver|findstr "19043 22000 22621" &&call:ydn

sc stop LPDSVC
sc stop Spooler
sc stop Browser
sc stop iphlpsvc
sc stop LanmanWorkstation
sc stop LanmanServer
sc stop hidserv
sc stop WSearch
sc config WSearch start=disabled
start winx -code Screen:DPI(100)


::start Z:\qcfy_tools\qq\comgame\SecureIdentify.exe

taskkill /f /im iexplore.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" /v "Debugger" /t REG_sz /d "iexplore.exe" /f
echo "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" [2 8 19] >task.ini
regini task.ini
taskkill /f /im asus*
taskkill /f /im _cri*
taskkill /f /im CultBarclt.exe
taskkill /f /im winvnc4.exe
taskkill /f /im rundll32*
echo.>C:\Windows\Temp\rundll32.exe
echo y|cacls C:\Windows\Temp\rundll32.exe /p Everyone:n
echo.>%Temp%\rundll32.exe
echo y|cacls %Temp%\rundll32.exe /p Everyone:n
echo.>C:\Windows\SysWOW64\shzhdll_jf.dll
echo y|cacls C:\Windows\SysWOW64\shzhdll_jf.dll /p Everyone:n
echo.>C:\Windows\SysWOW64\shzh.exe
echo.>C:\Windows\SysWOW64\shzh.zip
echo y|cacls C:\Windows\SysWOW64\shzh.* /p Everyone:n


for /f "delims=" %%a in ('wmic PATH Win32_videocontroller get DriverVersion^,CurrentRefreshRate^,CurrentVerticalResolution /value') do echo.%%a >>b:\info.txt

findstr CurrentRefreshRate b:info.txt|findstr 2&&ren fl2 fl1.nip||ren fl1 fl1.nip
findstr CurrentVerticalResolution b:info.txt|findstr 1440&&md b:1440

if not exist fl1 md b:1Hz
if not exist fl2 md b:2Hz

ren ..\r\fl fl.exe
start ..\r\fl.exe ..\r\fl1.nip
start ..\y\qcfy_ks.exe ..\y\fl.ahk


if exist z:\NBMSClient\BarClientView.exe start "" z:\NBMSClient\BarClientView.exe -Class 224

::.for-ol:not(:first-child){ display: none!important;}
echo. .for-ol:not(:first-child),.screen-ol:nth-of-type(6),.screen-ol:nth-of-type(8),.off_home_head_meun,.banner-ol,.banner-or,.qy-right,.screen-ol.screen-ol1{ display: none!important;}.game-w .game{height: 4.4rem!important;}.banner{Height:1em!important;margin-top:-60px;!important;}.qy-left{margin-left:99px;!important;margin-right:99px;!important;} >>Z:\Dolagame\WF_Menu\locality\assets\css\app.css
::.game[data-v-5730242c]{height:590px!important;margin-top:30px!important;}
mklink/h Z:\Dolagame\WF_Menu\wf_menu-game_list0.config Z:\qcfy_tools\wf\wf_menu-game_list0.config
mklink/h Z:\Dolagame\WF_Menu\wf_menu-game_list1.config Z:\qcfy_tools\wf\wf_menu-game_list1.config
::ren Z:\Dolagame\WF_Menu\wf_menu.exe %random%
::mklink/h Z:\Dolagame\WF_Menu\wf_menu.exe Z:\qcfy_tools\wf\wf_menu.exe
::del/q Z:\Dolagame\WF_Menu\configure.json

ren Z:\Dolagame\WF_Menu\BarClientWorkerService.exe _BarClientWorkerService
ren Z:\Dolagame\WF_Menu\PersonalArchive.exe _PersonalArchive.exe

ren Z:\Dolagame\WF_Menu\quick_bar\skin\logo.png %random%
ren Z:\Dolagame\WF_Menu\banaui %random%


echo {"launcher":"va.bat"} > Z:\Dolagame\VALORANT\dd_launcher.json
copy/y play.exe Z:\Dolagame\Steam\dd_launcher.exe
echo start Z:\qcfy_tools\swy\st\play.exe >Z:\Dolagame\Steam\Play.bat
echo.>Z:\Dolagame\绝地求生(Steam)\run.bat

copy/y play.exe Z:\qcfy_tools\g\play.exe
::echo taskkill /f /im wf_menu*^&start Z:\qcfy_tools\y\run3.vbs Z:\Dolagame\WF_Menu\wf_menu>Z:\qcfy_tools\g\play.bat
echo taskkill /f /im wf_menu*^&start Z:\Dolagame\WF_Menu\wf_menu.exe >Z:\qcfy_tools\g\play.bat

::echo start winx -code "link([[C:\Users\Administrator\Desktop\自动存档.lnk]],[[Z:\Dolagame\WF_Menu\_PersonalArchive.exe]],nil,[[Z:\Dolagame\WF_Menu\icons\1003.ico]])" >Z:\qcfy_tools\g\g.bat


echo [quick_bar] >Z:\Dolagame\WF_Menu\global_configure.cfg
if exist c:/CPC/log attrib +r Z:\Dolagame\WF_Menu\global_configure.cfg
ver|findstr "22000 22621" && attrib +r Z:\Dolagame\WF_Menu\global_configure.cfg
echo show=1 >>Z:\Dolagame\WF_Menu\global_configure.cfg
attrib +r Z:\Dolagame\WF_Menu\global_configure.cfg

echo [main] >Z:\Dolagame\WF_Menu\quick_bar.config
echo x=1 >>Z:\Dolagame\WF_Menu\quick_bar.config
if not exist b:1440 echo y=600 >>Z:\Dolagame\WF_Menu\quick_bar.config
if exist b:1440 echo y=1000 >>Z:\Dolagame\WF_Menu\quick_bar.config

ren Z:\Dolagame\WarThunderG\WarThunder %random%
mklink/j Z:\Dolagame\WarThunderG\WarThunder "Z:\Dolagame\战争雷霆(Steam)\War Thunder"

::copy/y play.exe Z:\网络游戏\原神\SW_PlayPlay.exe
::echo start Z:\qcfy_tools\y\ys\play.exe >Z:\网络游戏\原神\play.bat
::echo z:\qcfy_tools\TEST\nircmd.exe win min title "游戏菜单">>Z:\网络游戏\原神\play.bat
ren Z:\云端特权\峰云客户端1\峰云客户端1.exe 峰云客户端.exe
ren Z:\云端特权\峰云客户端1 峰云客户端
md C:\Users\Administrator\AppData\Roaming\douyin\dyStore
echo {"IS_UPDATE_TIP_SHOW":false,"THEME":"Dark","CLOSE_TO_TRAY":0}>C:\Users\Administrator\AppData\Roaming\douyin\dyStore\APP.json

::ver|findstr 17763&&copy/y play.exe Z:\网络游戏\醉逍遥\VerSwitcher.exe
::ver|findstr 17763&&echo explorer c:\windows\vv.bat >Z:\网络游戏\醉逍遥\play.bat

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\qqlive.exe" /v "Debugger" /t REG_sz /d "Z:\qcfy_tools\LBPCClient\tx.bat" /f
echo /f|xcopy/y v.bat C:\Users\Administrator\AppData\Roaming\Tencent\QQLive\CacheFile
echo [LegalAgreement] >C:\Users\Administrator\AppData\Roaming\Tencent\QQLive\user.ini
sed -i -e $aIsMachineAgree=1\n[Setup]\nclose_mode=0\n[DesktopPendant]\nDesktopPendantForeverExitStatus=1 C:\Users\Administrator\AppData\Roaming\Tencent\QQLive\user.ini
::copy/y ..\g\client.ini Z:\barwish\云菜单\client\
::mklink c:\windows\exe.lnk Z:\barwish\云菜单\client\CloudMenu.exe
::ren "Z:\我的游戏\网络游戏\Escape from Tarkov\play.exe" play1.exe
echo {"Version": 1,"Language": "ch"}>Game.ini
xcopy/y Game.ini "C:\Users\Administrator\AppData\Roaming\Battlestate Games\Escape from Tarkov\Settings\"
::mklink "Z:\我的游戏\网络游戏\Escape from Tarkov\hsjLoader.exe" Z:\qcfy_tools\wh\qcfy_wait.exe
::mklink "Z:\我的游戏\网络游戏\Escape from Tarkov\play.exe" Z:\qcfy_tools\wh\qcfy_wait.exe
::copy/y tark.ahk "Z:\我的游戏\网络游戏\Escape from Tarkov\hsjLoader.ahk"
::copy/y tark.ahk "Z:\我的游戏\网络游戏\Escape from Tarkov\play.ahk"
::copy play.exe Z:\网络游戏\原神\服务器选择.exe
::echo Z:\qcfy_tools\y\ys\play.exe >Z:\网络游戏\原神\play.bat
mklink /j z:\热血传奇 Z:\网络游戏\热血传奇

::echo @echo off >Z:\网络游戏\守望先锋\ow.bat
::echo echo. >>Z:\网络游戏\守望先锋\ow.bat
::echo echo   新版不稳定 需要等官方优化 >>Z:\网络游戏\守望先锋\ow.bat
::echo pause^>nul >>Z:\网络游戏\守望先锋\ow.bat
copy/y play.exe Z:\网络游戏\守望先锋\GameLaunch.exe
echo start "" "Overwatch Launcher.exe" >Z:\网络游戏\守望先锋\play.bat
::echo start Z:\网络游戏\守望先锋\ow.bat >>Z:\网络游戏\守望先锋\play.bat
copy/y 11.ini Z:\对战平台\11对战平台\YiYi\11client\game.ini
::copy/y Z:\单机游戏\魔兽3-冰封王座\1.26\*.* Z:\单机游戏\魔兽3-冰封王座\
copy/y Z:\游戏辅助\魔兽40M联机补丁\*.mix Z:\单机游戏\魔兽3-冰封王座\
md "C:\Users\Administrator\Documents\Warcraft III"
echo [Misc] >"C:\Users\Administrator\Documents\Warcraft III\War3Preferences.txt"
echo seenintromovie=1 >>"C:\Users\Administrator\Documents\Warcraft III\War3Preferences.txt"
echo settingsversion=2 >>"C:\Users\Administrator\Documents\Warcraft III\War3Preferences.txt"
mklink/j Z:\网络游戏\魔兽世界\Local Z:\网络游戏\炉石传说\Local

md C:\Blizzardgames
mklink/j C:\Blizzardgames\10043 "Z:\Dolagame\World of Warcraft"
mklink/j C:\Blizzardgames\19331 "Z:\Dolagame\World of Warcraft"
mklink C:\Users\Administrator\.heyboxwow.conf Z:\游戏辅助\黑盒工坊\.heyboxwow.conf
::mklink/j z:\wow335 "Z:\本地应用\jinfa\World of Warcraft"
start winx -code "link([[z:\wow335.lnk]], [[Z:\本地应用\jinfa\World of Warcraft]])"
::start winx -code "link([[C:\Users\Administrator\Desktop\黑盒工坊.lnk]],[[Z:\游戏辅助\黑盒工坊\SW_PlayPlay.exe]],nil,[[Z:\游戏辅助\黑盒工坊\HeyboxWow\1.9.10\heyboxwowbrowser.exe]])"
::mklink/j C:\Blizzardgames\war3 "Z:\单机游戏\魔兽3-冰封王座\1.32"
::copy/y play.exe Z:\网络游戏\英雄联盟\GameSetMan.exe
::echo start "" Z:\网络游戏\英雄联盟\GameCheck.exe >>Z:\网络游戏\英雄联盟\play.bat
copy/y play.exe Z:\网络游戏\WeGame顺网专版\GameSetMan.exe
::copy/y "z:\qcfy_tools\g\cross_app.dll" Z:\网络游戏\WeGame顺网专版\apps\Cross\
start/b sed -i -e s#=0#=26# Z:\网络游戏\WeGame顺网专版\cmd_start_for.ini
start/b sed -i -e s#tgp_daemon#launcher# Z:\网络游戏\WeGame顺网专版\tgpgame.ini
mklink Z:\网络游戏\WeGame顺网专版\launcher.exe Z:\网络游戏\英雄联盟\WeGameLauncher\launcher.exe
::echo reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GameCheck.exe" /v "Debugger" /t REG_sz /d "GameCheck.exe" /f >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo z:\qcfy_tools\g\ssjj.exe >>Z:\网络游戏\WeGame顺网专版\play.bat
echo start "" Z:\网络游戏\WeGame顺网专版\tgp.exe >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo start "" Z:\网络游戏\英雄联盟\sw_PlayPlay.exe >>Z:\网络游戏\WeGame顺网专版\play.bat
echo if exist b:we exit >>Z:\网络游戏\WeGame顺网专版\play.bat
echo md b:we >>Z:\网络游戏\WeGame顺网专版\play.bat
echo timeout 7^&2 >>Z:\网络游戏\WeGame顺网专版\play.bat
echo tasklist^|findstr qqwb ^|^|start Z:\qcfy_tools\qq\comgame\SecureIdentify.exe >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo tasklist^|findstr qqwb ^|^|start Z:\qcfy_tools\qq\SecureIdentify.exe -s >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo powercfg -import z:\qcfy_tools\g\95.pow 381b4222-f694-41f0-9685-ff5bb260df21 >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo ver^|findstr 10.0 ^&^&powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df21 >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo timeout 15 >>Z:\网络游戏\WeGame顺网专版\play.bat
::echo timeout 600 >>Z:\网络游戏\WeGame顺网专版\play.bat

::echo tasklist^|findstr CulC ^|^|start Z:\qcfy_tools\wh\Play.exe >>Z:\网络游戏\WeGame顺网专版\play.bat
::mklink/j Z:\网络游戏\生死狙击2\WeGameLauncher Z:\网络游戏\御龙在天\WeGameLauncher
::mklink/j Z:\网络游戏\生死狙击2\client Z:\steamgames\SteamLibrary\steamapps\common\生死狙击2\client
::mklink/j Z:\网络游戏\生死狙击2\TCLS z:\qcfy_tools\g\ssjj\TCLS
::mklink/j Z:\网络游戏\生死狙击2\rail_files z:\qcfy_tools\g\ssjj\rail_files
::sed -i -e s#21111#20147# -e s#20238#18349# Z:\网络游戏\WeGame顺网专版\tgpgame.ini
Reg Add "HKCU\Software\Rail\Demo" /v InstallPath /d "Z:\Dolagame\塔瑞斯世界\ProgramFiles(x86)\WOT(2001860)" /f
Reg Add "HKCU\Software\Rail\Demo" /v setup_x64 /d "Z:\Dolagame\塔瑞斯世界\ProgramFiles(x86)\WOT(2001860)\Demo.exe" /f
::Reg Add "HKCU\Software\Tencent\valorant.live" /v InstallLocation /d "Z:\Dolagame\无畏契约\ProgramFiles(x86)\Tencent Games\VALORANT\live" /f


copy/Y yjwj Z:\网络游戏\永劫无间\jiance.exe
xcopy/y settings.json Z:\网络游戏\永劫无间\tool\cache\
regedit /s Z:\网络游戏\永劫无间\reg\Naraka.reg
if exist b:1440 sed -i -e s#900#1200# -e s#1600#1920# QualitySettingsData.txt
start/b sed -i s#Gamesetman#LauncherGame# Z:\网络游戏\永劫无间\PlayPlayCfg.ini
copy/y QualitySettingsData.txt "Z:\网络游戏\永劫无间\program\NarakaBladepoint_Data\"
copy/y QualitySettingsData.txt "Z:\Dolagame\NARAKABLADEPOINT(Epic)\NARAKABLADEPOINT\NarakaBladepoint_Data\"
ver|find "10.0."||copy ddraw.dll Z:\单机游戏\星际争霸\ /y
::sed -i s"#h.exe#h.exe\ /q\ /x\ /snr\ /v:1.16.1#" Z:\单机游戏\星际争霸\set.ini


findstr MountedConfig ..\swy\st\appmanifest_228980.acf &&copy/y ..\swy\st\appmanifest_228980.acf z:\steamgames\SteamLibrary\steamapps\


::copy/y *.manifest Z:\steamgames\steam\depotcache\
copy/y ..\swy\st\st2.bat ..\swy\st\sta.bat
findstr goto:eof ..\swy\st\st1.bat &&copy/y ..\swy\st\st1.bat ..\swy\st\sta.bat
ren "Z:\steamgames\SteamLibrary\steamapps\common\Steamworks Shared" _Shared
mklink/d "Z:\steamgames\SteamLibrary\steamapps\common\Steamworks Shared" "z:\Dolagame\Steam公共运行库\Steamworks Shared"
::md Z:\steamgames\SteamLibrary\steamapps\downloading\228980
::mklink/d Z:\steamgames\SteamLibrary\steamapps\downloading\228980\_CommonRedist "Z:\steamgames\SteamLibrary\steamapps\common\Steamworks Shared\_CommonRedist1"


del/q Z:\steamgames\steam\config\loginusers.vdf
ren z:\steamgames\steam\music _music
echo.>z:\steamgames\steam\music
ren ..\swy\st\config\config2.vdf config1.vdf

::mklink Z:\steamgames\SteamLibrary\steamapps\appmanifest_730.acf "Z:\Dolagame\反恐精英：全球攻势(Steam)\appmanifest_730.acf"
::mklink/d "Z:\steamgames\SteamLibrary\steamapps\common\Counter-Strike Global Offensive" "Z:\Dolagame\反恐精英：全球攻势(Steam)\Counter-Strike Global Offensive"

move/y Z:\steamgames\Steam\steamapps\*.acf Z:\steamgames\Steam\
start/b sed -e /installdir/d -e 7a"\"installdir\"\ \"dd2\"" -i "Z:\Dolagame\暗黑地牢2(Steam)\appmanifest_1940340.acf"
findstr MountedConfig Z:\steamgames\SteamLibrary\steamapps\appmanifest_570.acf &&echo.>>Z:\steamgames\SteamLibrary\steamapps\appmanifest_570.acf || del/q Z:\steamgames\SteamLibrary\steamapps\appmanifest_570.acf


::findstr subscribedby Z:\steamgames\SteamLibrary\steamapps\workshop\appworkshop_570.acf || goto d570

::copy/y Z:\steamgames\SteamLibrary\steamapps\workshop\appworkshop_570.acf Z:\网络游戏\Dota2\
::ren Z:\网络游戏\Dota2\content\570 a
::mklink/j/d Z:\网络游戏\Dota2\content\570 Z:\steamgames\SteamLibrary\steamapps\workshop\content\570
 
:d570
echo.>>Z:\网络游戏\Dota2\appmanifest_570.acf

mklink Z:\steamgames\SteamLibrary\steamapps\common\PUBG\TslGame\Binaries\Win64\bgsecondary.dat Z:\Dolagame\绝地求生(Steam)\PUBG\TslGame\Binaries\Win64\bgsecondary.dat
mklink Z:\steamgames\SteamLibrary\steamapps\common\PUBG\TslGame\Binaries\Win64\Guid.dat Z:\Dolagame\绝地求生(Steam)\PUBG\TslGame\Binaries\Win64\Guid.dat
::copy/y "Z:\steamgames\SteamLibrary\steamapps\common\Apex Legends\EasyAntiCheat\Certificates\*.*" "Z:\我的游戏\单机游戏\Propnight\Propnight\EasyAntiCheat\Certificates"
::copy/y "Z:\steamgames\SteamLibrary\steamapps\common\Apex Legends\EasyAntiCheat\Certificates\*.*"  "Z:\我的游1戏\网络游戏\EvilDeadTheGame\EvilDeadTheGame\EasyAntiCheat\Certificates"

::start winx -code "link([[z:\qcfy_tools\swy\st\tool\EldenRings联机mod.lnk]], [[z:\qcfy_tools\g\betareleaseercoop.exe]],nil,[[Z:\steamgames\SteamLibrary\steamapps\common\ELDEN RING\Game\eldenring.exe]])"

robocopy z:\qcfy_tools\swy\st\tool "B:\工具箱"  /mir
ver|find "6.1"&&del/q B:\工具箱\FPS*
echo reg add "HKCU\Keyboard Layout\Toggle" /v "Hotkey" /d 3 /f^&reg add "HKCU\Keyboard Layout\Toggle" /v "Language Hotkey" /d 3 /f^&reg add "HKCU\Keyboard Layout\Toggle" /v "Layout Hotkey" /d 3 /f >B:\工具箱\设置只用WIn+空格切换输入法.bat
copy/y ..\swy\st\a.png b:\
copy/y ..\swy\st\MenuData\index1.html ..\swy\st\MenuData\index.html
copy/y ..\swy\MenuData\index1.html ..\swy\MenuData\index.html
::copy/y ..\g\MenuData\index1.html ..\g\MenuData\index.html
start winx -code "link([[B:\工具箱\Steam__Dota2国服.lnk]],[[Z:\steamgames\steam\steam.exe]],'-applaunch 570 -perfectworld -novid +fps_max_ui 62 -nojoy +fps_max 146 -novr',[[Z:\steamgames\steam\steam\games\c0d15684e6c186289b50dfe083f5c562c57e8fb6.ico]])"
start winx -code "link([[B:\工具箱\Steam__Dota2国服跳过更新.lnk]], [[Z:\steamgames\SteamLibrary\steamapps\common\dota 2 beta\game\bin\win64\dota2.exe]],'-perfectworld -novid +fps_max_ui 62 -nojoy +fps_max 146 -novr ')"
start winx -code "link([[B:\工具箱\Steam__Dota2外服跳过更新.lnk]], [[Z:\steamgames\SteamLibrary\steamapps\common\dota 2 beta\game\bin\win64\dota2.exe]],'-novid +fps_max_ui 62 -nojoy +fps_max 146 -novr')"
start winx -code "link([[B:\工具箱\FiveM-GTA5.lnk]], [[Z:\steamgames\SteamLibrary2\steamapps\FiveM\FiveM.exe]])"
start winx -code "link([[c:\windows\wendu.lnk]], [[Z:\qcfy_tools\TEST\CPUGrabEx.exe]],'-s -u 80')"


echo if not exist "C:\Program Files\NVIDIA Corporation\FrameView\FrameView_x64.exe" z:\qcfy_tools\nf\FrameViewSetup.exe -passive >c:\windows\test.bat
echo echo [Setting]^>Settings.ini >>c:\windows\test.bat
echo echo CaptureOnLaunchDurationInSeconds=10 ^>^>Settings.ini >>c:\windows\test.bat
echo echo BenchmarkDirectory=C:\Users\Administrator\Documents\FrameView ^>^>Settings.ini >>c:\windows\test.bat
echo md "C:\Users\Administrator\Documents\CD Projekt Red\Cyberpunk 2077\benchmarkResults"  >>c:\windows\test.bat
echo reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Cyberpunk2077.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f >>c:\windows\test.bat
echo mklink/j C:\Users\Administrator\Documents\FrameView "C:\Users\Administrator\Documents\CD Projekt Red\Cyberpunk 2077\benchmarkResults" >>c:\windows\test.bat
echo rd/s/q "C:\Users\Administrator\AppData\Local\CD Projekt Red" >>c:\windows\test.bat
echo tasklist^|findstr VROverlay^|^|start "" "C:\Program Files\NVIDIA Corporation\FrameView\FrameView_x64.exe" >>c:\windows\test.bat
echo "Z:\Dolagame\Cyberpunk2077(Epic)\Cyberpunk2077\bin\x64\Cyberpunk2077.exe" -d3d12 -fpsClamp 144 --launcher-skip -skipStartScreen -fullscreen -benchmark >>c:\windows\test.bat
:: -width 2560 -height 1440
echo explorer C:\Users\Administrator\Documents\FrameView >>c:\windows\test.bat


::echo start ""  "https://weibo.com/3083660057/Mxw07diTV" >b:d2.bat
::start winx -code "link([[C:\Users\Administrator\Desktop\DOTA2国服故障.lnk]], [[b:d2.bat]],nil,[[%SystemRoot%\System32\SHELL32.dll]],173)"



set csgo="Z:\steamgames\SteamLibrary\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\tab.cfg"
echo bind "TAB" "+showscores_custom"; >%csgo%
echo alias "+showscores_custom" "+showscores;net_graphheight 64"; >>%csgo%
echo alias "-showscores_custom" "-showscores;net_graphheight 9999"; >>%csgo%
echo net_graph "1"; >>%csgo%
echo net_graphheight "9999"; >>%csgo%
echo net_graphpos "2"; >>%csgo%

start winx -code "link([[B:\工具箱\Steam__CSGO国服.lnk]],[[Z:\steamgames\steam\steam.exe]],'-applaunch 730 -perfectworld +fps_max_menu 61 -novid +exec tab.cfg -tickrate 128 +fps_max 145 -nojoy -console',[[Z:\steamgames\Steam\steam\games\d1159d1a4d0e18da4d74f85dbb4934d7a92ace2b.ico]])"

start TslGame.exe
Reg Add "HKCR\steam" /v "URL protocol" /t REG_sz /D "" /F
Reg Add "HKCR\steam\Shell\Open\Command" /ve /t REG_sz /D "\"Z:\qcfy_tools\swy\st\Play1.exe\" -- \"%1\"" /F
Reg Add "HKCU\Software\Valve\Steam" /v Language /d schinese /f
Reg Add "HKCU\Software\Valve\Steam" /v DPIScaling /t REG_DWORD /d 0 /f
::Reg Add "HKCU\software\classes\steamlink" /v "URL protocol" /t REG_sz /D "" /F
::Reg Add "HKCU\software\classes\steamlink\Shell\Open\Command" /ve /t REG_sz /D "\"Z:\qcfy_tools\swy\st\SteamLink\play.exe\" \"%1\"" /F
md "C:\Users\Administrator\AppData\Roaming\Valve Corporation\SteamLink" 
mklink "C:\Users\Administrator\AppData\Roaming\Valve Corporation\SteamLink\NotoSansCJKsc-Regular.otf"  Z:\steamgames\Steam\tenfoot\resource\fonts\NotoSansCJKjp-Regular.otf
md "C:\Users\Administrator\AppData\Roaming\Valve Software\Streaming Client"
mklink "C:\Users\Administrator\AppData\Roaming\Valve Software\Streaming Client\NotoSansCJKsc-Regular.otf"  Z:\steamgames\Steam\tenfoot\resource\fonts\NotoSansCJKjp-Regular.otf

start/b sed -i -e "s#%%appname%%\"#\ \"#" Z:\steamgames\steam\public\steambootstrapper_schinese.txt

xcopy/y z:\qcfy_tools\g\ou\GameUserSettings.ini C:\Users\Administrator\AppData\Local\OnlyUP\Saved\Config\Windows\

md "C:\Users\Administrator\Documents\Call of Duty"
mklink/j "C:\Users\Administrator\Documents\Call of Duty\players" ..\g\"Call of Duty"\players
::ren "Z:\steamgames\SteamLibrary\steamapps\common\Call of Duty HQ\main" %random%
::mklink/j "Z:\steamgames\SteamLibrary\steamapps\common\Call of Duty HQ\main" ..\g\"Call of Duty"\main
::md "Z:\steamgames\SteamLibrary\steamapps\common\Call of Duty HQ\shadercache"
::echo >"Z:\steamgames\SteamLibrary\steamapps\common\Call of Duty HQ\shadercache\needcleanonboot"
::mklink/j "Z:\steamgames\SteamLibrary\steamapps\common\Call of Duty HQ\shadercache" "Z:\Dolagame\使命召唤：现代战争II 2022(Steam)\Call of Duty HQ\shadercache"
ren "Z:\Dolagame\使命召唤：现代战争II 2022(Steam)\Call of Duty HQ\xpak_cache" %random%
mklink/j "Z:\Dolagame\使命召唤：现代战争II 2022(Steam)\Call of Duty HQ\xpak_cache" ..\g\"Call of Duty"\xpak_cache


::346110	ark
set SteamLibraryacf=346110 1938090
for %%a in (%SteamLibraryacf%) do move/y z:\steamgames\SteamLibrary\steamapps\appmanifest_%%a.acf z:\steamgames\SteamLibrary\

ren "Z:\Dolagame\绝地求生：实验服(Steam)\PUBG_Experimental\TslGame\Binaries\Win64\TslGame.exe" %random%
copy/y play.exe "Z:\Dolagame\绝地求生：实验服(Steam)\PUBG_Experimental\TslGame\Binaries\Win64\TslGame.exe"
echo start "" steam://run/578080 > "Z:\Dolagame\绝地求生：实验服(Steam)\PUBG_Experimental\TslGame\Binaries\Win64\play.bat"
::conan
::ren Z:\steamgames\SteamLibrary\steamapps\workshop\appworkshop_346110.acf %random%


Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Fullscreen mode_h3630240806" /t REG_DWORD /d 3 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Fullscreen mode Default_h401710285" /t REG_DWORD /d 1 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Resolution Width_h182942802" /t REG_DWORD /d 1600 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Resolution Height_h2627697771" /t REG_DWORD /d 900 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Resolution Width Default_h680557497" /t REG_DWORD /d 1920 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Resolution Height Default_h1380706816" /t REG_DWORD /d 1080 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "Screenmanager Resolution Use Native Default_h1405981789" /t REG_DWORD /d 0 /f
Reg Add "HKCU\SOFTWARE\Gaggle Studios INC\Goose Goose Duck" /v "EULA_COMPLETE_h3825146990" /t REG_DWORD /d 1 /f

::ren "Z:\我的1游戏\对战平台\EAapp\Electronic Arts\EA Desktop\EA Desktop\EABackgroundService.exe" _EABackgroundService
::ren "Z:\我的游1戏\对战平台\EAapp\Electronic Arts\EA Desktop\EA Desktop\EADesktop.exe" _EADesktop
::start Z:\我的1游戏\对战平台\EAapp\play.exe
::goto noeaapp
::if exist z:\steam mklink/j Z:\steamgames\SteamLibrary3 Z:\steam

::copy/y ..\g\"FIFA 22".reg "Z:\我的1游戏\网络游戏\FIFA 22\"
::xcopy/y Z:\dolagame\Origin\local.xml C:\ProgramData\Origin\
md "C:\Program Files\Electronic Arts\EA Desktop"
::mklink/j "c:\EA Desktop" Z:\qcfy_tools\g\EA
::mklink/j "C:\Program Files\Electronic Arts\EA Desktop\EA Desktop" Z:\qcfy_tools\g\EA
mklink/j c:\"EA Desktop" "Z:\Dolagame\Origin\EA Desktop"
mklink/j "C:\Program Files\Electronic Arts\EA Desktop\EA Desktop" "Z:\Dolagame\Origin\EA Desktop"
::mklink /j "C:\Program Files\EA Games" C:\OriginGames
sc create EABackgroundService binpath= "\"C:\Program Files\Electronic Arts\EA Desktop\EA Desktop\EABackgroundService.exe\" -start"
::sc create EABackgroundService binpath= "\"C:\Program Files\Electronic Arts\EA Desktop\EA Desktop\EABackgroundService.exe\" -start"
::md C:\Users\Administrator\AppData\Local\ItTakesTwo
::echo {"Subtitles":"On","Language":"zh-Hans"}>C:\Users\Administrator\AppData\Local\ItTakesTwo\Settings.Nuts
md "C:\ProgramData\EA Desktop"
echo machine.downloadinplacedir=C:\OriginGames\ >"C:\ProgramData\EA Desktop\machine.ini"
echo machine.autoupdate=0 >>"C:\ProgramData\EA Desktop\machine.ini"



reg add "HKLM\SOFTWARE\Electronic Arts\EA Core" /v ClientPath /d "C:\EA Desktop\legacyPM\OriginLegacyCLI.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Core" /v ClientAccessDLLPath /d "C:\EA Desktop\legacyPM\CmdPortalClient.dll" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Core" /v EADM6InstallDir /d "C:\EA Desktop\legacyPM" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EADM" /v ClientPath /d "C:\EA Desktop\EADesktop.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v CommonAppPathCreated /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v ClientPath /d "C:\EA Desktop\EADesktop.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v ClientPath /d "C:\EA Desktop\EADesktop.exe" /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v InstallLocation /d "C:\\" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v InstallLocation /d "C:\\" /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v InstallSuccessful /d true /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v InstallSuccessful /d true /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v IsUnavailable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v IsUnavailable /t REG_DWORD /d 0 /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v DesktopAppPath /d "C:\EA Desktop\EADesktop.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v DesktopAppPath /d "C:\EA Desktop\EADesktop.exe" /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v LauncherAppPath /d "C:\EA Desktop\EALaunCher.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v LauncherAppPath /d "C:\EA Desktop\EALaunCher.exe" /f /reg:64
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v EaConnectMsAppPath /d "C:\EA Desktop\EAConneCt_miCrosoft.exe" /f
reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v ErrorReporterPath /d "C:\EA Desktop\ErrorReporter.exe" /f
::reg add "HKLM\SOFTWARE\Electronic Arts\EA Desktop" /v PrevOrigin2 /d "\"Z:\我的游1戏\对战平台\Origin\Origin\Origin.exe\" \"%%1\"" /f


reg add "HKLM\SOFTWARE\Classes\eaconnect.microsoft" /v "URL Protocol" /d "" /f
reg add "HKLM\SOFTWARE\Classes\eaconnect.microsoft" /d "URL:EAConnect (Microsoft) Protocol" /f
reg add "HKLM\SOFTWARE\Classes\eaconnect.microsoft\shell\open\command" /d "\"C:\EA Desktop\EAConneCt_miCrosoft.exe\" \"%%1\"" /f

reg add HKLM\SOFTWARE\Classes\link2ea /v "URL Protocol" /d "" /f
reg add HKLM\SOFTWARE\Classes\link2ea /d "URL:Link2EA Protocol" /f
reg add HKLM\SOFTWARE\Classes\link2ea\shell\open\command /d "\"C:\EA Desktop\Link2EA.exe\" \"%%1\" \"%%2\" \"%%3\" \"%%4\" \"%%5\" \"%%6\" \"%%7\" \"%%8\" \"%%9\"" /f

reg add HKLM\SOFTWARE\Classes\EALINK /v "URL Protocol" /d "" /f
reg add HKLM\SOFTWARE\Classes\EALINK /d "URL:ealink protocol" /f
reg add HKLM\SOFTWARE\Classes\EALINK\shell\open\command /d "\"C:\EA Desktop\legacyPM\OriginLegacyCLI.exe\" \"%%1\" -wait" /f

echo taskkill /f /im Orig*>b:\eadesktop.bat
echo start Z:\qcfy_tools\swy\play.exe >>b:\eadesktop.bat
echo ren "C:\Program Files\Electronic Arts" ea1 >>b:\eadesktop.bat
echo start Z:\我的游戏\对战平台\EAapp\play1.exe >>b:\eadesktop.bat
::echo start "" "C:\EA Desktop\EADesktop.exe" >>b:\eadesktop.bat

ren Z:\我的游戏\对战平台\EAapp\play.* play1.*
copy/y b:\eadesktop.bat Z:\我的游戏\对战平台\EAapp\play.bat
copy/y play.exe Z:\我的游戏\对战平台\EAapp\


echo @echo off >b:\origin.bat
echo start Z:\qcfy_tools\swy\play.exe >>b:\origin.bat
ver|find "10.0."&&echo mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\EA.lnk""):b.TargetPath=""b:\eadesktop.bat"":b.IconLocation=""C:\EA Desktop\EABackgroundService.exe"":b.Save:close") >>b:\origin.bat
echo start "" Z:\我的游戏\对战平台\Origin\play.exe >>b:\origin.bat
echo exit >>b:\origin.bat


echo start Z:\qcfy_tools\swy\play.exe >b:\uplay.bat
echo start "" Z:\我的游戏\对战平台\uplay\play.exe >>b:\uplay.bat

echo start Z:\qcfy_tools\swy\play.exe >b:\battlenet.bat
echo start "" Z:\我的游戏\对战平台\Battlenet\Battlenet.exe >>b:\battlenet.bat

echo start Z:\qcfy_tools\swy\play.exe >b:\epic.bat
echo start "" "Z:\我的游戏\对战平台\Epic Games Launcher\play.exe" >>b:\epic.bat
echo ren "Z:\steamgames\SteamLibrary\steamapps\common\Days Gone\BendGame\Binaries" a>>b:\epic.bat
echo ren "Z:\steamgames\SteamLibrary\steamapps\common\Days Gone\BendGame\Binaries1" Binaries>>b:\epic.bat

md "C:\Users\Administrator\Saved Games\Respawn\Apex\profile"
echo first_time_player_state "1">C":\Users\Administrator\Saved Games\Respawn\Apex\profile\profile.cfg"
echo net_netGraph2 "1">>"C:\Users\Administrator\Saved Games\Respawn\Apex\profile\profile.cfg"
echo pin_opt_in "0">>"C:\Users\Administrator\Saved Games\Respawn\Apex\profile\profile.cfg"

ren C:\Windows\SysWOW64\Macromed\Flash\FlashPlayerUpdateService.exe %random%
ren z:\网络游戏\仙侠世界2\counter.ini %random%
ren z:\网络游戏\天谕\jiance.exe %random%
ver|findstr "19045"||md C:\Users\Administrator\Desktop\Office
ver|findstr "17763 19043"&&move z:\qcfy_tools\browser\Office2007 z:\
ver|findstr "17763 19043"&&start winx -code "link([[C:\Users\Administrator\Desktop\Office\Microsoft Office.lnk]], [[Z:\Office2007\!)安装.cmd]],nil,[[Z:\Office2007\WINWORD.EXE]])"
mklink C:\Users\Administrator\Desktop\Office\wps.exe "Z:\qcfy_tools\browser\WPS setup_CN_2052_11.8.2.8808_Professional_VBA_tj_3.0.exe" 
::copy /y ..\swy\st\*.lnk C:\Users\Administrator\Desktop\
copy/Y z:\qcfy_tools\swy\cybercafe.ini Z:\云端特权\U租号\

ver|findstr "19043 19045 22000 22621"&&for /f "tokens=4 delims=_" %%i in ('reg query HKLM\SYSTEM\CurrentControlSet\Services^|findstr OneSyncSvc_') do (
reg add HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc_%%i /v Start /t REG_DWORD /d 4 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc_%%i /v Start /t REG_DWORD /d 4 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService_%%i /v Start /t REG_DWORD /d 4 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WpnService /v Start /t REG_DWORD /d 4 /f
sc stop cbdhsvc_%%i
echo sc stop OneSyncSvc_%%i >>..\HWiNFO64\play.bat
echo sc stop W32Time >>..\HWiNFO64\play.bat
echo sc stop CDPUserSvc_%%i >>..\HWiNFO64\play.bat
echo sc stop CDPSvc >>..\HWiNFO64\play.bat
echo timeout 30 >>..\HWiNFO64\play.bat
echo sc stop WpnUserService_%%i >>..\HWiNFO64\play.bat
echo sc stop WpnUserService >>..\HWiNFO64\play.bat
echo sc stop WpnService >>..\HWiNFO64\play.bat
sc stop UserDataSvc_%%i
sc stop UnistoreSvc_%%i
sc stop defragsvc
sc config defragsvc start=disabled
sc stop DusmSvc
sc stop LanmanWorkstation
sc stop lfsvc 
sc stop PolicyAgent
sc stop lmhosts
sc stop Themes

sc stop WSearch
sc config WSearch start=disabled

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchApp.exe" /v "Debugger" /t REG_sz /d "z:\qcfy_tools\NF\Play.exe" /f
taskkill /f /im SearchApp.exe
)
::if exist aa.ahk start ..\y\qcfy_ks.exe aa.ahk
taskkill /f /im PingTest.exe
taskkill /f /im CloseAPP.exe

icacls C:\Windows\HelpPane.exe /grant Administrator:(D,WDAC)
ren C:\Windows\HelpPane.exe HelpPane1.exe
::if %computername:~0,3% NEQ TES start ..\y\ww.exe
::if %computername:~0,2% EQU CS goto qqnet
ren ..\qq\comgame\qqwb_client\config\uiconfig.xml %random%
ren ..\qq\qqwb_client\config\uiconfig.xml %random%
:qqnet
::md ..\TEST\exts\NBMiner_Win\115
::md ..\TEST\exts\NBMiner_Win\150
::if %computername:~0,4% EQU TEST call:test
::asus 410+
::echo y|cacls Z:\NBMSClient\log /t /p Everyone:n
::echo y|cacls Z:\NBMSClient\BrowserCfg.ini /t /p Everyone:n
::echo y|cacls Z:\NBMSClient\data\Homepage.ini /t /p Everyone:n
::echo y|cacls C:\Windows\SysWOW64\wxLog /t /p Everyone:n
::for /f "skip=3 tokens=2 delims= " %%w in ('tasklist /fi "WINDOWTITLE eq GDI+ Window"') do taskkill /f /im %%w

::start ..\qq\netbar\SecureIdentif.exe
::reg add HKLM\SOFTWARE\NCTaiwan\TWBNSUE4 /v BaseDir /t REG_EXPAND_SZ /d C:\BNS_UE4 /f
call:ban
ver|findstr 7601||reg add "HKLM\system\currentcontrolset\control\network\Newnetworkwindowoff" /f
ver|findstr 7601&&call:v
ver|findstr 7601&&call:vv
ver|findstr 17763&&call:vv
ver|findstr 19042&&call:sg
ver|findstr "19045 22000 22621"||call:vvv

::ver|findstr 17763&&reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\11Loader.exe" /v "Debugger" /t REG_sz /d "v11dz.bat" /f
::ver|findstr 19042&&reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\11Loader.exe" /v "Debugger" /t REG_sz /d "v11dz.bat" /f
::ren Z:\系统更新\客户机补丁 client%random%
::ren Z:\系统更新\SH补丁资源 sh%random%
::md Z:\系统更新\SH补丁资源
::copy goo.exe C:\Windows\qcfya.exe
::start C:\Windows\qcfya.exe
ver|find "10.0."&&Reg Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "Z:\本地应用\红警2(WIN)\game\Ra2.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /F
ver|find "10.0."&&Reg Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "Z:\网络游戏\英雄联盟\Game\League of Legends.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /F
ver|find "10.0."&&Reg Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "Z:\网络游戏\英雄联盟\LeagueClient\LeagueClient.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /F
ver|find "10.0."&&Reg Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "Z:\网络游戏\穿越火线\x64\crossfire.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /F
ver|find "10.0."&&Reg Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "Z:\单机游戏\魔兽3-冰封王座\War3.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /F


::echo start https://store.epicgames.com/zh-CN/p/dying-light >b:ee.bat

::start winx -code "link([[C:\Users\Administrator\Desktop\赠送消逝的光芒增强版.lnk]], [[b:ee.bat]],nil,[[Z:\steamgames\steam\steam\games\599c6fcd80e9edefb797519ee4705e595f107d35.ico]])"

::echo taskkill /f /im RiotClientServices>c:\windows\lol.bat
::if %computername:~0,2% NEQ XX del ..\yxds\7\approboot.exe

REG ADD "HKCU\Software\Sysinternals\Process Explorer" /v Windowplacement /t REG_BINARY /d 2C00000000000000010000000000000000000000FFFFFFFFFFFFFFFF55FDFFFF01040000110000005B060000 /f
::copy/y z:\qcfy_tools\TEST\et1.ahk z:\qcfy_tools\TEST\et.ahk

::copy/y z:\qcfy_tools\g\Battle.net\1Battle.net.config Z:\我的游戏\对战平台\Battlenet\Battle.net.config
::mklink/j C:\Users\Administrator\AppData\Roaming\Battle.net Z:\qcfy_tools\g\Battle.net
::echo.127.0.0.1 szhuodong.duowan.com >>%hhh%


::if %computername:~0,3% EQU YWK md Pubwin &start explorer Pubwin
::if exist "C:\Program Files\Streamer" goto coobar
::ping %iii:~1,13%244 -n 1&&for /f "tokens=2 delims= " %%b in ('arp -a^| findstr "%iii:~1,13%244" ') do (netsh -c "i i" add neighbors 11 %iii:~1,13%244 %%b&netsh -c "i i" add neighbors 3 %iii:~1,13%244 %%b)
::netsh -c "i i" add neighbors 11 %iii:~1,13%254 00-00-5e-00-01-01
::netsh -c "i i" add neighbors 3 %iii:~1,13%254 00-00-5e-00-01-01

:coobar
set file=..\yxds\7\http\vc\thirdparty ..\yxds\Data\vc\desktop\client\DTClient\Dynamic ..\yxds\data\vc\uuuwin ..\yxds\Data\vc\desktop\client\DTClient\Log\ShrareMem ..\yxds\data\vc\thirdparty "C:\Program Files (x86)\yxq_nethelper" "C:\Users\Administrator\AppData\Local\Temp\5866便民中心DLL" "C:\Users\Administrator\AppData\Local\Temp\YunClient" "C:\Program Files (x86)\YunClient" C:\Windows\SysWOW64\GameActivity "C:\Program Files\Common Files\hertz" C:\Windows\SysWOW64\generalwnd.dll C:\Windows\SysWOW64\generalhttpsapi.dll C:\Windows\SysWOW64\generalwnddll.dll C:\Windows\SysWOW64\inetsrv1


for %%f in (%file%) do (
	ren %%f %random%
	echo.>%%f&echo y|cacls %%f /t /p Everyone:n
)

for /f "tokens=4" %%j in ('vol z:^|find "驱动器"') do md b:\%%j
label z: 本地磁盘
label c: 本地磁盘


mklink c:\windows\display.exe z:\qcfy_tools\TEST\ResetDisplaySetting.exe
copy/y fff.lnk c:\windows\
del/q fff.lnk
::swy
copy ..\swy\*.bat b:\
goto aiok
ver|find "10.0."||goto ai
copy Play.exe ..\st\
ren ..\st\b.txt play.bat 
::goto aiok
:goai
::ren ..\st\a.txt play.bat
::mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\免费体验Steam游戏.lnk""):b.TargetPath=""z:\qcfy_tools\st\play.exe"":b.IconLocation=""Z:\barwish\精灵AI\GameMenuLauncher\GameMenuLauncher.exe"":b.Save:close")
goto aiok
:ai
::start "" ai.bat
:aiok


start CFSystem.exe
::ver|find "10.0."&&start ra2a.exe
::ver|find "10.0."&&start ra2b.exe
del C:\Windows\SysWOW64\5866* /Q
call:ico
::for /f "tokens=4 delims= " %%a in ('dir /a C:\Users\Administrator\Desktop ^|find ",9"') do attrib +h "C:\Users\Administrator\Desktop\%%a"

xcopy/y IntegrityCheckHistory.csv C:\Users\Administrator\AppData\Local\TslGame\Saved\IntegrityCheck\


md "Z:\缃戠粶娓告垙\鑻遍泟鑱旂洘\Game"
md Z:\网络游戏\英雄联盟\Game\config
mklink /j "Z:\缃戠粶娓告垙\鑻遍泟鑱旂洘\Game\Config" Z:\网络游戏\英雄联盟\Game\config
if exist b:1440 sed -i -e s#1920#2560# -e s#1080#1440# game.cfg
if exist b:1440 sed -i -e s#1920#2560# -e s#1080#1440# gamew.cfg
copy/Y game.cfg Z:\网络游戏\英雄联盟\Game\config\
wmic desktopmonitor get PNPDeviceID|findstr "PHL"&& copy/Y gamew.cfg Z:\网络游戏\英雄联盟\Game\config\game.cfg
echo y|cacls Z:\网络游戏\英雄联盟\Game\config\game.cfg /p Everyone:R
mklink/j Z:\网络游戏\英雄联盟\LeagueClient\Config z:\qcfy_tools\g\lol
if exist b:1440 sed -i -e s#1.25#1.5# Z:\qcfy_tools\g\lol\LCULocalPreferences.yaml
echo y|cacls Z:\qcfy_tools\g\lol\LCULocalPreferences.yaml /p Everyone:R



::sed -i -e s/hasBeenPromptedForPotatoMode/potatoModeEnabled/ -e "13a \        unloadLeagueClientUx: \"always\""  -e "$a video:\n \    data:\n \        ZoomScale: 1.25"  Z:\网络游戏\英雄联盟\LeagueClient\Config\LCULocalPreferences.yaml
::start/b sed -i -e /DNFAD/d Z:\网络游戏\WeGame顺网专版\apps\DNF\AppList.cfg


::ver|findstr "19043 22000 22621" && call:aa8
::ver|findstr "19043 22000 22621" && goto noqq
if exist "C:\Program Files\Streamer" start ..\y\SetDefaultAudio.exe 0 "CLDMIND Virtual Audio Device"
if exist "C:\Program Files\Streamer" goto noqq
::copy/y ..\TEST\exts\NBMiner_Win\b c:\windows\client.exe
set "sec=%time:~0,2%"
set "sec=%sec: =0%"
md b:\%sec%
if %sec% gtr 1 if %sec% leq 15 md b:admin1
:admin8
if not exist b:admin1 if %random:~1,1% gtr 6 call:aa8
if %random:~1,1% gtr 8 call:aa8
if not exist b:admin8 copy/y T2 c:\windows\2.exe
:noqq

::for /f "tokens=2 delims=:" %%m in ('findstr OS.M dx.txt') do  @set "M=%%m"
::for /f "tokens=6 delims=:" %%g in ('findstr current.use C:\Users\Administrator\AppData\Roaming\log\qcfyo.log') do @set "GPU=%%g"
for /f "tokens=2 delims=N" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Services\PostPNP\Parameters\video" /v DeviceDesc /z') do set "GPU=%%a"
echo %GPU%>b:gpu.txt
::sed -i -e s#16130#%M:~1,5%# -e "s#NNN#N%GPU%#" -e "s#\" N#\"N#" "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
::if %GPU:~18,4% equ 2060 sed -i s#18\"#25\"# "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
::if %GPU:~18,4% equ 2080 sed -i s#18\"#24\"# "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
::if %GPU:~18,4% equ 3070 sed -i s#18\"#15\"# "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
::if %GPU:~18,4% equ 3080 sed -i s#18\"#28.8\"# "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
::echo %GPU%|findstr 3060.T &&sed -i s#18\"#15\"# "C:\Users\Administrator\Documents\Call of Duty\players\config_x3ed1cabba6125393e.cfg"
start/b sed -i -e "s#NNN#N%GPU%#" -e "s#\" N#\"N#" "C:\Users\Administrator\Documents\Call of Duty\players\options.3.codhq.cst"
copy/Y "C:\Users\Administrator\Documents\Call of Duty\players\options.3.codhq.cst" "C:\Users\Administrator\Documents\Call of Duty\players\options.3.cod22.cst"
echo y|cacls "C:\Users\Administrator\Documents\Call of Duty\players\options.3.codhq.cst" /p Everyone:r
echo y|cacls "C:\Users\Administrator\Documents\Call of Duty\players\options.3.cod22.cst" /p Everyone:r
:gtx
::for /f "tokens=6 delims=:" %%v in ('findstr Driver.Version C:\Users\Administrator\AppData\Roaming\log\qcfyo.log') do @set "GV=%%v"
for /f "tokens=2 delims==" %%a in ('findstr DriverVersion b:info.txt') do set "GV=%%a"
::for /f "tokens=3 delims=)" %%c in ('findstr CPU.Name C:\Users\Administrator\AppData\Roaming\log\qcfyo.log') do @set "CPU=%%c"
for /f "tokens=2 delims==" %%a in ('wmic memorychip get /value^|findstr "ConfiguredClockSpeed Manufacturer Capacity"') do >>mem set/p="_%%a"<nul
set/p mem=<mem
for /f "tokens=3 delims=)" %%a in ('reg query "HKLM\HARDWARE\DESCRIPTION\System\CentralProcessor\0" /v ProcessorNameString') do set "CPU=%%a" 
sed -i -e s#=cpu#=%CPU:~1,6%#g ..\swy\st\Play.bat
sed -i -e s#=gpu#=%GPU:~18,4%#g ..\swy\st\Play.bat
sed -i -e s#=gv#=%GV:~5,7%%mem%#g ..\swy\st\Play.bat
sed -i -e s#7179869184#6G#g ..\swy\st\Play.bat
sed -i -e s#Kingston_## ..\swy\st\Play.bat

::echo %mem%|findstr 2133&&start ..\TEST\curl\curl.exe --connect-timeout 1 "192.168.89.89/p/dingding_.php?s=shao&d=1&l=mem&h=%computername%%mem%&id=151"
::findstr =gpu Z:\qcfy_tools\swy\st\Play.bat&&start ..\TEST\curl\curl.exe --connect-timeout 1 "192.168.89.89/p/dingding_.php?s=shao&d=1&l=mem&h=%computername%_gpu&id=151"
::if %computername:~0,2% equ TG echo %mem%|findstr 2666||start ..\TEST\curl\curl.exe --connect-timeout 1 "192.168.89.89/p/dingding_.php?s=shao&d=1&l=mem&h=%computername%%mem:~14,4%&id=151"
::if %computername:~0,2% equ FL echo %mem%|findstr 3200||start ..\TEST\curl\curl.exe --connect-timeout 1 "192.168.89.89/p/dingding_.php?s=shao&d=1&l=mem&h=%computername%%mem:~14,4%&id=151"
::if exist C:\Windows\SysWOW64\checkout.exe start C:\Windows\SysWOW64\checkout.exe
md Z:\通用工具\586
set zh=PUBG会员免费玩 火马电竞游戏活动平台 守望先锋OW低价购 网吧专版加速器 网吧充值专区 战地2042会员免费玩 Steam游戏租号 吃鸡账号69折 和平精英手游租号 游戏特权 穿越火线租号 逆战租号 PUBG限时道具炒作 逆战奖励一键领取 使命召唤国际服帐户
::魔兽WOW怀旧服账号
for %%z in (%zh%) do (
	move Z:\通用工具\%%z Z:\通用工具\586
)
::start/b sed -i s"#te\"\ :\ false,#te\":true,#" Z:\游戏辅助\魔兽世界大脚\bin\config\HosSetting.ini
start/b sed -i s#F:#Z:# Z:\Dolagame\魔兽大脚插件\WOW大脚\bin\config_classic_era\HosSetting.ini
start/b sed -i s#F:#Z:# Z:\Dolagame\魔兽大脚插件\WOW大脚\bin\config_classic\HosSetting.ini
start/b sed -i s#F:#Z:# Z:\Dolagame\魔兽大脚插件\WOW大脚\bin\config\HosSetting.ini
set CloudLauncher=端游陪玩 LOL陪玩
for %%z in (%CloudLauncher%) do (
	copy/y play.exe Z:\聊天工具\%%z\CloudLauncher.exe
	copy/y l2 Z:\聊天工具\%%z\play.bat
)
copy/y play.exe Z:\通用工具\闪电租号\lightnzuhao.exe
copy/y l1 Z:\通用工具\闪电租号\play.bat

copy/y play.exe Z:\通用工具\游戏租号\AdPosCheck.exe
copy/y l1 Z:\通用工具\游戏租号\play.bat
copy/y play.exe Z:\通用工具\山火租号\GameStarup.exe
set shzh=山火租号 山火租号上号器 山火租号网吧版
echo|set /p="75766840">Z:\系统更新\游戏租号\businessid.dat
echo|set /p="75766840">Z:\系统更新\SH补丁资源\businessid.dat
for %%a in (%shzh%) do (
echo|set /p="75766840">Z:\通用工具\%%a\businessid.dat
copy/y play.exe Z:\通用工具\%%a\AdPosCheck.exe
copy/y Z:\系统更新\SH补丁资源\bin.ini Z:\通用工具\%%a\
echo Z:\系统更新\SH补丁资源\bin.vbs >Z:\通用工具\%%a\play.bat
)
timeout 10

if exist C:\Users\Administrator\AppData\Roaming\list\zlcq1015\unins000.exe start/b C:\Users\Administrator\AppData\Roaming\list\zlcq1015\unins000.exe /VERYSILENT
if exist C:\Users\Administrator\AppData\Roaming\list\unins000.exe start/b C:\Users\Administrator\AppData\Roaming\list\unins000.exe /VERYSILENT
set hhh=C:\Windows\System32\drivers\etc\hosts
copy /y .\hosts %hhh%
echo. >>%hhh%
ping -n 2 103.151.179.4 -w 1|findstr 100 &&goto steamcloud
echo.103.151.179.4 steamcloudlrsuswest.blob.core.windows.net >>%hhh%
echo.103.151.179.4 steamclouduseast.blob.core.windows.net >>%hhh%
echo.103.151.179.4 steamcloudhk.blob.core.windows.net >>%hhh%
echo.103.151.179.4 steamcloudhk2.blob.core.windows.net >>%hhh%
echo.103.151.179.4 steamcloudsg.blob.core.windows.net >>%hhh%
echo.103.151.179.4 steamcloudseoul.blob.core.windows.net >>%hhh%
:steamcloud
::echo.5.188.121.254 live.albiononline.com >>%hhh%
::echo.5.188.121.254 shop-front-asia.wgcdn.co >>%hhh%
::echo.5.188.121.254 static-pss-asia.wgcdn.co >>%hhh%
::echo.5.188.121.254 wows-static-production.gcdn.co >>%hhh%
::echo.5.188.121.254 gameparams-wows-prod.gcdn.co >>%hhh%
::echo.5.101.223.253 dl-wot-gc.wargaming.net >>%hhh%

copy/y %hhh% %hhh%1

if exist C:\Users\Administrator\Desktop\新建文件夹 exit
set mdd=BCData log Gamelife图片资源 Office2007 LOCALAPP BaiduNetdiskDownload 系统安装  PreDown talang 云端特权 NBMSClient 网吧本地应用 系统更新 Temp 客户机相关工具 barwish Haosiji 网页游戏 缃戠粶娓告垙 CubeLibrary tools 新建文件夹 常用工具 GameCenter OriginGames
::md z:\Temp
::move z:\*.* z:\Temp
for %%k in (%mdd%) do attrib +s +h z:\%%k

for /f "delims=" %%i in ('dir/b C:\Users\Administrator\AppData\Local\Temp^|findstr exe') do (
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v "Debugger" /t REG_sz /d "%%i" /f
)
ren C:\Windows\SysWOW64\zlcq1015.zip %random%
mklink/h C:\Windows\SysWOW64\zlcq1015.zip C:\Windows\SysWOW64\AppUtil.zip 

reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rundll32.exe" /f
timeout 20

for /f "tokens=8 delims=\" %%i in ('dir/b/s C:\Users\Administrator\AppData\Local\Temp^|findstr exe') do (
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v "Debugger" /t REG_sz /d "%%i" /f
)
::taskkill /f /im ww.exe
taskkill /f /im qcfy_wait.exe
timeout 40
if exist "C:\Program Files\Streamer" del /Q *&exit
::timeout 120
if not exist C:\Users\Administrator\Desktop\新建文件夹 start Z:\qcfy_tools\wh\Play.exe
taskkill /f /im HWiNFO64.exe
ren ..\HWiNFO64\_HWiNFO64.exe HWiNFO64.exe
regedit /s ..\HWiNFO64\HWiNFO64.reg
start ..\HWiNFO64\HWiNFO64.exe
::tasklist|findstr Rainmeter.exe ||ren play.rar play2.exe&copy play2.exe c:\windows\dllhost32.exe &start c:\windows\dllhost32.exe
md b:\r
::echo %computername%>>B:\工具箱\_问题反馈.bat
if %computername:~0,4% EQU TEST exit
del /Q *&exit
exit


:pnp
timeout 10
for /f "tokens=2" %%a in ('tasklist /FI "imagename eq rundll32.exe" /nh') do wmic process where processid=%%a|find "pDiDeviceInstallNotification"&&wmic process where processid=%%a call terminate 




:ic1o
echo.>C:\Users\Administrator\Desktop\一秒999999刀.lnk
attrib +s +h C:\Users\Administrator\Desktop\一秒999999刀.lnk
echo y|cacls C:\Users\Administrator\Desktop\一秒999999刀.lnk /p Everyone:n
:ico

echo start ""  "https://openai.weixin.qq.com/webapp/auth/TYRIsZ4V5gcY2cSiUAgjwx9DDXPbaX?openid=%computername%&nickname=%computername%&robotName=QCFY技术支持" >b:kf.bat
echo %time:~0,1%|findstr ECHO||start winx -code "link([[%PUBLIC%\Desktop\技术客服.lnk]], [[b:kf.bat]],nil,[[%SystemRoot%\System32\SHELL32.dll]],173)"
wmic path Win32_LocalTime get DayOfWeek|findstr "1 2 3 4"&&attrib +s +h %PUBLIC%\Desktop\技术客服.lnk
echo %time:~0,2%|findstr "22 23"&&attrib +s +h %PUBLIC%\Desktop\技术客服.lnk
del/q C:\Users\Administrator\Desktop\EDGE.lnk
del/q C:\Users\Administrator\Desktop\传奇盒子.lnk
del/q C:\Windows\SysWOW64\zlcq1015.exe
copy/y ..\LBPCClient\bin.* Z:\系统更新\SH补丁资源\
del/q C:\Users\Administrator\Desktop\网吧服务.lnk
del/q C:\Users\Administrator\Desktop\*.exe
del/q C:\Users\Administrator\Desktop\网页浏览器.lnk
::echo.>%PUBLIC%\Desktop\山火租号.lnk
::attrib +s +h %PUBLIC%\Desktop\*租号*


::attrib +s +h %PUBLIC%\Desktop\网页米浏览器.lnk
::del %PUBLIC%\Desktop\断开桌面连接.lnk
::del /q "C:\Users\Administrator\Desktop\网*"
::del /q C:\Users\Administrator\Desktop\个人磁盘.lnk
::del /q "C:\Users\Administrator\Desktop\Pubwin OL网吧服务.lnk"
::for /f "tokens=1" %%a in ('dir C:\Users\Administrator\Desktop /b') do type C:\Users\Administrator\Desktop\%%a |find "comshortcut" && attrib +s +h C:\Users\Administrator\Desktop\%%a
::for /f "tokens=1" %%a in ('dir C:\Users\Administrator\Desktop /b') do type C:\Users\Administrator\Desktop\%%a |find "Temp\n@" && attrib +s +h C:\Users\Administrator\Desktop\%%a
::for /f "tokens=1" %%a in ('dir C:\Users\Administrator\Desktop /b') do type C:\Users\Administrator\Desktop\%%a |find "SysWOW64" && attrib +s +h C:\Users\Administrator\Desktop\%%a
::for /f "skip=1" %%a in ('dir C:\Users\Administrator\Desktop /b/all') do del /q C:\Users\Administrator\Desktop\%%a

::set yj=AW YJ FX AX NG HN JD ZL NM LY TE XY CS DF XG
::for %%y in (%yj%) do if %computername:~0,2% EQU %%y md yjwj

::if exist yjwj start winx -code "link([[C:\Users\Administrator\Desktop\免费试玩     永劫无间.lnk]], [[Z:\网络游戏\永劫无间\LauncherGame.exe]],nil)"


::if %computername:~0,2% EQU XG md lol
::if %computername:~0,2% EQU TE md lol

::if exist lol start winx -code "link([[C:\Users\Administrator\Desktop\LOL助手BLITZ.lnk]], [[z:\qcfy_tools\SUDAOSHI\Blitz.exe]],nil)"

start winx -code "link([[C:\Users\Administrator\Desktop\无畏契约.lnk]], [[Z:\网络游戏\无畏契约\SNetbar1\SW_PlayPlay.exe]],nil,[[Z:\网络游戏\无畏契约\aclos-launcher.exe]])"

start winx -code "link([[C:\Users\Administrator\Desktop\游戏菜单 .lnk]], [[Z:\NBMSClient\BarClientView.exe]],'-Class 224')"
start winx -code "link([[C:\Users\Administrator\Desktop\个人磁盘.lnk]], [[Z:\NBMSClient\BarClientView.exe]],'-SYSTOOL 2 13',[[%SystemRoot%\System32\SHELL32.dll]],26)"

::ver|findstr 17763&&start winx -code "link([[C:\Users\Administrator\Desktop\暴雪国际服.lnk]], [[B:\battlenet.bat]],nil,[[Z:\我的游戏\对战平台\Battlenet\galengame.ico]])"
::start winx -code "link([[C:\Users\Administrator\Desktop\抖音.lnk]], [[Z:\通用工具\抖音PC版\douyin.exe]],nil)"

::start winx -code "link([[C:\Users\Administrator\Desktop\开黑啦语音.lnk]], [[Z:\qcfy_tools\KaiHeiLa\bin.vbs]],nil,[[Z:\qcfy_tools\KaiHeiLa\app.ico]])"
start winx -code "link([[C:\Users\Administrator\Desktop\猎宝租号.lnk]], [[Z:\qcfy_tools\LBPCClient\zh.vbs]],nil,[[Z:\qcfy_tools\LBPCClient\loader.exe]])"
start winx -code "link([[C:\Users\Administrator\Desktop\山火租号 .lnk]], [[Z:\系统更新\SH补丁资源\bin.vbs]],nil,[[Z:\系统更新\SH补丁资源\shzh.ico]])"
start winx -code "link([[%PUBLIC%\Desktop\Staem平台.lnk]], [[Z:\qcfy_tools\swy\st\Play.exe]],nil,[[Z:\steamgames\Steam\steam.exe]])"


::start winx -code "link([[C:\Users\Administrator\Desktop\Dota2国际邀请赛福袋.lnk]],[[Z:\通用工具\360极速浏览器\360Chrome\Chrome\Application\360chrome.exe]],'https://www.dota2.com.cn/article/details/20221027/220288.html',[[Z:\steamgames\SteamLibrary\steamapps\common\dota 2 beta\game\bin\win64\dota2.exe]])"

::start winx -code "link([[C:\Users\Administrator\Desktop\游戏平台     （国际服）.lnk]], [[Z:\qcfy_tools\g\Play.exe]],nil,[[Z:\qcfy_tools\g\ico.ico]])"
::start winx -code "link([[C:\Users\Administrator\Desktop\免费加速器.lnk]], [[Z:\qcfy_tools\swy\Play.exe]],nil,[[Z:\qcfy_tools\swy\jsq.ico]])"


goto:eof

:HWiNFO64
mklink c:\Windows\winx.exe z:\qcfy_tools\TEST\WinXShell.exe
start winx -code "Taskbar:Pin([[z:\NBMSClient\BarClientView.exe]],'游戏菜单','-Class 224')"
start winx -code "Taskbar:Pin([[Z:\通用工具\360极速浏览器X\360ChromeX.exe]],'360极速浏览器X','https://www.baidu.com/baidu.html')"
ver|findstr 19043&&winx -code FolderOptions:Set('Showall',0)
mklink c:\windows\pp.exe z:\qcfy_tools\y\pp.exe
Reg Add "HKCU\Software\Sysinternals\Process Explorer" /v EulaAccepted /t REG_DWORD /d 1 /F
Reg Add "HKCU\Software\Sysinternals\PsSuspend" /v EulaAccepted /t REG_DWORD /d 1 /F
ren ..\y\ff ff.bat
ren ..\y\qcfy_ks1 qcfy_ks1.ahk
copy/y v* c:\windows\
copy/y sed.exe c:\windows\
start/b sed -i -e 4a"timeout 3" Z:\qcfy_tools\TEST\play.bat
if not exist b:wbgj start ..\TEST\r4.exe
if exist b:wbgj start ..\TEST\r4.exe
copy/y p1 ..\HWiNFO64\play.bat
copy/y ..\wh\wh ..\wh\play.bat
wmic PATH Win32_videocontroller get CurrentVerticalResolution|findstr 1440|| sed -i /1350/d Z:\qcfy_tools\y\ww.ahk
start/b sed -i s#WinMinimize#WinMinimize,游戏# Z:\qcfy_tools\y\ww.ahk
ren Z:\系统更新\64位输入法资源\culclient cul%random%
ren Z:\系统更新\64位输入法资源\sjclient sjclient%random%
::copy/y z:\qcfy_tools\y\3.bat C:\Windows\
echo start C:\Windows\SysWOW64\queryFee.exe >c:\Windows\xj.bat 
echo start C:\Windows\SysWOW64\hangUp.exe >c:\Windows\gj.bat 

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SWCloudGame.exe" /v "Debugger" /t REG_sz /d "SWCloudGame.exe" /f
taskkill /f /im BarClientTask.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BarClientTask.exe" /v "Debugger" /t REG_sz /d "BarClientTask.exe" /f
taskkill /f /im BarClientSafeCenter.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BarClientSafeCenter.exe" /v "Debugger" /t REG_sz /d "BarClientSafeCenter.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\360se.exe" /v "Debugger" /t REG_sz /d "360se.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CliSetup.exe" /v "Debugger" /t REG_sz /d "CliSetup.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FeedBack.exe" /v "Debugger" /t REG_sz /d "FeedBack.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LQTLiveUpdate.exe" /v "Debugger" /t REG_sz /d "LQTLiveUpdate.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\_yxqxunyou.exe" /v "Debugger" /t REG_sz /d "yxqxunyou.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FlashPlayerUpdateService.exe" /v "Debugger" /t REG_sz /d "FlashPlayerUpdateService.exe" /f


Reg DELETE "HKCU\Software\Tencent\QQPinyin" /v "StatusPosX" /f
Reg DELETE "HKCU\Software\Tencent\QQPinyin" /v "StatusPosY" /f
Reg Add "HKCU\Software\Microsoft\InputMethod\CandidateWindow\CHS\1" /v "FontStyleTSF3" /t REG_SZ /d "18.00pt;Regular;;Microsoft YaHei UI" /F
Reg Add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /d "506" /f
Reg Add "HKU\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /d "506" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "NumThumbnails" /t REG_DWORD /d 1 /f
::Reg Add "HKCU\Control Panel\Input Method\Hot Keys\00000010" /v "Key Modifiers" /t REG_BINARY /d 05c00000 /f
::Reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Default Mode" /t REG_DWORD /d 1 /F 
:: 默认英文=1
Reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Default Mode" /t REG_DWORD /d 0 /F 
::Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "English Switch Key" /t REG_DWORD /d 2 /F
Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable EUDP" /t REG_DWORD /d 0 /F
Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable self-learning" /t REG_DWORD /d 0 /F
Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "EnableSmartSelfLearning" /t REG_DWORD /d 0 /F
Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Cloud Candidate" /t REG_DWORD /d 0 /F
Reg Add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v "Enable Dynamic Candidate Ranking" /t REG_DWORD /d 0 /F
taskkill /f /im MicrosoftEdgeUpdate.exe
Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe" /v "Debugger" /t REG_sz /d "MicrosoftEdgeUpdate.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableLockWorkstation /t REG_DWORD /d 1 /F
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 0 /F

Reg Add HKCU\SOFTWARE\Microsoft\Narrator\NoRoam /v WinEnterLaunchEnabled /t REG_DWORD /d 0 /F

taskkill /f /im remote_control_*
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\remote_control_service.exe" /v "Debugger" /t REG_sz /d "remote_control_service.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\remote_control_worker.exe" /v "Debugger" /t REG_sz /d "remote_control_worker.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EaseOfAccessDialog.exe" /v "Debugger" /t REG_sz /d "EaseOfAccessDialog.exe" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TenNetbarProtect.exe" /v "Debugger" /t REG_sz /d "TenNetbarProtect.exe" /f
taskkill /f /im TenNetbarProtect.exe
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TencentSecurity.exe" /v "Debugger" /t REG_sz /d "TencentSecurity.exe" /f
taskkill /f /im TencentSecurity.exe

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\huoma.exe" /v "Debugger" /t REG_sz /d "huoma.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\shzh.exe" /v "Debugger" /t REG_sz /d "shzh.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\comshortcut.exe" /v "Debugger" /t REG_sz /d "comshortcut.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\comshortcutex.exe" /v "Debugger" /t REG_sz /d "comshortcutex.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\crossfirelq.exe" /v "Debugger" /t REG_sz /d "crossfirelq.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\crossfrclick.exe" /v "Debugger" /t REG_sz /d "crossfrclick.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\abuttonclickcf.exe" /v "Debugger" /t REG_sz /d "abuttonclickcf.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sellcenterdnf.exe" /v "Debugger" /t REG_sz /d "sellcenterdnf.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\concenterdnf.exe" /v "Debugger" /t REG_sz /d "concenterdnf.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ChiYanPC.exe" /v "Debugger" /t REG_sz /d "ChiYanPC.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rundl1l32.exe" /v "Debugger" /t REG_sz /d "rundl1l32.exe" /f


taskkill /f /im CliSetu*
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CliSetup.exe" /v "Debugger" /t REG_sz /d "CliSetup.exe" /f
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BCBrowser.exe" /v "Debugger" /t REG_sz /d "BCBrowser.exe" /f
taskkill /f /im BarBrowser*
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BarBrowser.exe" /v "Debugger" /t REG_sz /d "BarBrowser.exe" /f


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FlashPlayerApp.exe" /v "Debugger" /t REG_sz /d "FlashPlayerApp.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PPSpeedUp.exe" /v "Debugger" /t REG_sz /d "PPSpeedUp.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Defrag.exe" /v "Debugger" /t REG_sz /d "Defrag.exe" /f

reg add "HKCR\DesktopBackground\shell\* VNC\command" /d "vnc" /f
::reg add "HKCR\DesktopBackground\shell\** 呼叫网管\command" /d "C:\Windows\SysWOW64\callAdmin.exe" /f
start winx -code "link([[%PUBLIC%\Desktop\呼叫网管.lnk]], [[C:\Windows\SysWOW64\callAdmin.exe]],nil,[[%SystemRoot%\System32\SHELL32.dll]],23)"
start winx -code "link([[B:\工具箱\FiveM-GTA5.lnk]], [[Z:\steamgames\SteamLibrary2\steamapps\FiveM\FiveM.exe]])"
echo tskill wenhua^&timeout 2^&cd/d b:^&start wenhua.exe>B:\wenhua.bat
reg add "HKCR\DesktopBackground\shell\*** 重启文化\command" /d "explorer b:\wenhua.bat" /f


reg add "HKCR\DesktopBackground\shell\** 硬件检测" /v SubCommands /f
reg add "HKCR\DesktopBackground\shell\** 硬件检测\shell\D游戏跑分\command" /d "c:\windows\test.bat" /f
reg add "HKCR\DesktopBackground\shell\** 硬件检测\shell\C显示器\command" /d "Z:\qcfy_tools\TEST\ResetDisplaySetting.exe" /f
reg add "HKCR\DesktopBackground\shell\** 硬件检测\shell\A键盘检测\command" /d "Z:\qcfy_tools\TEST\KB2_105.exe" /f
reg add "HKCR\DesktopBackground\shell\** 硬件检测\shell\A鼠标检测\command" /d "Z:\qcfy_tools\TEST\KM.exe" /f
reg add "HKCR\DesktopBackground\shell\** 硬件检测\shell\B达尔优尊享版\command" /d "Z:\qcfy_tools\TEST\sbqd.bat" /f


::reg add "HKCR\DesktopBackground\shell\** 取消桌面遮挡\command" /t REG_sz /d "taskkill /f /im Rainmeter.exe" /f
::reg add "HKCR\DesktopBackground\shell\* 360极速浏览器\command" /t REG_sz /d "3 https://www.baidu.com/baidu.html" /f


mklink c:\windows\vnc.bat z:\qcfy_tools\remote\vnc.bat

start/b sed -i -e "4a taskkill /f /im tvnserver.exe" -e "5a ren tvnserver.exe 123" -e "9a copy/y z:\\qcfy_tools\\remote B:\\CloudAppCenter\\Diskless\\DisklessSpirit\\APP_CLIENT_CONTROL >nul" -e "$a cls" -e "$a @color 0e" -e "$a @title 远程控制" -e "$a echo." -e "$a echo      请告知机器号: %computername%" -e "$a pause >nul" -e "$a echo." -e "$a taskkill /f /im tvnserver.exe" -e "$a echo." -e "$a echo      远程进程已关闭" -e "$a pause >nul" b:\CloudAppCenter\Diskless\DisklessSpirit\APP_CLIENT_CONTROL\start.bat
::echo y|cacls "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" /t /p Everyone:r
::nvidia-smi -q |findstr GeForce&&md b:NVIDIA
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "192.168[.]" ^| findstr "IP"') do set iii= %%i
sed -i s#iii#%iii:~10,3%# ..\y\hw.bat
findstr sttt st.bat||copy/y st1.bat st.bat
::for /f "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "VV=%%a"
for /f "tokens=3  delims=." %%a in ('ver') do set "VV=%%a"
sed -i -e s#=abc#=%iii:~10,3%#g st.bat
sed -i -e s#=cba#=%VV%#g st.bat
md b:%VV%
copy/y st.bat ..\swy\st\Play.bat
ren z:\qcfy_tools\swy\st\boott.txt boot.txt


echo if not exist b:zh start Z:\qcfy_tools\y\qcfy_ks.exe Z:\qcfy_tools\y\uu.ahk >Z:\qcfy_tools\swy\uu.bat
echo if exist b:zh start Z:\本地应用\UUNetBar\uu_netbar.exe >>Z:\qcfy_tools\swy\uu.bat
mklink/j ..\XunYou Z:\本地应用\XunYou
echo [miscwindow]>..\XunYou\dialConfig.ini
echo visible=0 >>..\XunYou\dialConfig.ini
mklink/j C:\Users\Administrator\AppData\Roaming\Netease ..\g\Netease

::if %computername:~0,4% EQU TEST call:ttee
if exist "C:\Program Files\Riot Vanguard" call:VALORANT
if exist b:wbgj goto:eof
for /f "tokens=* delims="  %%w in ('dir /b B:\CloudAppCenter\App') do (
if exist B:\CloudAppCenter\App\%%w\Resource\Windows\SysWOW64\BmDesktop set cac=%%w
)

ren B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\cltplugins %random%cltplugins
::ren B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\AppUtil.zip %random%AppUtil
::copy /y play.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\AppUtil.zip
::ren B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\WxWebBrwoser.zip %random%WxWebBrwoser
::copy /y play.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\WxWebBrwoser.zip
::copy /y play.exe C:\Windows\SysWOW64\WxWebBrwoser.zip
copy /y play.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\TslGame.exe
copy /y play.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\gamecfyjlq.exe
copy /y play.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\gamednfbmzx.exe
del/q C:\Windows\SysWOW64\General*
del/q B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\General*
::if %computername:~0,4% EQU TEST start winx -code "link([[C:\Users\Administrator\Desktop\商品点购.lnk]], [[Z:\qcfy_tools\yxds\CoobarClt.exe]],'-商品点购',[[Z:\qcfy_tools\yxds\图标\商品点购.ico]])"



::if not exist b:wbgja start winx -code "link([[C:\Users\Administrator\Desktop\商品点购.lnk]], [[Z:\qcfy_tools\yxds\CoobarClt.exe ]],'-商品点购',[[Z:\qcfy_tools\yxds\图标\商品点购.ico]])"

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LOLHelper.exe" /v "Debugger" /t REG_sz /d "LOLHelper.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SteamPop.exe" /v "Debugger" /t REG_sz /d "SteamPop.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmRender.exe" /v "Debugger" /t REG_sz /d "BmRender.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmMotor.exe" /v "Debugger" /t REG_sz /d "z:\qcfy_tools\NF\Play.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmInstaller.exe" /v "Debugger" /t REG_sz /d "BmInstaller.exe" /f
ren B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\BmInstaller.exe %random%BmInstaller
taskkill /f /im BmInstaller.exe
taskkill /f /im bmr*
taskkill /f /im bmm*
taskkill /f /im DesktopLauncher.exe

echo "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmRender.exe" [2 8 19] >task.ini
echo "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmMotor.exe" [2 8 19] >>task.ini
echo "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BmInstaller.exe" [2 8 19] >>task.ini
echo HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband [2 8 19] >>task.ini
regini task.ini
copy /y b.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\BmInstaller.exe
copy /y b.exe B:\CloudAppCenter\App\%cac%\Resource\Windows\SysWOW64\desktop_package.zip

if exist "C:\Program Files\Riot Vanguard" exit
goto:eof



:test
::start "" "Z:\qcfy_tools\TEST\660\usb.exe"
goto:eof


:aa8
::Reg Add HKLM\SYSTEM\CurrentControlSet\iCafe8 /v admin /t REG_DWORD /d 1 /F
md b:\admin8
echo Reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GLPlatform.exe" /v Debugger /f >c:\windows\yxcd.bat
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GLPlatform.exe" /v "Debugger" /t REG_sz /d "z:\qcfy_tools\NF\Play.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AppUtilHD.exe" /v "Debugger" /t REG_sz /d "AppUtilHD.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AppUtilHD2.exe" /v "Debugger" /t REG_sz /d "AppUtilHD2.exe" /f
taskkill /f /im AppUti*

::crashreport
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\crashreport.exe" /v "Debugger" /t REG_sz /d "crashreport.exe" /f

goto:eof

:ban
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EAAntiCheat.GameServiceLauncher.exe" /v "Debugger" /t REG_sz /d "vban.bat" /f
goto:eof

:v
set w7=ExecPubg EvoGameSteam-Win64-Shipping BsgLauncher r5apex Stray WWE2K22_x64 Maneater-Win64-Shipping Tiger-Win64-Shipping TalesOfWild DreadHunger destiny2launcher eldenring PathOfExile_x64 Ixion NewWorldLauncher riftbreaker_win_release FarmingSimulator2022Game BrightMemoryInfinite-Win64-Shipping Icarus StateOfDecay2 RelicCardinal AoE3DE_s AoE2DE_s GoW SoTGame Cyberpunk2077 Overwatch geegeerun   
for %%w in (%w7%) do reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%w.exe" /v "Debugger" /t REG_sz /d "v.bat" /f
goto:eof
:vv
set w1=AtomicHeart Spider-Man MilesMorales FortniteClient-Win64-Shipping ZingangGame Deathloop BF2042 ForzaHorizon5 ForzaHorizon4 Prospect-Win64-Shipping Warhammer3 HaloInfinite TheCallistoProtocol bootstrapper "Dead Space"
for %%w in (%w1%) do reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%w.exe" /v "Debugger" /t REG_sz /d "vv.bat" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Diablo IV.exe" /v "Debugger" /t REG_sz /d "vv.bat" /f

goto:eof

:vvv
set w11=WoLong re4demo re4
for %%w in (%w11%) do reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%w.exe" /v "Debugger" /t REG_sz /d "vvv.bat" /f

ver|findstr 19043&&reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WoLong.exe" /v Debugger /f
goto:eof


:sg
powercfg -import Z:\qcfy_tools\g\powercfg.pow 991b4222-f694-41f0-9685-ff5bb260d999
powercfg /setactive 991b4222-f694-41f0-9685-ff5bb260d999
xcopy/sy env.ini C:\Users\Administrator\AppData\LocalLow\SogouPY\
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SogouUpdate.exe" /v "Debugger" /t REG_sz /d "SogouUpdate.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SogouCloud1.exe" /v "Debugger" /t REG_sz /d "SogouCloud.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SGSetc.exe" /v "Debugger" /t REG_sz /d "SGSetc.exe" /f
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SGDownload.exe" /v "Debugger" /t REG_sz /d "SGDownload.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SohuNews.exe" /v "Debugger" /t REG_sz /d "SohuNews.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SGPicFaceTool.exe" /v "Debugger" /t REG_sz /d "SGPicFaceTool.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SGTool1.exe" /v "Debugger" /t REG_sz /d "SGTool.exe" /f
ren "Z:\系统更新\64位输入法资源\搜狗拼音输入法\Program Files\SogouInput\Components\ComponentConfig.ini" %random%
start Z:\系统更新\64位输入法资源\搜狗拼音输入法\ImeInstall.exe
goto:eof


:delschtasks

schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE
schtasks /delete /f /tn *
schtasks /end /tn "\Microsoft\Windows\Wininet\CacheTask"
goto:eof

:ydn
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30308D} /f /reg:64
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0} /f /reg:64
::ren "Z:\Dolagame\禁闭求生(Steam)\Grounded\Maine\Binaries\Win64\SpeechSynthWrapper.dll" %random%
::start dxdiag.exe /dontskip /whql:off /t dx.txt

::regsvr32 /s /u C:\Windows\system32\IME\QQPinyinTSF\QQPinyinTSF.dll
::regsvr32 /s /u C:\Windows\System32\IME\QQWubiTSF\QQWubiTSF.dll

Reg Add "HKCU\Keyboard Layout\preload" /v 1  /t REG_SZ /d d0000804 /f
Reg Add "HKCU\Keyboard Layout\Substitutes" /v d0000804  /t REG_SZ /d 00000409 /f
::Reg Add "HKCU\Control Panel\International\User Profile" /v InputMethodOverride /t REG_SZ /d 0804:00000409 /f
Reg Add "HKCU\Control Panel\International\User Profile\zh-Hans-CN" /v 0804:00000409 /t REG_DWORD /d 1 /f
::Reg Add "HKCU\Control Panel\International\User Profile\zh-Hans-CN" /v 0804:{6A498709-E00B-4C45-A018-8F9E4081AE40}{82590C13-F4DD-44F4-BA1D-8667246FDF8E}} /t REG_DWORD /d 5 /f
start/b powershell -c Set-WinDefaultInputMethodOverride -InputTip "0804:00000409"
start/b powershell -c Set-WinLanguageBarOption -UseLegacySwitchMode
Reg Add "HKCU\Control Panel\Input Method" /v EnableHexNumpad  /t REG_DWORD /d 1 /f
powershell -c "{get-WinUserLanguageList | Set-WinUserLanguageList -Force}"

::start/b powershell -c "$OldList = Get-WinUserLanguageList; $OldList[0].InputMethodTips.Insert(0, '0804:00000409');Set-WinUserLanguageList zh-Hans-CN -force;Set-WinUserLanguageList -LanguageList $OldList -Force""
::taskkill /f /im ctfmon.exe
::taskkill /f /im ChsIME.exe

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 1 /f
Reg Add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v StartMenuLogOff /t REG_DWORD /d 1 /f
Reg Add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v ShowLockOption /t REG_DWORD /d 0 /f
Reg Add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v ShowSleepOption /t REG_DWORD /d 0 /f
gpupdate
md b:ydn
goto:eof




reg add "HKCR\DesktopBackground\shell\*** 开启QQ五笔\command" /t REG_sz /d "regsvr32 /s  C:\Windows\System32\IME\QQWubiTSF\QQWubiTSF.dll" /f

::regsvr32 /s  C:\Windows\System32\IME\QQWubiTSF\QQWubiTSF.dll
::echo DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("ActivateKeyboardLayout", UInt, 0x00000409, UInt, 256))>>ime.ahk
::start ..\y\qcfy_ks.exe ime.ahk
Reg Add "HKCU\Keyboard Layout\preload" /v 1  /t REG_SZ /d d0000804 /f
Reg delete "HKCU\Keyboard Layout\Preload" /v 2  /f
Reg Add "HKCU\Keyboard Layout\Substitutes" /v d0000804  /t REG_SZ /d 00000409 /f
Reg delete "HKCU\Keyboard Layout\Substitutes" /v 00000804  /f
Reg delete "HKCU\Keyboard Layout\Substitutes" /v d0010804  /f
Reg Add "HKCU\Control Panel\International\User Profile" /v InputMethodOverride /t REG_SZ /d 0804:00000409 /f
Reg Add "HKCU\Control Panel\International\User Profile\zh-Hans-CN" /v 0804:00000409 /t REG_DWORD /d 1 /f
Reg Add "HKCU\SOFTWARE\Microsoft\CTF\TIP\{6A498709-E00B-4C45-A018-8F9E4081AE40}\LanguageProfile\0x00000804\{82590C13-F4DD-44F4-BA1D-8667246FDF8E}" /v Enable /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\InputMethod\Settings\CHS /v "Default Mode" /t REG_DWORD /d 1 /f
powershell -c "& {get-WinUserLanguageList | Set-WinUserLanguageList -Force}"
powershell -c "Set-WinLanguageBarOption -UseLegacySwitchMode"
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQPYClipMonitor.exe" /v "Debugger" /t REG_sz /d "QQPYClipMonitor.exe" /f
taskkill /f /im QQPYClipMonitor.exe
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQPYUserCenter.exe" /v "Debugger" /t REG_sz /d "QQPYUserCenter.exe" /f
taskkill /f /im QQPYUserCenter.exe
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQPYConfig.exe" /v "Debugger" /t REG_sz /d "QQPYConfig.exe" /f
taskkill /f /im QQPYConfig.exe
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\QQWBUserCenter.exe" /v "Debugger" /t REG_sz /d "QQWBUserCenter.exe" /f
::taskkill /f /im QQWBUserCenter.exe
ren "C:\Program Files (x86)\Tencent\QQPinyin\6.6.6304.400\QQPYConfig.exe" %random%
ren "C:\Program Files (x86)\Tencent\QQPinyin\6.6.6304.400\QQPYUserCenter.exe" %random%
goto:eof
echo WinWait,MS_,,20 >aa.ahk
echo if ErrorLevel >>aa.ahk
echo.  exit>>aa.ahk
echo winhide
echo CoordMode, Mouse, Screen >>aa.ahk
echo Click 0,0 right >>aa.ahk
goto:eof


:ttee
if exist C:\Windows\SysWOW64\wxLog goto:eof
start Z:\qcfy_tools\y\fake.vbs clsmn
start winx -code "Desktop:SetWallpaper([[C:\windows\web\wallpaper\theme1\img13.jpg]])" 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LoadDTClient.exe" /v "Debugger" /t REG_sz /d "LoadDTClient.exe" /f
reg delete "HKCR\DesktopBackground\shell\** 呼叫网管" /f
reg delete "HKCR\DesktopBackground\shell\*** VNC" /f
reg add "HKCR\DesktopBackground\shell\ Steam\command" /t REG_sz /d "Z:\qcfy_tools\swy\st\qr.bat" /f
reg add "HKCR\DesktopBackground\shell\ TT\command" /t REG_sz /d "explorer C:\TT" /f
start winx -code "link([[z:\qcfy_tools\swy\st\tool\UU.lnk]],[[Z:\本地应用\UUNetBar\uu_netbar.exe]])"
start winx -code "link([[z:\qcfy_tools\swy\st\tool\XY.lnk]],[[Z:\qcfy_tools\XunYou\xunyou.exe]])"
mklink/j c:\TT B:\工具箱
echo exit>Z:\qcfy_tools\swy\xy.bat
goto:eof


Reg Add "HKCU\Software\Microsoft\GameBar" /v ShowStartuppanel /t REG_DWORD /d 0 /F
Reg Add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /F
Reg Add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehavior /t REG_DWORD /d 1 /F
Reg Add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /F
Reg Add "HKCU\System\GameConfigStore" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 2 /F
Reg Add "HKCU\System\GameConfigStore" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 1 /f
::reg add HKLM\SOFTWARE\Origin /v AutopatchGlobal /d false /f
::reg add HKLM\SOFTWARE\Origin /v Autoupdate /d false /f
::reg add HKLM\SOFTWARE\Origin /v TelemOO /d true /f
::reg add HKLM\SOFTWARE\Origin /v IsBeta /d false /f
::reg add HKLM\SOFTWARE\Origin /v OriginPath /d "Z:\我的游戏\对战平台\Origin\Origin\Origin.exe" /f
::reg add HKLM\SOFTWARE\Origin /v ClientPath /d "Z:\我的游戏\对战平台\Origin\Origin\Origin.exe" /f
::reg add HKLM\SOFTWARE\Origin /v InstallSuccesfull /d true /f
::reg add HKLM\SOFTWARE\Classes\origin /v "URL Protocol" /d "" /f
::reg add HKLM\SOFTWARE\Classes\origin\shell\open\command /d "\"Z:\我的游戏\对战平台\Origin\Origin\Origin.exe\" \"%%1\"" /f
::reg add HKLM\SOFTWARE\Classes\origin2 /v "URL Protocol" /d "" /f
::reg add HKLM\SOFTWARE\Classes\origin2\shell\open\command /d "\"Z:\我的游戏\对战平台\Origin\Origin\Origin.exe\" \"%%1\"" /f
::reg add HKLM\SOFTWARE\Classes\link2ea\shell\open\command /d "\"Z:\我的游戏\对战平台\Origin\Origin\EALink.exe\" \"%%1\" \"%%2\" \"%%3\" \"%%4\" \"%%5\" \"%%6\" \"%%7\" \"%%8\" \"%%9\"" /f

::reg add HKLM\SOFTWARE\Valve\Steam\Apps\1504980 /v OriginThinSetup /t REG_DWORD /d 1 /f

:testa
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\doreadme.exe" /v "Debugger" /t REG_sz /d "doreadme.exe" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AdWin.exe" /v "Debugger" /t REG_sz /d "AdWin.exe" /f
ren "C:/Program Files/shunwang" %random%
echo.>"C:/Program Files/shunwang"
echo y|cacls "C:/Program Files/shunwang" /t /p Everyone:r

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\WoLong.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AVA.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TdResLoad.exe" /v "Debugger" /t REG_sz /d "TdResLoad.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\oskin.exe" /v "Debugger" /t REG_sz /d "oskin.exe" /f


set exee=HWiNFO64 qqwb_client wenhua BmMotor BmRender
for %%a in (%exee%) do reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 1 /f

goto:eof

:VALORANT
copy/y z:\qcfy_tools\TEST\WinXShell_x64.exe z:\qcfy_tools\TEST\WinXShell.exe
mklink c:\Windows\WinXShell.jcfg Z:\qcfy_tools\TEST\WinXShell.jcfg
md b:desktop
::echo y|cacls b:desktop /t /p Everyone:r
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v desktop /t REG_EXPAND_SZ /d "b:\desktop" /f
::taskkill /f /im explorer.exe
::start winx -regist -daemon -winpe
echo cd /d Z:\Dolagame\VALORANT >VALORANT.bat
echo sed -i $d run.bat >>VALORANT.bat
echo sed -i $d run.bat >>VALORANT.bat
echo sed -i "$a goto:eof" run.bat >>VALORANT.bat
echo sed -i "$a exit" run.bat >>VALORANT.bat
echo call run.bat >>VALORANT.bat
echo call checkDX.bat >>VALORANT.bat
start VALORANT.bat
rd b:wbgj
del/q C:\Users\Administrator\Desktop\*.*

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LoadDTClient.exe" /v "Debugger" /t REG_sz /d "LoadDTClient.exe" /f
timeout 1
start winx -code Desktop:SetWallpaper([[z:\qcfy_tools\g\va.jpg]])
start winx -code "link([[%PUBLIC%\Desktop\UU.lnk]],[[Z:\本地应用\UUNetBar\uu_netbar.exe]])"
start winx -code "link([[%PUBLIC%\Desktop\XY.lnk]],[[Z:\本地应用\XunYou\xunyou.exe]])"
timeout 1

start winx -code "link([[%PUBLIC%\Desktop\Riot Client.lnk]], [[C:\Riot Games\Riot Client\RiotClientServices.exe]],nil,[[Z:\Dolagame\VALORANT\VALORANT\live\VALORANT.exe]])"
start ..\wh\Play.exe
goto:eof

:cpc
timeout 2
if not exist ..\TEST\aaaa goto aaa
goto:eof

:testb

Reg Add "HKCU\Software\Sysinternals\Process Monitor" /v EulaAccepted /t REG_DWORD /d 1 /F
::start "" "C:\附送工具\软件调试\Process Monitor.exe" 
md b:ttestt
::taskkill /f /im BmRender.exe
goto:eof
::b:r