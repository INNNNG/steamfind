
copy/y "D:\qcfy_tools\r\np.bat" "D:\qcfy_tools\r\op.bat"
copy/y "D:\qcfy_tools\r\st.bat" "D:\qcfy_tools\r\st1.bat"
start cmd /c ""D:\bak\shao\steam.bat"
cd /d D:\nginx-1.20.2
taskkill /F /Im nginx.exe
timeout 3
nginx.exe
exit
:ss
timeout 30
schtasks /run /tn haha
exit
for /f "tokens=* delims=" %%f in ('D:\bak\shao\curl.exe --connect-timeout 5 http://192.168.89.89/p/mysql_st.php?q^=shao ') do (
	echo %%f |findstr [0-9]  ||exit
start D:\bak\shao\haha1.exe %%f
)