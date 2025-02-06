:: Para que solo se vea el resultado
@echo off
:: Comprobar argumentos
if "%1"=="" (
   echo Debes especifica el nombre del archivo
   exit /b 1
)
:: Comprobar si existe la carpeta
if not exist "%1" (
   echo La carpeta no existe
   exit /b 2
)
:: Crear el archivo
echo Estructura de carpetas: %1 > arbol.log
tree %1 >> arbol.log

exit /b 0