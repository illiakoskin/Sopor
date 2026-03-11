@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "ISCC=C:\Program Files (x86)\Inno Setup 6\ISCC.exe"

if not exist "%ISCC%" set "ISCC=C:\Program Files\Inno Setup 6\ISCC.exe"

if not exist "%ISCC%" (
  echo Inno Setup 6 compiler was not found.
  echo Install Inno Setup 6 and run this file again.
  pause
  exit /b 1
)

"%ISCC%" "%SCRIPT_DIR%SoporInstaller.iss"
if errorlevel 1 (
  echo Build failed.
  pause
  exit /b 1
)

echo.
echo Installer created in "%SCRIPT_DIR%output"
pause
