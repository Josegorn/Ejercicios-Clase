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
set /A num1=%1
set /A num2=%2

:: Comprobar si el divisor es cero
if %num2%==0 ( 
   echo Error: No se puede dividir entre cero
   exit /b
)

:: Calcular las partes entera de la division
set /A entero=num1 / num2
:: Calcular las partes decimal de la division
set /A resto=(num1 %% num2) * 1000 / num2

:: Eliminar ceroS iniciales en la parte decimal
for /f "tokens=* delims=0" %%a in ("%resto%") do set resto=%%a

:: Mostrar el resultado
echo El resultado de dividir %num1% entre %num2% es: %entero%.%resto%
endlocal

exit /b


