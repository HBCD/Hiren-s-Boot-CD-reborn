@setlocal enableextensions
@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\Avira" -y Files\AviraAntiVir.7z
@copy /y 7z.* "%TEMP%\HBCD\Avira">nul
@if not exist %SystemRoot%\System32\msvcr90.dll 7z.exe x -o"%TEMP%\HBCD\Avira" -y Files\DLL.7z ms*90.dll
@start "" /D"%TEMP%\HBCD\Avira" "AviraScan.cmd" %~dp0