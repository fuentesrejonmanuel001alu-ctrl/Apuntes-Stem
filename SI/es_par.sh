#!/bin/bash


function es_par (){

    if [ $(( $1 % 2 )) -eq 0 ]; then
    echo par
    else 
    echo impar
    fi
}

resultado=$(es_par 7)
echo El número es $resultado