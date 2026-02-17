#!/bin/bash

function potencia (){
    potencia=$(($1**$2))
    echo $potencia
}
resultado=$(potencia 2 5)
echo $resultado