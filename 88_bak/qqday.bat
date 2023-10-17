@echo off
cd /d D:\bak\shao
echo. >qq.txt
set accounts=100_sq83725475 101_njkynet 103_bainianwk 104_lovedanshuiwan 105_dianfeng 106_lovecdma 107_qcfyhj 112_polefox 115_FXWB110 116_njyfwkgdd 117_huihuang 118_qcfywy 121_qcfybx 123_webjump 124_wjjb2008 127_bnhongyun 130_w89815 132_qcfyccd 133_nmc2016 134_zlsk123 139_njzlsk02 143_qcfycs 147_qcfyfl 148_nowload 149_qcfycl 150_skyezu

set id=dtf6r7ui4mgpacahplk7nilb36
for %%x in (%accounts%) do for /f "tokens=1,2 delims=_" %%y in ('echo %%x') do (
	echo %%y %%z
	D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "accounts=%%z"  https://netbar.qq.com/wg2/miniprogram/GenQrCode/switch_netbar/?r=0.0%%y --cookie "PHPSESSID=%id%"
	
	timeout 3
	D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/privilege/PC/grantData/26?per_page=1&accredit=-1" --cookie "PHPSESSID=%id%" -o D:\qcfy_tools\comgame\%%y.txt

	timeout 3
	findstr pc_accredit_status D:\qcfy_tools\comgame\%%y.txt ||start D:\bak\shao\curl.exe --connect-timeout 1 -X POST -H "Content-Type: application/json" -d "{'c':'qqday 2FA %%y %%z ','city':'lx','lan':'999'}" https://api.hiflow.tencent.com/engine/webhook/31/1702677982692270081
	findstr pc_accredit_status D:\qcfy_tools\comgame\%%y.txt ||exit
	findstr type_desc D:\qcfy_tools\comgame\%%y.txt ||sed -i -e s#.*mcode\":{## D:\qcfy_tools\comgame\%%y.txt
	findstr type_desc D:\qcfy_tools\comgame\%%y.txt &&sed -i -e s#.*mcode\":{#___# D:\qcfy_tools\comgame\%%y.txt
)

sed -i -e s#},\"pgconf.*## D:\qcfy_tools\comgame\1*.txt

exit

	echo %%y >>qq.txt
	for /f "delims=" %%a in ('D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/fn/PrivilegeStat/index2?timeType=2&useType=1" --cookie "PHPSESSID=%id%"') do echo lan|findstr lan&&sed -i "/%%y/d" qq.txt
	
	
set cookie=100_96ltrtgnhsacgqghv1684jrki7 101_cq5j52eoc9jr0hqf7t2t06knh0 103_635i5svq7bkjlf3nh3sh5rf681 104_np48encsael37acoghbamk4au7 105_7n33v7q7s6ae2bro789uljhj23 106_g64mhqfntckbanfi8nro3b6sk6 107_bu3m3lcs5amtut6d1rqjffb343 108_dtf6r7ui4mgpacahplk7nilb3 112_2m5m1niusd5if76k2c0i6nek70 115_3ig2oqstbfnlhk2m9l3fro53l2 116_m23lsguuh1haropg42s4utg8n1 117_s33ae7vag6vngrlukau2cmcs57 118_d2k31voul7hpa2jv82gt55l3e7 121_r2n3be46qq45358jfal37tsu53 123_d8dp2pvpdq8us1h3leqb198r01 124_1jac5k2rooohpucv673u0e74p4 127_39khsos24b5p77g25rilvb99q5 130_pipmrmrmjh2qvdvrqse09h5ut1 132_rs12rql5pnv5r8qei1o8t25n44 133_h1t53514htibceakd0jchlau93 134_j1vomlemrrspkjedp4agjdllm0 136_dtf6r7ui4mgpacahplk7nilb3 139_c6m9llqao0o26t1uisbmp79k01 141_ld52g7i6dujpjb8jh6i1r2nin4 143_qqqkiuq5evcr8jb1t9sqrqk2n3 145_dtf6r7ui4mgpacahplk7nilb3 147_r7khds76qtgrqf2ijjmuk6m0c2 148_haghciag22eie3ipog2b6h7gn6 149_5fs1e3tfsgmhl6arklaliqaid7 150_e5f2kgasoor5380a5achhmvtn3

for %%x in (%cookie%) do for /f "tokens=1,2 delims=_" %%y in ('echo %%y %%x') do (
	echo %%y >>qq.txt
	for /f "delims=" %%a in ('D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/fn/PrivilegeStat/index2?timeType=2&useType=1" --cookie "PHPSESSID=%%z"') do echo lan|findstr lan&&sed -i "/%%y/d" qq.txt

	timeout 3
)


pause
exit



for %%x in (%cookie%) do for /f "tokens=1,2 delims=_" %%y in ('echo %%y %%x') do (
	echo %%y >>qq.txt
	for /f "delims=" %%a in ('D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/fn/PrivilegeStat/index2?timeType=2&useType=1" --cookie "PHPSESSID=%%z"') do echo lan|findstr lan&&sed -i "/%%y/d" qq.txt

	timeout 3
)



set accounts=123-webjump 101-njkynet 148-nowload 108-shao921 102-tiangong88 136-njmzlnet 124-wjjb2008 106-lovecdma 112-polefox 104-lovedanshuiwan 134-zlsk123 117-huihuang 100-sq83725475 105-dianfeng 139-njzlsk02 150-skyezu 115-FXWB110 125-njhuoniao 130-w89815 103-bainianwk 127-bnhongyun 132-qcfyccd 133-nmc2016 149-qcfycl 141-aws1108 116-njyfwkgdd 121-qcfybx 147-qcfyfl 107-qcfyhj 118-qcfywy 143-qcfycs 145-qcfybt
set id=dtf6r7ui4mgpacahplk7nilb36
for %%x in (%accounts%) do for /f "tokens=1,2 delims=-" %%y in ('echo %%y %%x') do (
	D:\qcfy_tools\TEST\curl\curl.exe --connect-timeout 1  -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "accounts=%%x"  https://netbar.qq.com/wg2/miniprogram/GenQrCode/switch_netbar/?r=0.0%%y --cookie "PHPSESSID=%id%"
	for /f "delims=" %%a in ('D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/privilege/PC/grantData/26?per_page=1&accredit=1" --cookie "PHPSESSID=dtf6r7ui4mgpacahplk7nilb36"') do echo %%a

	timeout 31
)
pause
D:\bak\shao\curl.exe "https://netbar.qq.com/wg2/privilege/PC/grantData/26?per_page=1&accredit=-1" --cookie "PHPSESSID=dtf6r7ui4mgpacahplk7nilb36" -o D:\qcfy_tools\comgame\141.txt
