@echo off
echo 1. monkedDev (monkeddev@inbox.ru)
echo 2. quality196 (monkeddev@gmail.com)
echo 3. Показать текущего пользователя
set /p choice="Выбери (1/2/3): "

if "%choice%"=="1" (
    git config --global user.name "monkedDev"
    git config --global user.email "monkeddev@inbox.ru"
    echo Переключено на monkedDev
) else if "%choice%"=="2" (
    git config --global user.name "quality196"
    git config --global user.email "monkeddev@gmail.com"
    echo Переключено на quality196
) else if "%choice%"=="3" (
    echo Текущий пользователь:
    git config --global user.name
    git config --global user.email
) else (
    echo Неверный выбор
)
pause