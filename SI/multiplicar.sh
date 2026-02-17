#!/bin/bash

function multiplicar (){
    multiplicacion=$(($1*$2))
    echo $multiplicacion

}
resultado=$(multiplicar 7 8)
echo $resultado