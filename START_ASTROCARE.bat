@echo off
setlocal
cd /d "%~dp0"
set "SERVER_CMD="
where py >nul 2>nul
if %errorlevel%==0 set "SERVER_CMD=py -3"
if not defined SERVER_CMD (
  where python >nul 2>nul
  if %errorlevel%==0 set "SERVER_CMD=python"
)
if defined SERVER_CMD (
  start "ASTROCARE local server - keep this window open" cmd /k "%SERVER_CMD% -m http.server 8765 --bind 127.0.0.1"
  timeout /t 2 /nobreak >nul
  if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "http://127.0.0.1:8765"
  ) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "http://127.0.0.1:8765"
  ) else (
    start "" "http://127.0.0.1:8765"
  )
) else (
  echo Python was not found. Trying to open the standalone app in your default browser.
  start "" "%~dp0index.html"
)
endlocal
