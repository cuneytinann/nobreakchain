@echo off
chcp 65001 >nul
REM ════════════════════════════════════════════════════════════
REM  PROJEYI GITHUB REPOSUNA BAGLA (.git silindiyse / ilk kez)
REM  Bu .bat'i projenin KÖK klasorune koy ve bir kez calistir.
REM ════════════════════════════════════════════════════════════

cd /d "%~dp0"
echo Klasor: %CD%
echo.

REM --- .git zaten var mi kontrol ---
if exist ".git" (
  echo UYARI: Bu klasorde zaten bir .git var.
  echo Eger remote'u degistirmek istiyorsan asagidaki adim onu gunceller.
  echo.
)

REM --- Git deposu baslat (zaten varsa zarar vermez) ---
git init
git branch -M main

REM --- GitHub repo adresini sor ---
echo.
echo GitHub repo adresini gir.
echo Ornek: https://github.com/cuneytinann/REPO-ADI.git
set /p REPOURL="Repo URL: "

REM --- Eski remote varsa kaldir, yenisini ekle ---
git remote remove origin 2>nul
git remote add origin %REPOURL%

echo.
echo Baglanti kuruldu. Mevcut remote:
git remote -v
echo.
echo Simdi ilk push icin 2-PUSH.bat calistir.
pause
