@echo off
chcp 65001 >nul
cd /d "%~dp0"

set REPO_URL=https://github.com/monkedDev/Industrial-Hell.git
set BRANCH=main

if not exist ".git" (
    echo Первый запуск: инициализация репозитория...
    git init
    if not exist "README.md" (
        echo # Industrial-Hell >> README.md
    )
    git add README.md
    git commit -m "first commit"
)

git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin %REPO_URL%
)

git branch -M %BRANCH%
git add -A

for /f "tokens=1-3 delims=./ " %%a in ('date /t') do set TODAY=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set NOW=%%a:%%b
git commit -m "update %TODATE% %NOW%"

git push -u origin %BRANCH%

echo Готово.
pause