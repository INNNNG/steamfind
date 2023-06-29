if not exist b: exit
taskkill /f /im stea*
taskkill /f /im wf_menu*
taskkill /f /im GameBoxEx*
set hhh=C:\Windows\System32\drivers\etc\hosts
echo y|cacls %hhh% /p Everyone:f
echo. >>%hhh%
echo.127.0.0.1 api.steampowered.com >>%hhh%
echo. >>%hhh%1
echo.127.0.0.1 api.steampowered.com >>%hhh%1

del/q Z:\steamgames\steam\logs\cloud_log.txt
del/q Z:\steamgames\steam\logs\cef_log.txt
del/q Z:\steamgames\Steam\.crash
del/q Z:\steamgames\Steam\.ntfs_transaction_failed
del/q Z:\steamgames\steam\package\steam_client_win32
del/q Z:\steamgames\steam\package\steam_client_publicbeta_win32
del/q Z:\steamgames\steam\config\loginusers.vdf

del/q Z:\steamgames\Steam\steamapps\appmanifest_228980.acf
findstr MountedConfig appmanifest_228980.acf &&copy/y appmanifest_228980.acf z:\steamgames\SteamLibrary\steamapps\

copy/y .\config\config1.vdf .\config\config.vdf
findstr wmsjsteam config\config1.vdf && start/b sed 63d -i config\config1.vdf
echo %time:~0,1%|findstr 2 && start/b sed -e s#\"5\"#\"18\"# -e s#\"6\"#\"19\"# -i config\config.vdf
echo %time:~0,1%|findstr E && start/b sed -e s#\"5\"#\"23\"# -e s#\"6\"#\"0\"# -i config\config.vdf
start/b z:\qcfy_tools\TEST\nircmd.exe win hide title "网吧用户特权"
Reg add HKCR\steam\Shell\Open\Command /ve /t REG_sz /D "\"Z:\steamgames\Steam\steam.exe\" -- \"%1\"" /F
reg add HKCU\SOFTWARE\Valve\Steam\ActiveProcess /v ActiveUser /t reg_dword /d 0 /f
:bz

::dir /t:w "z:\steamgames\Steam\steamui\library.js"|findstr 5:43&&start/b sed  -e s#..Config.WEBAPI_BASE_URL#\"https://community.steam-api.com/\"# -e s#HighPerfMode#LowPerfMode# -e s#`repeat1(#`repeat11(# -e s#=.....GetClientSetting#=#g -e s#(.,.),setDays#(5),setDays# -e s#steamcommunity-a.akamaihd.net/#media.st.dl.eccdnx.com/# -e s#e,loading#e.replace('steamcdn-a.akamaihd.net','media.st.dl.eccdnx.com'),loading# -e s#Collapsed_3yfoe#Expanded_3s6_6# -e s#strImgURL#strImgURL.replace('.akamai.','.cloudflare.').replace('.cloudflare_.','.')# -e s#src:t.strImage#src:t.strImage.replace('steamcdn-a.akamaihd.net','media.st.dl.eccdnx.com')# -e s#creator.avatar,#creator.avatar.replace('.akamai.','.').replace('.cloudflare.','.').replace('steamstatic','st.dl.eccdnx'),# -e s#:\"0px\":#:\"%%\":# -i Z:\steamgames\steam\steamui\chunk~547eb3232.js

