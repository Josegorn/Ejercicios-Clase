#!/bin/bash

#Juego de adivinar un número
numero_secreto=$((1 + RANDOM % 10))
echo -n "Adivina el número secreto entre 1 y 10:"
read numero

if [$numero -eq $numero_secreto]; then
    echo "¡Felicidades! Has adivinado el número secreto"
else
    echo "Lo siento, el número secreto era $numero_secreto"
fi
echo -n "Vuelve a intentarlo:"
read numero2

if [$numero2 -eq $numero_secreto]; then
    echo "¡Felicidades! Has adivinado el número secreto"
else
    echo "Lo siento, el número secreto era $numero_secreto"
fi


