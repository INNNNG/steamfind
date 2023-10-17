@echo off
echo %1|findstr 1||pause
set accounts=100_sq83725475 101_njkynet 102_tiangong88 103_bainianwk 104_lovedanshuiwan 105_dianfeng 106_lovecdma 107_qcfyhj 108_shao921 112_polefox 115_FXWB110 116_njyfwkgdd 117_huihuang 118_qcfywy 121_qcfybx 123_webjump 124_wjjb2008 125_njhuoniao 127_bnhongyun 130_w89815 132_qcfyccd 133_nmc2016 134_zlsk123 136_njmzlnet 139_njzlsk02 141_aws1108 143_qcfycs 145_qcfybt 147_qcfyfl 148_nowload 149_qcfycl 150_skyezu

for %%x in (%accounts%) do echo %%x|findstr %1_ &&set aa=%%x
echo 1
set id=dtf6r7ui4mgpacahplk7nilb36
for /f "tokens=1,2 delims=_" %%a in ("echo %aa%") do (
	echo %%a %%b 2
	D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "accounts=%%b"  https://netbar.qq.com/wg2/miniprogram/GenQrCode/switch_netbar/?r=0.0%%a --cookie "PHPSESSID=%id%"
	
	D:\bak\shao\curl.exe --connect-timeout 1  -X POST -H "Content-Type: application/json" -d "[{\"mac\":\"%2\",\"desc\":\"%3\",\"id\":0}]" "https://netbar.qq.com/wg2/privilege/PC/addApi" --cookie "PHPSESSID=%id%" 
)