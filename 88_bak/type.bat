exit
@echo off
for /f "tokens=3 delims= " %%a in ('find /c /v "" "D:\qcfy_tools\swy\st\st1.bat"') do if %%a gtr 1700 calc