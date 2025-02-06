@echo off
:: Para que el script no afecte al entorno global
setlocal

::Solicitar al usuario la ruta de la carpeta
set /p folder="Introduce la ruta de la carpeta: "

::Verifica si la carpeta existe
if not exist  "%folder%" (
    echo La carpeta especificada no existe
    :: Pausa para que el usuario pueda leer el mensaje
    pause
    exit /b
)

:: Cambiar al directorio especificado 
:: Pushd cambia al directorio especificado y guarda el directorio actual en la pila de directorios
:: >null para que no se muestre el mensaje de error
:: || para que se ejecute el comando siguiente si el anterior fallo
pushd "%folder%" >nul || (
    echo No se pudo acceder a la carpeta especificado
    pause
    exit /b
)

:: Lista y ordena los archivos .txt
echo Listado archivos .txt en la carpeta "%folder%" ordenados por nombre...
:: /b para que solo muestre el nombre del archivo
:: /O para ordenar los archivos
:: *.txt para que solo muestre los archivos con extensión .txt
:: > archivos.txt para guardar la lista de archivos en un archivo
dir /b /O *.txt  > archivos.txt

::Verifica si se genero contenido en el archivo
if exist archivos.txt (
    echo La lista de archivos se ha guardado en el archivo "archivos.txt".
) else (
    echo No se encontrraron archivos .txt en la carpeta especificada
)

::Regresa al directorio anterior
popd >nul

:: Para que el script no afecte al entorno global (Se cierra el entorno local)
endlocal

pause

