setlocal
@echo off
:: verifica so hay dos parametros : el usuario y la carpeta

if "%~1"=="" (
    echo Uso: bloquear.bat[usuario] [ruta_carpeta]
    echo Ejemplo: bloquear.bat usuario1 "c:\carpeta\ privada"
    exit /b 1
)

::asigna los parametros a variables
set usuario=%~1
set carpeta=%~2

::verifica si la carpeta existe
if not exist "%carpeta%" (
    exit /b 2
)

::bloquea el acceso al usuario

icacls "%carpeta%" /deny %usuario%:F >nul 2>&1
::icalcls es la herramienta principal para modificar permisos 
::de archivos y carpetas
::verifica si el comando se ejecuto correctamente
if %errorlevel% equ 0 (
    echo se ha bloqueado el acceso de "%usuario%" a "%carpeta%"
) else (
    echo Error al intentar bloquear el acceso.Verifique los parametros y permisos.

)
endlocal

exit /b 0