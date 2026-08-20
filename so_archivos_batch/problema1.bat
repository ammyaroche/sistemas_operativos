@echo off
chcp 65001 > nul
:menu
cls
echo              MENU PRINCIPAL
echo.

echo 1. ¿Qué es el CMD?
echo 2. ¿Qué es un comando MS-DOS?
echo 3. ¿Qué es el PowerShell?
echo 4. ¿Qué es un archivo Batch?
echo 5. Cerrar
echo.

set /p opcion=Seleccione una opcion: 
if %opcion%==1 goto cmd
if %opcion%==2 goto msdos
if %opcion%==3 goto powershell
if %opcion%==4 goto batch
if %opcion%==5 goto salir
echo.
echo Opcion no valida.
pause

goto menu
:cmd
cls
echo              ¿QUE ES EL CMD?
echo.
echo CMD significa Command Prompt o Simbolo del sistema.
echo Es una herramienta de Windows que permite ejecutar
echo comandos mediante una consola de texto.
echo Con CMD podemos crear, eliminar, copiar, mover y
echo renombrar archivos y carpetas, entre otras tareas.
echo.
pause

goto menu
:msdos
cls
echo          ¿QUE ES UN COMANDO MS-DOS?
echo.
echo Un comando MS-DOS es una instruccion que permite
echo realizar una accion mediante la linea de comandos.
echo Algunos ejemplos son DIR, CD, MD, COPY, DEL y REN.
echo Estos comandos permiten trabajar con archivos,
echo carpetas y otras funciones del sistema.
echo.
pause

goto menu
:powershell
cls
echo             ¿QUE ES POWERSHELL?
echo.
echo PowerShell es una herramienta de Windows que permite
echo administrar y automatizar tareas mediante comandos
echo y scripts.
echo Es mas avanzada que CMD y permite trabajar con
echo diferentes elementos del sistema operativo.
echo.
pause

goto menu
:batch
cls
echo           ¿QUE ES UN ARCHIVO BATCH?
echo.
echo Un archivo Batch es un archivo de texto que contiene
echo un conjunto de comandos que pueden ejecutarse de
echo forma secuencial y automatizada.
echo Los archivos Batch normalmente utilizan las
echo extensiones .BAT o .CMD.
echo.
pause

goto menu
:salir
cls
echo        PROGRAMA FINALIZADO
echo.
echo Gracias por utilizar el programa.
echo.
pause