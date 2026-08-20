@echo off
chcp 65001 > nul

echo          CREACION DE CARPETAS
echo.
if not exist "%~dp0nombres.txt" (
    echo No se encontro el archivo nombres.txt
    echo.
    echo Verifique que nombres.txt este en la misma
    echo carpeta que el archivo problema7.bat
    echo.
    pause
    exit
)
for /f "delims=" %%i in ('type "%~dp0nombres.txt"') do (
    mkdir "%~dp0%%i"
)
echo.
echo Las carpetas fueron creadas correctamente.
echo.
pause