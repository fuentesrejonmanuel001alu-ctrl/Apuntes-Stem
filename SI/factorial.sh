#!/bin/bash

function factorial(){
local resultado=1
for ((i=1; i<=$1; i++)); do
resultado=$(( resultado *i ))
done
echo $resultado

}
resultado=$(factorial 3)
echo "El factorial es $resultado"