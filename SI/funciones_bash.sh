#!/bin/bash

# --- FUNCIÓN DE VALIDACIÓN (Requisito General) ---
validar() {
    # $1: argumentos recibidos ($#), $2: argumentos esperados
    if [ $1 -ne $2 ]; then
        echo "Error: Se necesitan $2 argumentos."
        return 1
    fi
    return 0
}

# 4. Multiplicar
multiplicar() {
    validar $# 2 || return
    echo $(($1 * $2))
}

# 5. Potencia
potencia() {
    validar $# 2 || return
    echo $(($1 ** $2))
}

# 7. Volumen Cubo
volumen_cubo() {
    validar $# 1 || return
    echo $(($1 ** 3))
}

# 8. Módulo
modulo() {
    validar $# 2 || return
    echo $(($1 % $2))
}

# 9. Verificar Par
verificar_par() {
    validar $# 1 || return
    if [ $(($1 % 2)) -eq 0 ]; then
        echo "$1 es par"
    else
        echo "$1 es impar"
    fi
}

# 10. Mayor de tres
mayor_de_tres() {
    validar $# 3 || return
    if [ $1 -gt $2 ] && [ $1 -gt $3 ]; then echo $1
    elif [ $2 -gt $3 ]; then echo $2
    else echo $3
    fi
}

# 11. Factorial
factorial() {
    validar $# 1 || return
    local res=1
    for ((i=1; i<=$1; i++)); do res=$((res * i)); done
    echo $res
}

# 12. Es Primo (Con mejora de eficiencia)
es_primo() {
    validar $# 1 || return
    num=$1
    [ $num -lt 2 ] && { echo "$num no es primo"; return; }
    # Mejora: Solo iterar hasta la raíz cuadrada del número (o num/2)
    for ((i=2; i*i<=$num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num no es primo"
            return
        fi
    done
    echo "$num es primo"
}

# 13. Fibonacci (Iterativo)
fibonacci() {
    validar $# 1 || return
    local n=$1
    local a=0
    local b=1
    for ((i=0; i<n; i++)); do
        local temp=$a
        a=$b
        b=$((temp + b))
    done
    echo $a
}

# 14. Sumatorio (Eficiencia O(1) - Fórmula de Gauss)
sumatorio() {
    validar $# 1 || return
    # En lugar de un bucle (O(n)), usamos: (n * (n + 1)) / 2
    echo $(( ($1 * ($1 + 1)) / 2 ))
}

# --- EJEMPLOS DE USO ---
echo "--- PRUEBAS ---"
echo -n "Multiplicar 7 8: "; multiplicar 7 8
echo -n "Sumatorio 100 (O1): "; sumatorio 100
echo -n "Fibonacci 7: "; fibonacci 7
echo -n "Factorial 5: "; factorial 5