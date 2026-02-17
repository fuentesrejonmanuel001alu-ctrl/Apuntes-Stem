#!/bin/bash 

function area_circulo() { 
multiplicacion=$( echo "3.14*$1^2" | bc ) ** ^porque es bc y no al cuadrado
echo $multiplicacion 

} 
resultado=$(area_circulo 2)
echo $resultado
