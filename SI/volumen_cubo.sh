#!/bin/bash


function volumen_cubo(){
    resultado=$(($1 **3))
    echo $resultado
}
resultado=$(volumen_cubo 4)
echo $resultado