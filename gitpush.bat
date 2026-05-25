@echo off
cd /d "%~dp0"

echo Guncellemeler cekiliyor...
git pull origin main --no-rebase

git add .

set /p msg="Commit mesaji: "
if "%msg%"=="" set msg=Update

git commit -m "%msg%"

git push origin main

echo.
echo Push tamamlandi! Vercel deploy ediliyor...
echo https://nobreakchain.com
echo.
pause
