#!/bin/bash

#Verificar si se ha introducido un parametro
if[ -z "$1"]; then
    echo "Error: No se ha introducido ningun parametro"
    exit 1
fi

#Buscar el UID en el archivo
USER_NAME=$(awk -F: -v UID=$1 `{if($3==UID) print $1}` /etc/passwd)

#Verificar si se ha encontrado el UID
if[-n "$USER_NAME"]; then
    echo "El nombre de usuario es: $USER_NAME"
else
    echo "Error: No se ha encontrado el UID"
    exit 1
fi