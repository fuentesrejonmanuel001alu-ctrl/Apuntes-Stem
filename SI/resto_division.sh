#!/bin/bash

function resto_division () {
    resultado=$(($1%$2))
    echo $resultado
}

resultado=$(resto_division 17 5)
echo =$resultado
