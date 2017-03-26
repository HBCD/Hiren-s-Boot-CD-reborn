@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd BulletsPassView.*
@start "" /D"%TEMP%\HBCD" "BulletsPassView.exe"