#!/bin/bash

function mayor_de_tres(){


    if [ $1 -gt $2 ] && [ $1 -gt $3 ]; then 
    echo $1
    elif [ $2 -gt $3 ]; then 
    echo $2
    else
    echo $3
    fi
}
resultado=$(mayor_de_tres 15 8 22)
echo "El número mayor es $resultado"