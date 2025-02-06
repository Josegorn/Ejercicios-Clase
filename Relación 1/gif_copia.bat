@echo off

:: Pedir al ususario la carpeta de origen

echo Porfavor , escribe la ruta de la carpeta de origen 
set /p origen=

::Definir la carpeta de destino

set destino=C:\gift

::Crear la carpeta de destino si no existe 

if not exist "%destino%" mkdir "%destino%"

::Copiar los archivos

copy "%origen%\*.gif""%destino%"

::Confirmar operacion

echo Losarchivos GIF han sido copiados a %destino%
pause 