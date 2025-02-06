:: Versión David
:: Evita que se muestren las cosas repetidas por pantalla
@echo off

:: Muestra un mensaje de ayuda si no se pasa un parámetro

if "%1"=="" (
   echo uso:ordenar.bat [Archivo]

   echo muestra el contenido ordenado de un archivo de texto
   pause
   exit /b 1
)

:: Ordena el contenido si existiera el archivo
::if exist "%~1"(
::   echo Error: El fichero "%~1" no existe
::   exit /b 2
::)
::
:: Si no existe el archivo mostramos
:: else (
::   echo el archivo que que intentas buscar no existe 
::

type "%~1" | sort 2>nul
if errorlevel 1 (
   echo Error: No se pudo ordenar el archivo
   exit /b 3
)

exit /b 0
