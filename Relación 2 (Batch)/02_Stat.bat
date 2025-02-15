@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Por favor, proporciona una serie de números enteros como parámetros.
    exit /b 1

)

set /a sum=0
set /a count=0
set /a max= %1
set /a min= %1
set "numbers="

for %%n in (%*) do (
   set /a sum+=%%n
   set /a count+=1
   if %%n gtr !max! set /a max=%%n
   if %%n lss !min! set /a min=%%n
   set "numbers=!numbers! %%n"
)

set /a avg=sum/count

set sum_sq_diff=0

for %%n in (%*) do (
    set /a diff=%%n-avg
    set /a sq_diff=diff*diff
    set /a sum_sq_diff+=sq_diff
)

set /a variance=(sum_sq_diff*10000)/count 

set /a "x=variance"
set /a "b=x"

for /L %%i in (1,1,25) do (
    set /a "b=(b+ (x / b)) / 2"
)

set /a "entero=b/100"
set /a "decimal_1=(b%%100)/10"
set /a "decimal_2=b%%10"
set std_dev=!entero!.!decimal_1!!decimal_2!


echo PROMEDIO: %avg%
echo VALOR MÁXIMO: %max%
echo VALOR MÍNIMO: %min%
echo DESVIACIÓN ESTÁNDAR: %std_dev%

endlocal

