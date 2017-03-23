@echo off
set HBCDPath="%~dp0"
if %HBCDPath:~2,1%#==/# set WAIT=/WAIT
pushd "%~dp0"
if not defined APPDATA set APPDATA=%USERPROFILE%\AppData\Roaming
set CHKSYS=%SystemRoot%\System32
if exist %SystemRoot%\SysWOW64 set CHKSYS=%SystemRoot%\SysWOW64
if not exist %CHKSYS%\msvbvm60.dll HBCD\Programs\7z.exe x -aos -o%CHKSYS% HBCD\Programs\Files\DLL.7z msvbvm60.dll&%CHKSYS%\regsvr32 /s %CHKSYS%\msvbvm60.dll
echo.%WAIT%
start "" %WAIT% HBCD\HBCDMenu.exe
popd
