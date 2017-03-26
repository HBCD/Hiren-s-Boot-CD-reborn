@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd BlueScreenView.*
@start "" /D"%TEMP%\HBCD" "BlueScreenView.exe"