::dir /t:w "z:\steamgames\Steam\steamui\sp.js"|findstr 02:10&&start/b sed -e s#..Config.WEBAPI_BASE_URL#\"https://community.steam-api.com/\"# -e s#HighPerfMode#LowPerfMode# -e s#`repeat(#`repeat11(# -e s#=......GetClientSetting(\"library_disa#=(\"library_disa#g -e s#.,.),setDays#'4'),setDays# -e s#steamcommunity-a.akamaihd.net/#cdn.steamstatic.com/# -e s#Collapsed_3yfoe#Expanded_3s6_6# -e s#src:t.strImage#src:t.strImage.replace('steamcdn-a.akamaihd.net','cdn.steamstatic.com')# -e s#creator.avatar,#creator.avatar.replace('.akamai.','.').replace('.cloudflare.','.'),# -e s#:\"0px\":#:\"%%\":# -e s#Preview,src:\"#Preview,src1:\"# -i Z:\steamgames\steam\steamui\sp.js
::dir /t:w "z:\steamgames\Steam\steamui\sp.js"|findstr 02:10&&start/b sed -e s#resizeable#resizeable,left=210,top=180# -e s#..Config.COMMUNITY_BASE_URL+\"linkfilter#\"https://community.steamstatic.com/linkfilter# -i "Z:\steamgames\steam\steamui\library.js"
::dir /t:w "z:\steamgames\Steam\steamui\library.js"|findstr 02:10&&start/b sed  -e s#..Config.WEBAPI_BASE_URL#\"https://community.steam-api.com/\"# -e s#HighPerfMode#LowPerfMode# -e s#`repeat(#`repeat11(# -e s#=.....GetClientSetting#=#g -e s#.,.),setDays#'4'),setDays# -e s#steamcommunity-a.akamaihd.net/#cdn.steamstatic.com/# -e s#e,loading#e.replace('steamcdn-a.akamaihd.net','cdn.steamstatic.com'),loading# -e s#Collapsed_3yfoe#Expanded_3s6_6# -e s#strImgURL#strImgURL.replace('.akamai.','.').replace('.cloudflare.','.')# -e s#src:t.strImage#src:t.strImage.replace('steamcdn-a.akamaihd.net','cdn.steamstatic.com')# -e s#creator.avatar,#creator.avatar.replace('.akamai.','.').replace('.cloudflare.','.'),# -e s#:\"0px\":#:\"%%\":# -i Z:\steamgames\steam\steamui\chunk~547eb3232.js
::dir /t:w "z:\steamgames\Steam\steamui\library.js"|findstr 5:43&&copy/y library3 "Z:\steamgames\steam\steamui\library.js"

if exist Z:\steamgames\streg goto rd

