#!/bin/bash

#Adivina un número con puntos
#-----------------
echo "Bienvenido al juego de adivinar un número"
echo -n "JUGADOR A:"
read jugador1
echo -n "JUGADOR B:"
read jugador2
echo -n "¿Cuántos turnos queremos jugar?: "
read turnos

puntos1=0
puntos2=0

for ((i=0; i<$turnos; i++)); do

	#Número aleatorio
	numero=$RANDOM
	numero=$(((numero%10)+1))

	#Tuno jugador 1
	echo "Turno $((i+1)) - Jugador: $jugador1"
	echo -n "Dime un número: "; read intento 
	#Comprobación
	if [ $numero -eq $intento ]; then
		echo "¡¡Acertaste $jugador1!!"
		puntos1=$((puntos1+1))
	else
		echo "¡¡Fallaste $jugador2!!" 
	fi

	#Número aleatorio
	numero=$RANDOM
	numero=$(((numero%10)+1))

	#Tuno jugador 2
	echo "Turno $((i+1)) - Jugador: $jugador2"
	echo -n "Dime un número: "; read intento 
	#Comprobación
	if [ $numero -eq $intento ]; then
		echo "¡¡Acertaste $jugador2!!"
		puntos2=$((puntos2+1))
	else
		echo "¡¡Fallaste $jugador2!!" 
	fi
done

echo "PUNTUACIÓN FINAL"
echo "$jugador1: $puntos1 puntos"
echo "$jugador2: $puntos2 puntos"

exit 0

	

