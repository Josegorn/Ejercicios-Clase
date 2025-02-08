@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Por favor, proporciona una serie de n�meros enteros como par�metros.
    exit /b 1

)

set sum=0
set count=0
set max= %1
set min= %1

for %%n in (%*) do (
   set /a sum+=%%n
   set /a count+=1
   if %%n gtr !max! set max=%%n
   if %%n lss !min! set min=%%n
   set nums[!count!]=%%n
)

set /a mean=sum/count

set sum_deviation=0

for /l %%i in (1,1,!count!) do (
    set num=!nums[%%i]!
    set /a diff=num-mean
    set /a deviation=diff*diff
    set /a sum_deviation+=deviation
)

for /f "tokens=* usebackq" %%v in (`powershell -command "[math]::sqrt(%sum_deviation% / %count%)"`) do set sttdev=%%v

echo PROMEDIO: %mean%
echo VALOR M�XIMO: %max%
echo VALOR M�NIMO: %min%
echo DESVIACI�N EST�NDAR: %sttdev%

endlocal

