@echo off

setlocal
title Busca-archivo

set blanco=[0m
set rojo=[91m
set verde=[92m
set azul=[92m

::Para poder usar los caracteres < y > hay que usar el carácter ^ como prefijo
::El formato del texto se consigue mediante el carácter de escape 0x18, este carácter especial se puede obtener pulsando Alt-L+027 (No funciona en Code)
::El termino %0 contiene el nombre del comando ejecutado, %~n0 contiene el nombre sin extensión
if "%~1"=="" echo AYUDA: %azul%%~n0 %rojo%^<nombre_archivo_a_buscar^>%blanco% & exit /B 1

::El comando FOR /R recorre de forma recursiva todos los subdirectorios especificados 
::La variable %CD% contiene la ruta del directorio activo, %CD:~0,3% corta la variable %CD% tomando solo los 3 primeros caracteres
::Acotamos el FOR /R a "%1*", esto acelera la búsqueda
::La expresión if %%~nxF==%~1 compara el nombre del archivo evaluado con el de %1, %%~nxF es la variable %%F mostrando solo el nombre y la extensión
for /R %CD:~0,3% %%F in (%1*) do if %%~nxF==%~1 echo %verde%%%~dpF%blanco%%%~nxF

endlocal
exit /B 0