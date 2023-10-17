@echo off

D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "application/json, text/plain" -d "agencyId=365&barNameLike=00"  https://yun.shunwang.com/bar/leftBarList.action --cookie "sso.ticket=2f344c1b-85ca-43d7-a6a8-a431eccdfc2d; sid=f5d4756b-bd10-40b2-9b0b-d0006042665e"
