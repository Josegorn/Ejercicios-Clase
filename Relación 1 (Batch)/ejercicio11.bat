@echo off
::Script para buscar un archivo en la unidad activa
setlocal
::Verifica si se ha propoorcionado un parametro
echo 1
if "%1"=="" (
   echo Uso: busca_archivo.bat nombre_del_archivo
   echo Este script busca un archivo en la unidad activa y muestra su ubicacion
   exit /b 1
)
echo 2
:: Variable para el archivo a buscar
set file_to_find=%1

:: Busca el archivo en la unidad activa
echo 3
echo Buscando "%file_to_find%" en la unidad activa...
for /r %%f in ("%file_to_find%") do (
   echo Archivo encontrado en: %%f
   exit /b 0
)

:: Mensaje si no se encuentra el archivo
echo No se encontro el archivo "%file_to_find%" en la unidad activa.
endlocal
pause
