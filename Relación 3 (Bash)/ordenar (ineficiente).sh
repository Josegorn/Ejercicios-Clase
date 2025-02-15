#!/bin/bash

# Programa que ordena 3 numeros introducidos por argumento de menor a mayor y despues de mayor a menor

# Comprobamos que se han introducido 3 argumentos
if [ $# -ne 3 ]; then
    echo "Error: Numero de argumentos incorrecto"
    exit 1
fi

# Ordenamos de menor a mayor

# Si el primer argumento es menor al segundo
if [ $1 -lt $2 ]; then
    # Y al tercero
    if [ $1 -lt $3 ]; then
        # Muestra el primer argumento
        echo $1
        # Y si el segundo es menor al tercero se muestran en ese orden
        if [ $2 -lt $3 ]; then
            echo $2
            echo $3
        # Si no se muestran en orden inverso
        else
            echo $3
            echo $2
        fi
    # Si el primer argumento no es el menor
    else
        echo $3
        echo $1
        echo $2
    fi
# Si el primer argumento no es el menor
else
    # Si el segundo argumento es el menor
    if [ $2 -lt $3 ]; then
        echo $2
        if [ $1 -lt $3 ]; then
            echo $1
            echo $3
        else
            echo $3
            echo $1
        fi
    # Si el segundo argumento no es el menor
    else
        echo $3
        echo $2
        echo $1
    fi
fi