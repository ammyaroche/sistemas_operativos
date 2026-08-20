@echo off
chcp 65001 > nul
:menu
cls
echo              MENU PRINCIPAL
echo.

echo 1. Calculadora
echo 2. YouTube
echo 3. Word
echo 4. Excel
echo 5. Power Point
echo 6. EFPEM
echo 7. Cerrar
echo.

set /p opcion=Seleccione una opcion: 
if %opcion%==1 goto calculadora
if %opcion%==2 goto youtube
if %opcion%==3 goto word
if %opcion%==4 goto excel
if %opcion%==5 goto powerpoint
if %opcion%==6 goto efpem
if %opcion%==7 goto salir
echo.
echo Opcion no valida.
pause

goto menu
:calculadora
start calc

goto menu
:youtube
start https://www.youtube.com

goto menu
:word
start winword

goto menu
:excel
start excel

goto menu
:powerpoint
start powerpnt

goto menu
:efpem
start https://www.efpemusac.org/

goto menu
:salir
cls
echo Programa finalizado.
pause