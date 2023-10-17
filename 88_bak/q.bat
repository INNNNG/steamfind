@echo off
set accounts=100_sq83725475 101_njkynet 102_tiangong88 103_bainianwk 104_lovedanshuiwan 105_dianfeng 106_lovecdma 107_qcfyhj 108_shao921 112_polefox 115_FXWB110 116_njyfwkgdd 117_huihuang 118_qcfywy 121_qcfybx 123_webjump 124_wjjb2008 125_njhuoniao 127_bnhongyun 130_w89815 132_qcfyccd 133_nmc2016 134_zlsk123 136_njmzlnet 139_njzlsk02 141_aws1108 143_qcfycs 145_qcfybt 147_qcfyfl 148_nowload 149_qcfycl 150_skyezu
set id=dtf6r7ui4mgpacahplk7nilb36
for %%x in (%accounts%) do for /f "tokens=1,2 delims=_" %%y in ('echo %%x') do (
	echo %%y %%z
	D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 2  -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "accounts=%%z"  https://netbar.qq.com/wg2/miniprogram/GenQrCode/switch_netbar/?r=0.0%%y --cookie "PHPSESSID=%id%"
	
	timeout 3
	setlocal enabledelayedexpansion  
	for /f "delims=" %%a in ('D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/fn/PrivilegeStat/index2?timeType=2&useType=1" --cookie "PHPSESSID=%id%"') do (
	   @set mac=%%a
	   @set mac=!mac:"=!
	   @set mac=!mac:{x=x!
	   @set mac=!mac:}]}=}]!
	    echo !mac!|findstr xAxisData &&D:\bak\shao\curl.exe --connect-timeout 2 -X POST -H "Content-Type: application/json" -d "{'c':'!mac!','lan':'%%y'}" "https://api.hiflow.tencent.com/engine/webhook/31/1688770396341219330"
	
	)
	timeout 10
)
pause
exit

D:\bak\shao\curl.exe --connect-timeout 2-X POST -H "Content-Type: application/json" -d "{'c':'{"xAxisData":["20231003","20231004","20231005","20231006","20231007","20231008","20231009","20231009"],"series":[{"name":"DNF","data":[2,2,1,2,3,3,4,1]},{"name":"CF","data":[6,7,9,4,18,4,8,3]},{"name":"LOL","data":[67,65,54,69,68,58,73,19]},{"name":"\u817e\u8baf\u89c6\u9891","data":[0,0,0,0,0,0,0,0]},{"name":"CFHD","data":[0,0,1,2,0,0,0,2]},{"name":"\u9006\u6218","data":[2,0,3,5,0,1,2,1]},{"name":"\u5361\u62c9\u6bd4\u4e18","data":[0,0,0,0,0,0,0,0]},{"name":"\u547d\u8fd0\u65b9\u821f","data":[0,5,1,1,0,0,0,0]},{"name":"","data":[0,0,0,0,0,0,0,0]},{"name":"\u65e0\u754f\u5951\u7ea6","data":[5,6,4,5,1,3,8,0]}]}','lan':'101'}" "https://api.hiflow.tencent.com/engine/webhook/31/1688770396341219330"

{xAxisData:[20230815,20230816,20230817,20230818,20230819,20230820,20230821,20230821],series:[{name:DNF,data:[4,4,5,4,3,1,1,0]},{name:CF,data:[7,14,16,9,12,11,10,2]},{name:LOL,data:[67,70,55,51,73,69,60,14]},{name:腾讯视频,data:[9,16,12,15,8,15,13,2]},{name:CFHD,data:[5,1,1,3,2,1,2,2]},{name:逆战,data:[4,1,3,1,4,3,3,0]},{name:卡拉比丘,data:[0,0,0,1,0,0,0,0]},{name:命运方舟,data:[0,0,0,0,0,0,0,0]},{name:无畏契约,data:[5,6,6,4,4,4,4,1]}]}