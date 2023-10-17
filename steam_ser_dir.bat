if exist D:\steam_server cd /d D:\steam_server
if exist c:\steam_server cd /d c:\steam_server
if not exist aa goto kk
schtasks /delete /TN "steam_s" /f
schtasks /create /tn steam_s /xml wh.xml
rd /q aa
exit
:kk
netstat -aon|findstr 27037 ||goto ss
for /f "tokens=1" %%a in ('tasklist^|find "steamcmd.exe" /c') do if %%a gtr 1 goto ss
sed.exe -n "$p" logs\connection_log.txt |findstr test&&goto ss
sed.exe -n "$p" logs\remote_steamcmd.txt |findstr %time:~0,5%||goto tt
sed.exe -n "$p" logs\sitelicense_steamcmd.txt |findstr (3) &&goto ss
cls
echo ok
timeout 3 >nul
exit

:ss
tskill /a steamcmd
timeout 120
rd /Q/S logs
start bat.vbs steamcmd.exe
timeout 120
sed.exe -n "$p" logs\sitelicense_steamcmd.txt |findstr FAILED &&goto ss
exit

:tt
timeout 30
sed.exe -n "$p" logs\remote_steamcmd.txt |findstr %time:~0,5%||goto ss