@echo off

title An lisis estad¡stico (Con archivos)

:: Comprueba si se especifica un argumento
if "%1"=="" echo Debe de especificarse un archivo valido & exit /B 1
:: Comprueba si existe el archivo de datos
if not exist %1 echo Debe de especificarse un archivo valido & exit /B 2

:: Inicializaci¢n de variables
:: N£mero de elementos
set /a "n=0"
:: Elemento con el valor m¡nimo
set /a "min=2147483647"
:: Elemento con el valor m ximo
set /a "max=0"
:: Suma de los elementos (para calcular la media aritm‚tica o promedio)
set /a "suma=0"
:: Suma del cuadrado de los elementos (para calcular la desviaci¢n est ndar)
set /a "suma2=0"

for /f %%L in (%1) do (
   for %%v in (%%L) do (
       :: Cuenta el n£mero de elementos
       set /a "n=n+1"
       :: Comprobar el m¡nimo
       call :cal_min %%v 
       :: Comprobar el m ximo
       call :cal_max %%v 
       :: Actualizar suma
       set /a "suma=suma+%%v"
       :: Actualizar suma de cuadrados
       set /a "suma2=suma2+(%%v*%%v)"
   )
)
:: C lculo de promedio (2 decimales)
set /a "promedio=(suma*100)/n"
set /a "ent_promedio=promedio/100"
set /a "d1_promedio=(promedio%%100)/10"
set /a "d2_promedio=promedio%%10"

:: C lculo de la desviaci¢n t¡pica (2 decimales)
set /a "var=((suma2*10000)/n)-(promedio*promedio)"
set /a "des=var"
if %var% NEQ 0 (
  for /L %%i in (1,1,25) do ( 
    set /a "des=((var/des)+des)/2" 
  )
)
set /a "ent_des=des/100"
set /a "d1_des=(des%%100)/10"
set /a "d2_des=des%%10"

:: Resultados
echo N£mero de elementos: %n%
echo Elemento m¡nimo: %min%
echo Elemento m ximo: %max%
echo Promedio: %ent_promedio%,%d1_promedio%%d2_promedio%
echo Desviaci¢n t¡pica: %ent_des%,%d1_des%%d2_des%

exit /B 0

:: Rutina para calcular el m¡nimo
:cal_min
    if %min% GTR %1 set min=%1
    exit /B

:: Rutina para calcular el m ximo
:cal_max
    if %max% LSS %1 set max=%1
    exit /B