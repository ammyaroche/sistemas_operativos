@echo off
chcp 65001 > nul
cls
echo          MAYOR O MENOR DE EDAD
echo.
set /p nombre=Ingrese su nombre: 
set /p apellido=Ingrese su apellido: 
set /p edad=Ingrese su edad: 
echo.

if %edad% GEQ 18 (
    echo La persona es mayor de edad.
    mkdir "%nombre% %apellido%"
    echo.
    echo Se ha creado la carpeta:
    echo %nombre% %apellido%
) else (
    echo La persona es menor de edad.
)
echo.
pause