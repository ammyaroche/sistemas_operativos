@echo off
chcp 65001 > nul

mkdir "Batch - Ciclos"
mkdir "Batch - Ciclos\CARPETAS"
mkdir "Batch - Ciclos\CARPETAS PARES"
mkdir "Batch - Ciclos\CARPETAS IMPARES"

for /L %%i in (1,1,40) do (
    mkdir "Batch - Ciclos\CARPETAS\carpeta %%i"
)
for /L %%i in (2,2,60) do (
    mkdir "Batch - Ciclos\CARPETAS PARES\carpeta %%i"
)
for /L %%i in (1,2,39) do (
    mkdir "Batch - Ciclos\CARPETAS IMPARES\carpeta %%i"
)
echo.
echo       DIRECTORIOS CREADOS
echo.
pause