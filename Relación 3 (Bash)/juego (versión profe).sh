#!/bin/bash

#Adivina un número
#-----------------

#Número aleatorio
numero=$RANDOM
numero=$(((numero%10)+1))

#Número apuesta
echo -n "Dime un número: "; read intento 

#1ª Comprobación
if [ $numero -eq $intento ]; then
	echo "¡¡Acertaste!!"
	exit 0
fi

echo "¡¡Fallaste!!"
if [ $numero -lt $intento ]; then
	echo -n "El número es MENOR, inténtalo de nuevo: "
else
	echo -n "El número es MAYOR, inténtalo de nuevo: "
fi
read intento


#2ª Comprobación
if [ $numero -eq $intento ]; then
	echo "¡¡Acertaste!!"
else
	echo "¡¡Fallaste de nuevo!!"
	echo "El número era el $numero"
fi
	
exit 0