for /f "tokens=* delims="  %%i in ('dir /a:sd /b z:\') do for /f "tokens=* delims=" %%d in ('dir /b /a:-d z:\%%i^|findstr .sys') do  del /q z:\%%i\%%d

for /f "delims=" %%i in ('dir /ad /b C:\Users\Administrator\AppData\Local\Temp') do (
   ren C:\Users\Administrator\AppData\Local\Temp\%%i _%%i
)
tasklist|findstr clsmn||start Z:\qcfy_tools\y\fake.vbs clsmn

dir /t:w "z:\steamgames\Steam\steamui\chunk~2dcc5aaf7.js"|findstr 10:14||goto js2
copy/y chunk "Z:\steamgames\steam\steamui\chunk~2dcc5aaf7.js"
copy/y library "Z:\steamgames\steam\steamui\library.js"
:js2

dir /t:w "z:\steamgames\Steam\steamui\chunk~2dcc5aaf7.js"|findstr 7:30|| goto js1
copy/y chunk2 "Z:\steamgames\steam\steamui\chunk~2dcc5aaf7.js"
copy/y library1 "Z:\steamgames\steam\steamui\library.js"
:js1

::start/b sed  -i -e "s#noverifyfiles#noverifyfiles\ +bPrefetchDownloadDetails\ 0\ #" swyst.vbs
copy/y swyst1.vbs swyst.vbs
::start/b sed  -i -e s#--## -e "s#noverifyfiles#noverifyfiles\ +bPrefetchDownloadDetails\ 0\ -vrdisable\ -vrskip#" swyst1.vbs
echo.#NoTrayIcon >"Z:\qcfy_tools\y\qcfy_j.ahk"
echo Sleep 800  >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo run, Z:\qcfy_tools\swy\play.exe  >>"Z:\qcfy_tools\y\qcfy_j.ahk" 
echo winwait,ahk_class TfrmMain,,4 >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo WinSetTitle,,,xunyou ^& uu  >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo Sleep 800  >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo WinMove,,,A_ScreenWidth/7,A_ScreenHeight/3 >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo Winwait,ahk_exe steam.exe,,10 >>"Z:\qcfy_tools\y\qcfy_j.ahk"
echo WinActivate >>"Z:\qcfy_tools\y\qcfy_j.ahk"
::if exist qr sed  -i s#-noreactlogin#-reactlogin# swyst.vbs
::if exist Z:\steamgames\steam\steamui\desktoproot.js sed  -i -e s#-noreactlogin##g -e s#-reactlogin##g swyst.vbs
::rd qr
if not exist b:zh ver|find "10.0." && start "" b:\xy.bat || start "" b:\xy7.bat
::ver|find "10.0."&&bat.vbs "Z:\steamgames\Steam\bin\steamservice.exe /install"
::tasklist|findstr xunyou||start z:\qcfy_tools\st\xy.exe
::tasklist|findstr uu_netbar||start Z:\本地应用\UUNetBar\uu_netbar.exe
regedit /s swyst.reg
::ren Z:\steamgames\Steam\depotcache _depotcache
ren z:\steamgames\steam\config _config
mklink /j z:\steamgames\steam\config config
ren C:\Users\Administrator\AppData\Local\Steam %random%
mklink /j C:\Users\Administrator\AppData\Local\Steam LSteam
::mklink /j LSteam\htmlcache Z:\SteamGames\Steam\_htmlcache
::del/q Z:\qcfy_tools\wh\play.bat
ren z:\steamgames\steam\userdata _userdata
ren z:\steamgames\steam\logs _logs
mklink /j z:\steamgames\steam\logs C:\Users\Administrator\Documents
copy/y .\config\libraryfolders.vdf Z:\steamgames\Steam\steamapps\
::move /y libraryroot.js Z:\steamgames\Steam\steamui\libraryroot.js
::ren Z:\steamgames\Steam\appcache _appcache


md Z:\steamgames\streg
goto uplay


:rd
start swyst.vbs
:login
tasklist/v |findstr 号&&goto zuh
wmic process get ExecutablePath|findstr /I "zuhao GGServer 租 玩 LBPCClient 补丁 免费 steam_ _steam" &&goto zuh
timeout 2
findstr 99999999999999999 Z:\steamgames\steam\config\loginusers.vdf && goto login_end
findstr Timestamp Z:\steamgames\steam\config\loginusers.vdf|| goto login
echo "users"{"99999999999999999"{}}>config\loginusers.vdf
:login_end
timeout 15
start Z:\steamgames\steam\steam.exe +app_install 228980
timeout 5
echo "users"{"99999999999999999"{}}>config\loginusers.vdf
start/b sed  -e "/api/d"  %hhh% -i
start/b sed  -e "/api/d"  %hhh%1 -i
exit




:uplay
::echo.>>Z:\steamgames\steam\steamui\css\library.css
::echo..appdetailsactivitysection_ViewLastNews_1EC1x,.appdetailscommunityfeed_BottomSection_3uabi, .appdetailsadditionalcontentsection_Manual_3LAiz, .appdetailscommunityfeed_Small_1dUfy___, .appdetailsactivitysection_FetchMoreContainer_39Zur , .appdetailscommunityfeed_VideoAspect_2oSH-___, .youtubeembed_sizeFull_2GDYx, .appdetailsreviewsection_PlayedForTime_BDa6l, .appdetailsscreenshotssection_NoneTaken_2_Wwn, .appdetailsadditionalcontentsection_Soundtracks_LO26Z, .appdetailsscreenshotssection_InstructionText_2QCkj, .appdetailsworkshopsection_WorkshopContainer_176QJ, .appdetailsworkshopsection_FeaturedLinks_3Mq6s, .appdetailsworkshopsection_FeaturedItemDesc_3SzXr, .appdetailsspotlight_ReviewContainer_3LE-6, .sharedappdetailsheader_TitleSection_1P_tv, .sharedappdetailsheader_ImgBlurBackdrop_ooM_c, .sharedappdetailsheader_ImgBlur_3XYFK, .appdetailsplaysection_SharedLibrary_z8GYw, .appdetailsbroadcastsection_Body_CFp7F, .appdetailssectionheader_Label_1SQ30, .appportrait_LibraryItemBoxShine_MyNb5, .appdetailsgameinfopanel_SocialMedia_2SfB1 { display: none!important;} >>Z:\steamgames\steam\steamui\css\library.css
::echo..appdetailssection_Body_5uvIN,.appdetailssection_RightColumnSection_3KfxI {background: none!important;box-shadow: none!important;} >>Z:\steamgames\steam\steamui\css\library.css
::echo..appdetailssection_RightColumnSection_3KfxI {padding: 1px!important;} >>Z:\steamgames\steam\steamui\css\library.css
::echo..appdetailscommunityfeed_InnerContainer_3Uy7t {max-width: 66%%!important;} >>Z:\steamgames\steam\steamui\css\library.css
::echo..appdetailscommunityfeed_AutoRow_290KS {grid-template-rows:none!important;padding-bottom:10px!important;} >>Z:\steamgames\steam\steamui\css\library.css

start/b sed -i -e $a.appdetailsspotlight_SpotlightDLC_ut0Yc,.appdetailsactivitysection_ViewLastNews_1EC1x,.appdetailsadditionalcontentsection_Manual_3LAiz,.appdetailsactivitysection_FetchMoreContainer_39Zur,.youtubeembed_sizeFull_2GDYx,.appdetailsreviewsection_PlayedForTime_BDa6l,.appdetailsscreenshotssection_NoneTaken_2_Wwn,.appdetailsadditionalcontentsection_Soundtracks_LO26Z,.appdetailsscreenshotssection_InstructionText_2QCkj,.appdetailsworkshopsection_WorkshopContainer_176QJ,.appdetailsworkshopsection_FeaturedLinks_3Mq6s,.appdetailsworkshopsection_FeaturedItemDesc_3SzXr,.appdetailsspotlight_ReviewContainer_3LE-6,.sharedappdetailsheader_TitleSection_1P_tv,.sharedappdetailsheader_ImgBlurBackdrop_ooM_c,.sharedappdetailsheader_ImgBlur_3XYFK,.appdetailsplaysection_SharedLibrary_z8GYw,.appdetailsbroadcastsection_Body_CFp7F,.appdetailssectionheader_Label_1SQ30,.appportrait_LibraryItemBoxShine_MyNb5,.appdetailsgameinfopanel_SocialMedia_2SfB1{display:none!important;} -e $a.appdetailssection_Body_5uvIN,.appdetailssection_RightColumnSection_3KfxI,.appdetailssection_Highlight_38t1m{background:none!important;box-shadow:none!important;} Z:\steamgames\steam\steamui\css\library.css
start/b sed  -i /Untitled/d "Z:\steamgames\steam\resource\vgui_schinese.txt"
start/b sed  -i /Untitled/d "Z:\steamgames\steam\resource\vgui_english.txt"

start/b sed -i -e "s#%%community%%/app/%%p1%%/guides/#https://community.cloudflare.steamstatic.com/app/%%p1%%/guides/?_cdn=china_eccdnx#" -e "s#%%community%%/sharedfiles/filedetails/?id=%%p1%%#https://community.cloudflare.steamstatic.com/sharedfiles/filedetails/?id=%%p1%%\&_cdn=china_eccdnx#" -e s#%%store%%/appl#https://store.st.dl.eccdnx.com/appl#g -e s#%%store%%/broadcast#https://store.st.dl.eccdnx.com/broadcast#g -e s#%%store%%/apph#https://store.st.dl.eccdnx.com/apph#g -e s#json=1\"#json=0\"# -e s#%%store%%/api#https://store.st.dl.eccdnx.com/api#g -e s#info/%%p1%%/\"#info/%%p1%%/?_cdn=china_eccdnx\"# -e s#StoreMarketingMessages#StoreMarketingMessage_# -e "$a StoreMarketingMessages{url\"https://store.st.dl.eccdnx.com/curator/29660712/?cc=CN\^&LAN=abc\^&VER=cba\^&CPU=cpu\^&GPU=gpu\^&GV=gv\#RecommendationsRows\"method\"internal\"}" -e s#iframe=1\"#iframe=1\&_cdn=china_eccdnx\"# -e s#buildid%%\"#buildid%%\&_cdn=cloudflare\"# Z:\steamgames\Steam\public\url_list.txt


start/b sed -e s#web_browser_home##g -i Z:\steamgames\steam\steamui\sp.js
start/b sed  -i -e s#WindowTitle\":\"Steam#WindowTitle\":\"# Z:\steamgames\steam\steamui\localization\shared_schinese-json.js
start/b sed -e "s#topMini\":\"Steam#topMini\":\"#" -e "s#Steam\",\"W#Staem\",\"W#g" -e s#Steam\",\"Acc#\",\"Acc# -e s#LibraryHome_MarketingMessage#LibraryHome_MarketingMessage1# -i Z:\steamgames\steam\steamui\localization\steamui_schinese-json.js

::cd /d "z:\qcfy_tools\swy\st"


if exist b:1440 start/b sed  -i -e s#838#1066# -e s#1174#1266# config\DialogConfig.vdf& copy/y 2 "LSteam\htmlcache\Local Storage\leveldb\000003.log"
if not exist b:1440 copy/y 1 "LSteam\htmlcache\Local Storage\leveldb\000003.log"
start swyst.vbs

::copy/y appinfo.vdf Z:\steamgames\steam\appcache\

::echo.127.0.0.1 cdn.steamstatic.com >>%hhh%
::echo.127.0.0.1 cdn.steamstatic.com >>%hhh%1
::echo.127.0.0.1 avatars.steamstatic.com >>%hhh%1
::echo.127.0.0.1 avatars.steamstatic.com >>%hhh%
echo.192.168.88.100 test.steampowered.com >>%hhh%
echo.192.168.88.100 crash.steampowered.com >>%hhh%
echo.192.168.88.100 crash.steampowered.com >>%hhh%1
echo.192.168.88.100 test.steampowered.com >>%hhh%1

echo 120.253.253.33 www.google-analytics.com >>%hhh%
echo 120.253.253.33 www.google-analytics.com >>%hhh%1

findstr subscribedby Z:\steamgames\SteamLibrary\steamapps\workshop\appworkshop_570.acf || copy/y appworkshop_570.acf Z:\steamgames\SteamLibrary\steamapps\workshop\

ping -n 1 23.46.155.218 -w 1|findstr 100 && goto aka
echo.23.46.155.218 clientconfig.akamai.steamstatic.com >>%hhh%
echo.23.46.155.218 clientconfig.akamai.steamstatic.com >>%hhh%1
goto aka
::ping -n 2 23.210.215.50 -w 1|findstr 100 || echo.23.210.215.50 clientconfig.akamai.steamstatic.com >>%hhh%
::ping -n 2 23.48.201.49 -w 1|findstr 100 || echo.23.48.201.49 clientconfig.akamai.steamstatic.com >>%hhh%
::ping -n 2 104.118.97.91 -w 1|findstr 100 || echo.104.118.97.91 store.steampowered.com >>%hhh%
ping -n 2 23.32.236.227 -w 1|findstr 100 || call:h1
ping -n 2 23.32.236.234 -w 1|findstr 100 || call:h2
:aka

md Z:\steamgames\SteamLibrary3\steamapps\common
echo "libraryfolder"{"contentid" "5124382737962157677"}> Z:\steamgames\SteamLibrary3\libraryfolder.vdf
::mklink/j Z:\steamgames\SteamLibrary3\steamapps\workshop Z:\steamgames\SteamLibrary\steamapps\workshop
call sta.bat



reg add "HKEY_CURRENT_USER\Software\Clever-Plays\Operation Tango" /v Setting_Language_h3116531166 /t REG_DWORD /d 8 /f

::ren Z:\qcfy_tools\g\play.exe tango.exe
::reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Operation Tango.exe" /v "Debugger" /d "Z:\qcfy_tools\g\tango.exe" /f



::ping -n 2 117.28.245.88 -w 1|findstr 100 || call:host_steam

start/b z:\qcfy_tools\TEST\nircmd.exe win move title "网吧用户特权" 0 -2000
::type uu.bat|findstr taskkill&&start ..\..\y\bat.vbs uu.bat
goto login
:zuh
taskkill /f /im stea*
start/b sed  -e "/api/d"  %hhh% -i
start/b sed  -e "/api/d"  %hhh%1 -i
start z:\steamgames\Steam\steam.exe -noshaders +library_folder_add Z:\steamgames\SteamLibrary -noshaders +library_folder_add Z:\steamgames\SteamLibrary2 -noshaders +library_folder_add Z:\steamgames\SteamLibrary3 -vrdisable +library_folder_add Z:\dolagame\Steam -vrdisable 
call B:\工具箱\Steam修复_无游戏修复.bat
exit

:host_steam
echo.117.28.245.88 steamcloudlrsuswest.blob.core.windows.net >>%hhh%
echo.117.28.245.88 steamclouduseast.blob.core.windows.net >>%hhh%
echo.117.28.245.88 steamcloudhk.blob.core.windows.net >>%hhh%
echo.117.28.245.88 steamcloudhk2.blob.core.windows.net >>%hhh%
echo.117.28.245.88 steamcloudsg.blob.core.windows.net >>%hhh%
echo.117.28.245.88 steamcloudseoul.blob.core.windows.net >>%hhh%
goto:eof

:h1
echo.23.32.236.227 steamstore-a.akamaihd.net >>%hhh%
echo.23.32.236.227 steamusercontent-a.akamaihd.net >>%hhh%
echo.23.32.236.227 steamcommunity-a.akamaihd.net >>%hhh%
echo.23.32.236.227 steamcdn-a.akamaihd.net >>%hhh%
echo.23.32.236.227 steamuserimages-a.akamaihd.net >>%hhh%
echo.23.32.236.227 community.akamai.steamstatic.com >>%hhh%


echo.23.32.236.227 steamstore-a.akamaihd.net >>%hhh%1
echo.23.32.236.227 steamusercontent-a.akamaihd.net >>%hhh%1
echo.23.32.236.227 steamcommunity-a.akamaihd.net >>%hhh%1
echo.23.32.236.227 steamcdn-a.akamaihd.net >>%hhh%1
echo.23.32.236.227 steamuserimages-a.akamaihd.net >>%hhh%1
echo.23.32.236.227 community.akamai.steamstatic.com >>%hhh%1
goto aka

:h2
echo.23.32.236.234 steamstore-a.akamaihd.net >>%hhh%
echo.23.32.236.234 steamusercontent-a.akamaihd.net >>%hhh%
echo.23.32.236.234 steamcommunity-a.akamaihd.net >>%hhh%
echo.23.32.236.234 steamcdn-a.akamaihd.net >>%hhh%
echo.23.32.236.234 steamuserimages-a.akamaihd.net >>%hhh%
echo.23.32.236.234 community.akamai.steamstatic.com >>%hhh%


echo.23.32.236.234 steamstore-a.akamaihd.net >>%hhh%1
echo.23.32.236.234 steamusercontent-a.akamaihd.net >>%hhh%1
echo.23.32.236.234 steamcommunity-a.akamaihd.net >>%hhh%1
echo.23.32.236.234 steamcdn-a.akamaihd.net >>%hhh%1
echo.23.32.236.234 steamuserimages-a.akamaihd.net >>%hhh%1
echo.23.32.236.234 community.akamai.steamstatic.com >>%hhh%1
goto aka



mklink/d Z:\Dolagame\Steam\steamapps\common\PUBG Z:\Dolagame\绝地求生(Steam)\PUBG
mklink Z:\Dolagame\Steam\steamapps\appmanifest_578080.acf Z:\Dolagame\绝地求生(Steam)\appmanifest_578080.acf
del/q Z:\steamgames\SteamLibrary3\steamapps\appmanifest_578080.acf
del/q Z:\steamgames\SteamLibrary\steamapps\appmanifest_578080.acf
sed -i s#G:#Z:#g Z:\Dolagame\绝地求生(Steam)\IntegrityCheckHistory.csv
xcopy/y Z:\Dolagame\绝地求生(Steam)\IntegrityCheckHistory.csv C:\Users\Administrator\AppData\Local\TslGame\Saved\IntegrityCheck\

reg add HKLM\SOFTWARE\Classes\link2ea /v "URL Protocol" /d "" /f
reg add HKLM\SOFTWARE\Classes\link2ea /d "URL:Link2EA Protocol" /f
reg add HKLM\SOFTWARE\Classes\link2ea\shell\open\command /d "\"C:\EA Desktop\Link2EA.exe\" \"%%1\" \"%%2\" \"%%3\" \"%%4\" \"%%5\" \"%%6\" \"%%7\" \"%%8\" \"%%9\"" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EAappInstaller.exe" /v "Debugger" /t REG_sz /d "EAappInstaller.exe" /f
echo "HKLM\SOFTWARE\Classes\link2ea\shell\open\command" [2 8 19] >task.ini
regini task.ini

md C:\Users\Administrator\AppData\Roaming\Trine2
copy options.txt C:\Users\Administrator\AppData\Roaming\Trine2\
del/q "Z:\steamgames\SteamLibrary2\steamapps\common\Trine 2\data\launcher\locale\launcher_locale0.fbll"
del/q "Z:\steamgames\SteamLibrary2\steamapps\common\Trine 2\data\launcher\locale\launcher_locale2.fbll"
del/q "Z:\steamgames\SteamLibrary2\steamapps\common\Trine 2\locale1.fbq"
del/q "Z:\steamgames\SteamLibrary2\steamapps\common\Trine 2\locale2.fbq"
::sttt