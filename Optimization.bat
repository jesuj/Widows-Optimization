:: @echo off es para ocultar echo y on es para mostrarlo en cada linea de comando
:: tambien se puede agregar un mensaje
@echo off
title Windows Optimization 
:inicio
:: mode es para el tamaño de la sell 
:: x=120, y=50
mode 100,35
::Donde
::/Q: modo silencioso, no solicitará confirmación para eliminar carpetas.
::/S: ejecuta la operación en todas las carpetas de la ruta seleccionada.
::por lo tanto puedes usar para eliminar multiples carpetas y todo su contenido:
:: archivos temporales eliminar

RMDIR /Q/S C:\Windows\Temp
RMDIR /Q/S %TEMP%
:: eliminar los  archivos en prefetch
RMDIR /Q/S C:\Windows\Prefetch

rem limpiar la consola
cls
rem logo de oni :D
color 1
echo    __       __ __                __                                                              
echo   /  ^|  _  /  /  ^|              /  ^|                                                             
echo   $$ ^| / \ $$ $$/ _______   ____$$ ^| ______  __   __   __  _______                               
echo   $$ ^|/$  \$$ /  /       \ /    $$ ^|/      \/  ^| /  ^| /  ^|/       ^|                              
echo   $$ /$$$  $$ $$ $$$$$$$  /$$$$$$$ /$$$$$$  $$ ^| $$ ^| $$ /$$$$$$$/                               
echo   $$ $$/$$ $$ $$ $$ ^|  $$ $$ ^|  $$ $$ ^|  $$ $$ ^| $$ ^| $$ $$      \                               
echo   $$$$/  $$$$ $$ $$ ^|  $$ $$ \__$$ $$ \__$$ $$ \_$$ \_$$ ^|$$$$$$  ^|                              
echo   $$$/    $$$ $$ $$ ^|  $$ $$    $$ $$    $$/$$   $$   $$//     $$/                               
echo   $$/      $$/$$/$$/   $$/ $$$$$$$/ $$$$$$/  $$$$$/$$$$/ $$$$$$$/                                
echo     ______             __     __              __                     __     __                   
echo    /      \           /  ^|   /  ^|            /  ^|                   /  ^|   /  ^|                  
echo   /$$$$$$  ^| ______  _$$ ^|_  $$/ _____  ____ $$/ ________  ______  _$$ ^|_  $$/  ______  _______  
echo   $$ ^|  $$ ^|/      \/ $$   ^| /  /     \/    \/  /        ^|/      \/ $$   ^| /  ^|/      \/       \ 
echo   $$ ^|  $$ /$$$$$$  $$$$$$/  $$ $$$$$$ $$$$  $$ $$$$$$$$/ $$$$$$  $$$$$$/  $$ /$$$$$$  $$$$$$$  ^|
echo   $$ ^|  $$ $$ ^|  $$ ^| $$ ^| __$$ $$ ^| $$ ^| $$ $$ ^| /  $$/  /    $$ ^| $$ ^| __$$ $$ ^|  $$ $$ ^|  $$ ^|
echo   $$ \__$$ $$ ^|__$$ ^| $$ ^|/  $$ $$ ^| $$ ^| $$ $$ ^|/$$$$/__/$$$$$$$ ^| $$ ^|/  $$ $$ \__$$ $$ ^|  $$ ^|
echo   $$    $$/$$    $$/  $$  $$/$$ $$ ^| $$ ^| $$ $$ /$$      $$    $$ ^| $$  $$/$$ $$    $$/$$ ^|  $$ ^|
echo    $$$$$$/ $$$$$$$/    $$$$/ $$/$$/  $$/  $$/$$/$$$$$$$$/ $$$$$$$/   $$$$/ $$/ $$$$$$/ $$/   $$/ 
echo            $$ ^|                                                                                  
echo            $$ ^|                                                                                  
echo            $$/                   
echo        +-+ +-+ +-+   +-+   +-+ +-+ +-+ +-+ +-+
echo        ^|O^| ^|N^| ^|I^|   ^|-^|   ^|J^| ^|E^| ^|S^| ^|U^| ^|Z^|
echo        +-+ +-+ +-+   +-+   +-+ +-+ +-+ +-+ +-+
echo.
echo                            Opciones:
echo     ----------------------------------------------------------
echo    =                                                          =
echo    = 1. Mostrar carpetas donde se elimino los archivos vacios =
echo    = 2. Pasar a eliminar los elementos del visor de eventos   =
echo    =                                                          =
echo     ----------------------------------------------------------
set /p op=Digite una opcion(1/2):
if %op%==1 goto uno 
if %op%==2 goto dos 
pause > nul
exit

:uno
cls
color e 
mode 70,20
:: abrir las carpetas donde eliminamos las  pruebas
explorer.exe C:\Windows\Temp
explorer.exe %TEMP%
explorer.exe C:\Windows\Prefetch
echo Presione cual quier tecla para cerrar las carpetasabiercas.......
set op=3
pause > nul
:: para listar todos los procesos de las carpetas
:: tasklist /V /FI "IMAGENAME eq explorer.exe"
:: para cerrar las carpetas lo haremos atraves del su titulo
:: taskkill /im explorer.exe /fi "windowtitle eq <window name>"
taskkill /im explorer.exe /fi "windowtitle eq Temp"
taskkill /im explorer.exe /fi "windowtitle eq Prefetch"
goto inicio


:dos 
cls
color e 
mode 70,20
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