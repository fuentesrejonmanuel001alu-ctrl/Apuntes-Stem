#!/bin/bash

function fibonacci() {
    local n=$1
    
    # Casos base
    if [ "$n" -eq 0 ]; then
        echo 0
        return
    fi
    if [ "$n" -eq 1 ]; then
        echo 1
        return
    fi

    local a=0
    local b=1
    local temp

    # Empezamos desde 2 hasta n
    for (( i=2; i<=n; i++ )); do
        temp=$((a + b))
        a=$b
        b=$temp
    done

    echo $b
}

# Capturamos el argumento de la línea de comandos
# Uso: bash fibonacci.sh 7
resultado=$(fibonacci $1)
echo "Salida esperada: $resultado"