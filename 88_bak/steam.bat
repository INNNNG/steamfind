@echo off
echo ::shaoshaoshao >D:\qcfy_tools\swy\st\st1.bat
dir /b \\10.250.88.51\z$\Dolagame|find/c "team)"
echo move/y "Z:\Dolagame\��ʿ(Steam)\Kenshi" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\���ڵ���2(Steam)\Darkest*" Z:\steamgames\SteamLibrary3\steamapps\common\dd2 >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\쭿ᳵ��2(Steam)\The Crew 2" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat

echo move/y "Z:\Dolagame\ʹ���ٻ�����ս(Steam)\Call of Duty WWII" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ����ִ�ս����׼��(Steam)\Call of Duty Modern Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�����ɫ�ж�(Steam)\Call of Duty Black Ops" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ���ս������(Steam)\Call of Duty World at War" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�����ɫ�ж���ս(Steam)\Call of Duty Black Ops Cold War" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�4���ִ�ս�����ư�(Steam)\Call of Duty Modern Warfare Remastered" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�9����ɫ�ж�2(Steam)\Call of Duty Black Ops II" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�10������(Steam)\Call of Duty Ghosts" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�11���߼�ս��-�ƽ��(Steam)\Call of Duty Advanced Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�12����ɫ�ж�3(Steam)\Call of Duty Black Ops III" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�13������ս��(Steam)\Call of Duty - Infinite Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ�18���ȷ�(Steam)\Call of Duty Vanguard" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\ʹ���ٻ����ִ�ս��II 2022(Steam)\Call of Duty HQ" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat


for /f "tokens=* delims=" %%a in ('dir /b \\10.250.88.51\z$\Dolagame^|find "team)"') do (
	for /f "tokens=* delims=" %%b in ('dir /b "\\10.250.88.51\z$\Dolagame\%%a\appm*"') do (
	echo mklink Z:\steamgames\SteamLibrary3\steamapps\"%%b" "Z:\Dolagame\%%a\%%b" >>D:\qcfy_tools\swy\st\st1.bat	
	for /f "tokens=* delims=" %%c in ('dir /ad /b "\\10.250.88.51\z$\Dolagame\%%a"') do (
		echo mklink /d Z:\steamgames\SteamLibrary3\steamapps\common\"%%c" "Z:\Dolagame\%%a\%%c" ^|^|echo %%b %%a %%c ^>^>st.txt  >>D:\qcfy_tools\swy\st\st1.bat
		)
	)
)
rmdir /Q "%ProgramData%/Wargaming.net"
mklink /j "%ProgramData%/Wargaming.net" "Z:\Dolagame\̹������(Steam)\Wargaming.net"
::echo mklink /d Z:\steamgames\SteamLibrary3\steamapps\common\dd2 "Z:\Dolagame\���ڵ���2(Steam)\dd2" >>D:\qcfy_tools\swy\st\st1.bat

for /f "tokens=3 delims= " %%a in ('find /c /v "" "D:\qcfy_tools\swy\st\st1.bat"') do if %%a gtr 1700 echo goto:eof >>D:\qcfy_tools\swy\st\st1.bat

