::Desactiva la visualizaci�n de commandos en la consola
@echo off

if "%1" == "" (
    ::Lista todos los archivos .bat,.exe y .com de forma paginada
    dir *.bat *.exe *.com /p
) else (
    ::Si se ha pasado un par�metro
    :: Lista los archivos con el nombre igual al par�metro introducido
    dir %1\*.bat %1\*.exe %1\*.com /p
)
pause