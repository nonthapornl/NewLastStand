@echo off
cd /d "%~dp0"
where py >nul 2>&1
if errorlevel 1 (
  echo Python is required. Install Python 3 from python.org and try again.
  pause
  exit /b 1
)
start "" "http://localhost:8766/"
echo Keep this window open while playing.
echo The game is available at http://localhost:8766/
py -3 -m http.server 8766 --bind 127.0.0.1
pause
