@echo off
chcp 65001 > nul

:menu
cls
echo          ARCHIVOS Y CARPETAS
echo.
echo 1. Ocultar archivos y carpetas
echo 2. Mostrar archivos y carpetas
echo 3. Salir
echo.

set /p opcion=Seleccione una opcion: 
if %opcion%==1 goto ocultar
if %opcion%==2 goto mostrar
if %opcion%==3 goto salir

echo.
echo Opcion no valida.
pause
goto menu

:ocultar
cls
echo       OCULTAR ARCHIVOS Y CARPETAS
echo.
set /p ruta=Ingrese la ubicacion: 
attrib +h "%ruta%\*" /s /d

echo.
echo Los archivos y carpetas han sido ocultados.
pause
goto menu
:mostrar
cls
echo       MOSTRAR ARCHIVOS Y CARPETAS
echo.

set /p ruta=Ingrese la ubicacion: 
attrib -h "%ruta%\*" /s /d
echo.
echo Los archivos y carpetas han sido mostrados.
pause
goto menu

:salir
cls
echo Programa finalizado.
pause