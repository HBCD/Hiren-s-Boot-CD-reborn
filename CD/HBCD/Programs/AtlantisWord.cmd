@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\Atlantis.exe" goto z
7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd RunAsDate.*
7z.exe x -o"%TEMP%\HBCD" -y Files\Atlantis.7z
set ATLR=[\Software\Rising Sun Solutions, Inc.\Atlantis.1_x\
(
echo %ATLR%Internal]
echo AdviseAtStartUp=0
echo %ATLR%LoadSave]
echo ReloadDocs=0
REM echo %ATLR%RegInfo]
REM echo RegCode=XXXXXXXXXXXXX
REM echo RegTo=Shareware
)>"%TEMP%\HBCD\Atlantis.ini"
:z
start "" /D"%TEMP%\HBCD" "RunAsDate.exe" 01\01\2011 00:00:00 "%TEMP%\HBCD\Atlantis.exe" /lsi /ssi %*
exit