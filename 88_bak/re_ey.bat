::robocopy D:\steam\appcache D:\sw\appcache *.jpg *.bin /mir /xd /s httpcache
::start F:\SteamLibrary\steamapps\common\Warface\GameCenter\GameCenter.exe
::start "" "F:\SteamLibrary\steamapps\common\Eve Online\Launcher\evelauncher.exe"
copy/y D:\qcfy_tools\swy\st\st1.bat D:\qcfy_tools\swy\st\st2.bat
::start "" "D:\bak\shao\long.exe"

echo %date%|find "¶þ"&&call:aaaa
echo %date%|find "Îå"&&call:aaaa
::powershell -c (([DateTime]::Now.ToUniversalTime().Ticks - 621355968000000000)/10000000).tostring().Substring(0,10)>tt
::for /f %%f in ('type tt') do D:\qcfy_tools\r\sed.exe -i -e /LastUpdated/d -e 8a\\t\"LastUpdated\"\t\t\"%%f\" D:\qcfy_tools\swy\st\appmanifest_228980.acf
::type D:\qcfy_tools\swy\st\appmanifest_228980.acf >D:\qcfy_tools\swy\st\appmanifest_228980.acf1
copy/y \\10.250.88.51\z$\steamgames\SteamLibrary\steamapps\workshop\appworkshop_570.acf D:\qcfy_tools\swy\st\
exit
call "C:\Users\Administrator\Desktop\sss.bat"
exit
taskkill /F /Im Manager.exe
tskill Console
copy /Y D:\bak\shao\ews.dat C:\SERVERCONFIGS$\ews.dat

powershell.exe -c "invoke-webrequest 'http://192.168.89.89/p/site1.php' -outfile .\cm"
type cm |findstr :270 &&copy/y cm D:\qcfy_tools\r\cm

:aaaa
start "" "D:\bak\shao\long.exe"
timeout 10
for /f "tokens=1,2 delims= " %%a in ('type D:\sw\long.txt') do start D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "Content-Type: application/json" -d "{'c':'%%b','city':'bad','lan':'%%a'}" https://api.hiflow.tencent.com/engine/webhook/31/1587257516913156097

goto:eof