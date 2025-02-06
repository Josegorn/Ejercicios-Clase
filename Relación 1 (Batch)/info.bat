@echo off

:: Limpia la pantalla
cls

:: Muestra la hora
:: /t sirve para mostrar solo la hora
echo Hora del sistema:
time /t
:: Pausa el script
pause

:: Muestra la fecha
echo Fecha del sistema:
date /t
pause

:: Muestra la etiqueta del disco actual
:: /f selecciona el modo de busqueda por tokens
:: tokens=1 selecciona el primer token
:: delims=: selecciona el delimitador de los tokens
:: %%a es la variable que almacena el token
:: 'cd' ejecuta el comando cd y lo convierte en una cadena de texto
:: do ejecuta el comando para mostrar el token (la etiqueta del disco)
echo Etiqueta del disco actual:
for /F "tokens=1 delims=:" %%a in ('cd') do echo La etiqueta del disco es %%a:
pause

exit /b 0