::no muestra los comandos en pantalla , si no los resultados
@eho off

::Comprueba si ha pasado un parámetro
if "%1" == "" (
    echo debes introducir una ruta de archivo
    exit /b 1
)

::Comprueba si el parámetro existe o no 
if not exist "%1" (
    echo el archivo no existe
    exit /b 1
)

::Borra el archivo pasado por el parámetro 1
del "%1"
echo %1 se ha borrado