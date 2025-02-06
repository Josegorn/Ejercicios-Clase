@echo off 

::Script para mover un archivo a la carpeta "basura" en el directorio rai


::Comprueba si se ha proporcionado un parámetro
if "%1"==""(
    echo No se ha proporcionado el nombre del archivo
    echo Uso: reciclarme.bat <nombre_del_archivo>
    pause
    exit /b
   
)
::Comprueba si el archivo especificado existe
if not exist "%1"(
   echo La carpeta "c:\basura" no existe. Por favor, créala antes de usar este script.
   pause
   exit /b
   
)

::Copia el archivo a la carpeta "basura"

echo Copiando el archivo "%1" a "c:\basura"...
copy "%1" "c:\basura\" >nul

:: Verifica si la copia fue exitosa
if exist "c:\basura\%~nx1" (
   echo El archivo se ha copiado exitosamente a "c:\basura".
) else (
   echo Hubo un error al copiar el archivo.
)
pause
