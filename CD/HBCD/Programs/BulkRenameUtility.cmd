@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\Bulk Rename Utility.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\BulkRenameUtility.7z
@start "" /D"%TEMP%\HBCD" "Bulk Rename Utility.exe"