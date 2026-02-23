#!/bin/bash

# --- FUNCIÓN DE VALIDACIÓN ---
validar() {
    if [ $1 -ne $2 ]; then
        echo "Error: Se necesitan $2 parámetros."
        return 1
    fi
    return 0
}

# 1. División Entera (Cociente y Resto)
division_entera() {
    validar $# 2 || return 1
    local dividendo=$1
    local divisor=$2
    
    if [ $divisor -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
        return 1
    fi
    
    local cociente=$((dividendo / divisor))
    local resto=$((dividendo % divisor))
    echo "Cociente: $cociente, Resto: $resto"
}

# 2. Área Círculo (π * r²)
area_circulo() {
    validar $# 1 || return 1
    # Usamos 'bc' para decimales y pi con 2 decimales
    echo "scale=2; 3.1415 * ($1 * $1)" | bc
}

# 3. Perímetro Círculo (2 * π * r)
perimetro_circulo() {
    validar $# 1 || return 1
    echo "scale=2; 2 * 3.1415 * $1" | bc
}

# 4. Volumen Esfera (4/3 * π * r³)
volumen_esfera() {
    validar $# 1 || return 1
    # Fórmula: (4/3) * pi * r^3
    echo "scale=2; (4/3) * 3.1415 * ($1 * $1 * $1)" | bc
}

# 5. Área Rectángulo (base * altura)
area_rectangulo() {
    validar $# 2 || return 1
    echo $(($1 * $2))
}

# --- PRUEBAS ---
echo "--- PRUEBAS MATEMÁTICAS ---"
echo -n "División 17 entre 3: "; division_entera 17 3
echo -n "Área círculo (r=5): "; area_circulo 5
echo -n "Volumen esfera (r=3): "; volumen_esfera 3
echo -n "Área rectángulo (10x5): "; area_rectangulo 10 5