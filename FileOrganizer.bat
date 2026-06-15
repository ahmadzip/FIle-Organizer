@echo off
setlocal EnableExtensions

cd /d "%~dp0"
set "SELF=%~nx0"

echo Organizing files in: %CD%
echo.

for %%D in (Music Video Documents Compressed Programs Others) do (
    if not exist "%%D" mkdir "%%D"
)

for %%F in (*) do (
    if /I not "%%~nxF"=="%SELF%" (
        call :OrganizeFile "%%~fF" "%%~xF"
    )
)

echo.
echo Done.
pause
exit /b

:OrganizeFile
set "FILE=%~1"
set "EXT=%~2"
set "DEST="

if /I "%EXT%"==".pdf" set "DEST=Documents"
if /I "%EXT%"==".doc" set "DEST=Documents"
if /I "%EXT%"==".docx" set "DEST=Documents"
if /I "%EXT%"==".xls" set "DEST=Documents"
if /I "%EXT%"==".xlsx" set "DEST=Documents"
if /I "%EXT%"==".ppt" set "DEST=Documents"
if /I "%EXT%"==".pptx" set "DEST=Documents"
if /I "%EXT%"==".txt" set "DEST=Documents"
if /I "%EXT%"==".rtf" set "DEST=Documents"
if /I "%EXT%"==".md" set "DEST=Documents"
if /I "%EXT%"==".odt" set "DEST=Documents"
if /I "%EXT%"==".epub" set "DEST=Documents"
if /I "%EXT%"==".mobi" set "DEST=Documents"
if /I "%EXT%"==".json" set "DEST=Documents"
if /I "%EXT%"==".xml" set "DEST=Documents"
if /I "%EXT%"==".yaml" set "DEST=Documents"
if /I "%EXT%"==".yml" set "DEST=Documents"
if /I "%EXT%"==".csv" set "DEST=Documents"

if /I "%EXT%"==".mp3" set "DEST=Music"
if /I "%EXT%"==".wav" set "DEST=Music"
if /I "%EXT%"==".flac" set "DEST=Music"
if /I "%EXT%"==".aac" set "DEST=Music"
if /I "%EXT%"==".m4a" set "DEST=Music"
if /I "%EXT%"==".ogg" set "DEST=Music"
if /I "%EXT%"==".opus" set "DEST=Music"
if /I "%EXT%"==".wma" set "DEST=Music"
if /I "%EXT%"==".mid" set "DEST=Music"
if /I "%EXT%"==".midi" set "DEST=Music"

if /I "%EXT%"==".mp4" set "DEST=Video"
if /I "%EXT%"==".mkv" set "DEST=Video"
if /I "%EXT%"==".avi" set "DEST=Video"
if /I "%EXT%"==".mov" set "DEST=Video"
if /I "%EXT%"==".wmv" set "DEST=Video"
if /I "%EXT%"==".webm" set "DEST=Video"
if /I "%EXT%"==".flv" set "DEST=Video"
if /I "%EXT%"==".m4v" set "DEST=Video"
if /I "%EXT%"==".3gp" set "DEST=Video"
if /I "%EXT%"==".mpg" set "DEST=Video"
if /I "%EXT%"==".mpeg" set "DEST=Video"

if /I "%EXT%"==".zip" set "DEST=Compressed"
if /I "%EXT%"==".rar" set "DEST=Compressed"
if /I "%EXT%"==".7z" set "DEST=Compressed"
if /I "%EXT%"==".tar" set "DEST=Compressed"
if /I "%EXT%"==".gz" set "DEST=Compressed"
if /I "%EXT%"==".bz2" set "DEST=Compressed"
if /I "%EXT%"==".xz" set "DEST=Compressed"
if /I "%EXT%"==".iso" set "DEST=Compressed"
if /I "%EXT%"==".cab" set "DEST=Compressed"
if /I "%EXT%"==".arj" set "DEST=Compressed"

if /I "%EXT%"==".exe" set "DEST=Programs"
if /I "%EXT%"==".msi" set "DEST=Programs"
if /I "%EXT%"==".bat" set "DEST=Programs"
if /I "%EXT%"==".cmd" set "DEST=Programs"
if /I "%EXT%"==".ps1" set "DEST=Programs"
if /I "%EXT%"==".appx" set "DEST=Programs"
if /I "%EXT%"==".appxbundle" set "DEST=Programs"
if /I "%EXT%"==".apk" set "DEST=Programs"
if /I "%EXT%"==".jar" set "DEST=Programs"

if not defined DEST set "DEST=Others"

if not exist "%DEST%" mkdir "%DEST%"
move /Y "%FILE%" "%DEST%\" >nul
echo Moved file to %DEST%
exit /b
