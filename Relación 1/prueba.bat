@echo off

setlocal
:: A: LIMPIAR LA PANTALLA
cls
:: B: Crea una nueva unidad llamada X: en una carpeta vacía.
echo Creando unidad virtual
set carpeta_virtual=.\carpeta_prueba\unidad_virtual
mkdir "%carpeta_virtual%"

subst X: "%carpeta_virtual%"
pause
:: c.	Cree un directorio llamado prueba en X:\ 
echo Creando directorio prueba
mkdir X:\prueba
pause
:: d.	Cree un listado de X:\ y almacene la salida en un archivo llamado lista.txt en X:\. 
echo Generando lista de X:
dir X:\ > X:\lista.txt
pause
:: e.	Copie el archivo lista.txt en el directorio prueba. 
echo Copiando lista.txt en el directorio prueba
copy X:\lista.txt X:\prueba\
pause
:: f.	Muestre el contenido del archivo lista.txt. 
echo Mostarndo contenido de lista.txt
type X:\lista.txt
pause
:: g.	Antes de realizar una operación se mostrará un mensaje por pantalla que indicará lo que se va a realizar. 
:: h.	Debe realizar una pausa después de cada operación.
:: i.	Al final debe de borrar todo y desmontar la unidad X:
echo Borrando todo y desmontando unidad X:
del /Q X:\prueba\lista.txt
rmdir /S /Q X:\prueba
del /Q X:\lista.txt
subst X: /D
rmdir /S /Q "%carpeta_virtual%"

endlocal

pause