:: @echo off es para ocultar echo y on es para mostrarlo en cada linea de comando
:: tambien se puede agregar un mensaje
@echo off
color e
title Windows Optimization 
:: mode es para el tamaño de la sell 
:: x=120, y=50
mode 120,20
:: variables de entorno son se colocan entre los porcentaje
:: %userprofile es la ruta del usuario
:: archivos temporales eliminar

RMDIR /Q/S C:\Windows\Temp
RMDIR /Q/S %TEMP%
:: eliminar los  archivos en prefetch
RMDIR /Q/S C:\Windows\Prefetch

:inicio
rem limpiar la consola
cls
rem logo

echo WINDOS OPTIMIZATION 
ECHO ft Oni 
echo Opciones:
echo  ----------------------------------------------------------
echo =                                                          =
echo = 1. Mostrar carpetas donde se elimino los archivos vacios =
echo = 2. Pasar a eliminar los elementos del visor de eventos   =
echo =                                                          =
echo  ----------------------------------------------------------
set /p op=Digite una opcion(1/2):
if %op%==1 goto uno 
if %op%==2 goto dos 
pause > nul


:uno
cls
:: abrir las carpetas donde eliminamos las  pruebas
explorer.exe C:\Windows\Temp
explorer.exe %TEMP%
explorer.exe C:\Windows\Prefetch
goto inicio
pause  


:dos 
cls
start eventvwr
echo ====================================================
echo =                                                  =
echo =   1. Ir a a Registro de Windows                  =
echo =   2. En todas las opciones como :                =
echo =          Aplicacion,                             =
echo =          Seguridad,                              =
echo =          Instalacion,                            =
echo =          Sistema,                                =
echo =          Eventos Reenviados                      =
echo =   3. Le damos click derecho vaciar Registro      =
echo =   4. Repetir con todas las opciones              =
echo =                                                  =
echo ====================================================
pause 
exit