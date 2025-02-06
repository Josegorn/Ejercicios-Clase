:: Hace que los comandos no se repitan en la pantalla
@echo off
:: Busca todos los archivos .exe no diretório do Windows e subdiretórios
dir %windir%\*.exe /s /b > resultado.txt

exit /b 0