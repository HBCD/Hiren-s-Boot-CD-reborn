@pushd "%~dp0"
@if "%COMPUTERNAME:~0,6%"=="MiniXP" start "" /wait hwpnp.exe -all +ACPI\ACPI#$s=@Battery /p /u
@7z.exe x -o"%TEMP%\HBCD\BattStat" -y Files\BattStat.7z
@start "" /D"%TEMP%\HBCD\BattStat" "BattStat.exe"