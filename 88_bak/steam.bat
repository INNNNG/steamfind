@echo off
echo ::shaoshaoshao >D:\qcfy_tools\swy\st\st1.bat
dir /b \\10.250.88.51\z$\Dolagame|find/c "team)"
echo move/y "Z:\Dolagame\剑士(Steam)\Kenshi" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\暗黑地牢2(Steam)\Darkest*" Z:\steamgames\SteamLibrary3\steamapps\common\dd2 >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\飙酷车神2(Steam)\The Crew 2" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat

echo move/y "Z:\Dolagame\使命召唤：二战(Steam)\Call of Duty WWII" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤：现代战争标准版(Steam)\Call of Duty Modern Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤：黑色行动(Steam)\Call of Duty Black Ops" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤：战争世界(Steam)\Call of Duty World at War" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤：黑色行动冷战(Steam)\Call of Duty Black Ops Cold War" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤4：现代战争重制版(Steam)\Call of Duty Modern Warfare Remastered" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤9：黑色行动2(Steam)\Call of Duty Black Ops II" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤10：幽灵(Steam)\Call of Duty Ghosts" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤11：高级战争-黄金版(Steam)\Call of Duty Advanced Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤12：黑色行动3(Steam)\Call of Duty Black Ops III" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤13：无限战争(Steam)\Call of Duty - Infinite Warfare" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤18：先锋(Steam)\Call of Duty Vanguard" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat
echo move/y "Z:\Dolagame\使命召唤：现代战争II 2022(Steam)\Call of Duty HQ" Z:\steamgames\SteamLibrary3\steamapps\common\ >>D:\qcfy_tools\swy\st\st1.bat


for /f "tokens=* delims=" %%a in ('dir /b \\10.250.88.51\z$\Dolagame^|find "team)"') do (
	for /f "tokens=* delims=" %%b in ('dir /b "\\10.250.88.51\z$\Dolagame\%%a\appm*"') do (
	echo mklink Z:\steamgames\SteamLibrary3\steamapps\"%%b" "Z:\Dolagame\%%a\%%b" >>D:\qcfy_tools\swy\st\st1.bat	
	for /f "tokens=* delims=" %%c in ('dir /ad /b "\\10.250.88.51\z$\Dolagame\%%a"') do (
		echo mklink /d Z:\steamgames\SteamLibrary3\steamapps\common\"%%c" "Z:\Dolagame\%%a\%%c" ^|^|echo %%b %%a %%c ^>^>st.txt  >>D:\qcfy_tools\swy\st\st1.bat
		)
	)
)
rmdir /Q "%ProgramData%/Wargaming.net"
mklink /j "%ProgramData%/Wargaming.net" "Z:\Dolagame\坦克世界(Steam)\Wargaming.net"
::echo mklink /d Z:\steamgames\SteamLibrary3\steamapps\common\dd2 "Z:\Dolagame\暗黑地牢2(Steam)\dd2" >>D:\qcfy_tools\swy\st\st1.bat

for /f "tokens=3 delims= " %%a in ('find /c /v "" "D:\qcfy_tools\swy\st\st1.bat"') do if %%a gtr 1700 echo goto:eof >>D:\qcfy_tools\swy\st\st1.bat

