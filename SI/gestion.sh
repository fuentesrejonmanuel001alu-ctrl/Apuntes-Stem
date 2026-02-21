#!/bin/bash

# --- FUNCIÓN DE VALIDACIÓN MAESTRA ---
# Uso: validar $numero_recibido $numero_esperado "Mensaje de ayuda"
function validar() {
    if [ "$1" -lt "$2" ]; then
        echo "Error: Faltan argumentos. Uso esperado: $3"
        return 1
    fi
}

# 1. crear_directorio
function crear_directorio() {
    validar $# 1 "crear_directorio /ruta/al/directorio" || return 1
    local ruta="$1"
    local padre=$(dirname "$ruta")

    if [ ! -w "$padre" ]; then
        echo "Error: No tienes permisos de escritura en '$padre'"
        return 1
    fi

    if [ -d "$ruta" ]; then
        echo "Directorio '$ruta' ya existe"
    else
        mkdir -p "$ruta"
        echo "Directorio '$ruta' creado"
    fi
}

# 2. buscar_archivos_grandes
function buscar_archivos_grandes() {
    validar $# 2 "buscar_archivos_grandes /ruta MB" || return 1
    local ruta="$1"
    local size_mb="$2"
    
    if [ ! -d "$ruta" ]; then echo "Error: La ruta no existe"; return 1; fi

    # Usamos find con el tamaño convertido
    local resultados=$(find "$ruta" -type f -size +"${size_mb}M" 2>/dev/null)
    
    if [ -z "$resultados" ]; then
        echo "No se encontraron archivos > ${size_mb} MB"
    else
        echo "$resultados"
    fi
}

# 3. buscar_por_extension
function buscar_por_extension() {
    validar $# 2 "buscar_por_extension /ruta ext [-c]" || return 1
    local ruta="$1"
    local ext="$2"
    local opt="$3"

    if [ ! -d "$ruta" ]; then echo "Error: Directorio no existe"; return 1; fi

    if [ "$opt" == "-c" ]; then
        find "$ruta" -maxdepth 1 -name "*.$ext" | wc -l
    else
        find "$ruta" -maxdepth 1 -name "*.$ext"
    fi
}

# 4. cambiar_permisos
function cambiar_permisos() {
    validar $# 2 "cambiar_permisos 644 archivo.txt" || return 1
    local modo="$1"
    local archivo="$2"

    if [[ ! "$modo" =~ ^[0-7]{3,4}$ ]]; then
        echo "Error: Formato de permisos inválido (ej: 755)"
        return 1
    fi

    if [ -e "$archivo" ]; then
        chmod "$modo" "$archivo"
        echo "Permisos de '$archivo' cambiados a $modo"
    else
        echo "Error: El archivo no existe"
        return 1
    fi
}

# 5. obtener_propietario
function obtener_propietario() {
    validar $# 1 "obtener_propietario archivo.txt" || return 1
    if [ ! -e "$1" ]; then echo "Error: El archivo no existe"; return 1; fi
    
    local dueño=$(stat -c '%U' "$1")
    local grupo=$(stat -c '%G' "$1")
    echo "$1: propietario=$dueño grupo=$grupo"
}

# 6. respaldo
function respaldo() {
    validar $# 1 "respaldo archivo.txt" || return 1
    local archivo="$1"
    
    if [ ! -f "$archivo" ]; then echo "Error: El archivo no existe"; return 1; fi

    local fecha=$(date +%Y%m%d_%H%M%S)
    local destino="${archivo}.bak-${fecha}"
    
    cp -- "$archivo" "$destino"
    echo "Backup creado: $destino"
}

# 7. tamaño_directorio
function tamaño_directorio() {
    validar $# 1 "tamaño_directorio /ruta" || return 1
    if [ ! -d "$1" ]; then echo "Error: No es un directorio"; return 1; fi

    # du -b devuelve el tamaño en bytes
    local bytes=$(du -sb "$1" | cut -f1)
    echo $(( bytes * 8 ))
}

# 8. puerto_abierto
function puerto_abierto() {
    validar $# 2 "puerto_abierto host puerto" || return 1
    local host="$1"
    local puerto="$2"

    if timeout 2 bash -c "</dev/tcp/$host/$puerto" 2>/dev/null; then
        echo "$puerto abierto en $host"
    else
        echo "$puerto cerrado en $host"
    fi
}

# 9. verificar_conectividad
function verificar_conectividad() {
    validar $# 1 "verificar_conectividad 8.8.8.8" || return 1
    local host="$1"
    
    # Capturamos la salida del ping
    local output=$(ping -c 1 -W 2 "$host" 2>/dev/null)
    
    if [ $? -eq 0 ]; then
        local latencia=$(echo "$output" | grep 'time=' | awk -F'time=' '{print $2}' | cut -d' ' -f1)
        echo "$host responde (latencia: $latencia ms)"
    else
        echo "$host no responde"
    fi
}

# --- EJEMPLOS DE PRUEBA (puedes comentar estos para usar el script como librería) ---
echo "--- PRUEBAS ---"
crear_directorio "./prueba_folder"
respaldo "es_primo.sh"
verificar_conectividad "google.com"
puerto_abierto "google.com" 80