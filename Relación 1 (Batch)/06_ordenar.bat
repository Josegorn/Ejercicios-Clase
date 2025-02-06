:: Versión PROFE
@echo off

title Ordenar

if "%~1"=="" (
    ::Comprueba si el primer argumento es una cadena vac¡a (error 1), esta comparaci¢n hay que hacerla con comillas para que la comparaci¢n tenga algo que comparar, el ~ de %~1 elimina las comillas de %1 
    echo El comando necesita que se le indique una ruta valida para funcionar
    exit /B 1
)
if not exist %1 (
    ::Si no se espec¡fica una ruta v lida devuelve el error 2 
    echo Ruta de carpeta inv lida
    exit /B 2
)
type %1 | sort 2>nul

exit /B 0