#!/bin/bash

#verificar si tiene os dos argumentos necesarios
if [ $# -ne 2 ]; then
    echo "Error:Debes de introducir los dos argumentos "
    echo "El primero el numero  y el segundo la moneda "
    exit 1
fi

num1=$1
moneda=$2

if [ $moneda == "euros" ]; then
    echo -n "$num1 € en dolares es ==> "
    echo "scale=3; $num1 *1.05 " | bc
    exit 0
fi

if [ $moneda == "dolares" ]; then
    echo -n "$ $num1 en euros es ==> "
    echo "scale=3; $num1 *0.95 " | bc
    exit 0
fi