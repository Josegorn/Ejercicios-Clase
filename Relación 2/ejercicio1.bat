@echo off
::Script para dividir dos numero enteros con hasta tres decimales de presicion
setlocal
:: Verificar si se pasaron dos parametros

if "%~2"=="" (
   echo Por favor, proporciona dos numero enteros como parametros
   echo Ejemplo: script.bat 10 3
   exit /b
)

:: Asignar parametros a variables
set num1=%1
set num2=%2

:: Comprobar si el divisor es cero
if %num2%==0 ( 
   echo Error: No se puede dividir entre cero
   exit /b
)

::Escalar la operacion para manejar decimales

set /A resultado=%num1% * 1000 / %num2%

:: Calcular las partes de la division

:: Parte entera
set entero=%resultado:~0,-3%
if not defined entero set entero=0
:: Parte decimal
set decimales=%resultado:~0,-3%

:: Eliminar ceroS iniciales en la parte decimal
for /f "tokens=* delims=0" %%a in ("%decimales%") do set decimales=%%a

:: Mostrar el resultado
echo El resultado de dividir %num1% entre %num2% es: %entero%.%decimales%
endlocal

exit /b


