@pushd "%~dp0"
@7z.exe x -o"%SYSTEMROOT%" -y Files\Tools.7z TempFileCleaner.cmd
@start "" /D"%SYSTEMROOT%" "TempFileCleaner.cmd"