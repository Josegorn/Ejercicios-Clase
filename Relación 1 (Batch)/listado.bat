@echo off

::limpia la pantalla de la consola
cls 

::muestra el listado del directorio windows en forma de columnas hasta que se llene la pantalla
dir C:\Windows /p /w 

::pausa para que el usuario pueda ver el listado
pause
