@echo off
cd /d D:\bak\shao

set id=dtf6r7ui4mgpacahplk7nilb36
D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/privilege/PC/grantData/2?accredit=1" --cookie "PHPSESSID=%id%" 

set t=8ce2121c-ec39-4524-ac3c-e9caf2807229
set s=1f4ee576-aba4-4354-8d42-d5729fac7912

D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "application/json, text/plain" -d "agencyId=365&barNameLike=00"  https://yun.shunwang.com/bar/leftBarList.action --cookie "sso.ticket=8ce2121c-ec39-4524-ac3c-e9caf2807229; sid=1f4ee576-aba4-4354-8d42-d5729fac7912"


timeout 5