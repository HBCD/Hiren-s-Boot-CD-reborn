@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\3DPChip.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\3DPChip.7z
@start "" /D"%TEMP%\HBCD" "3DPChip.exe"