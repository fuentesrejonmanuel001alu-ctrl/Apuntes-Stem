#!/bin/bash

# --- FUNCIÓN DE VALIDACIÓN ---
validar() {
    if [ $1 -ne $2 ]; then
        echo "Error: Se necesitan $2 argumentos."
        return 1
    fi
    return 0
}

# 1. Crear Directorio
crear_directorio() {
    validar $# 1 || return 1
    if [ -d "$1" ]; then
        echo "Directorio '$1' ya existe"
    else
        mkdir -p "$1" && echo "Directorio '$1' creado"
    fi
}

# 2. Buscar Archivos Grandes
buscar_archivos_grandes() {
    validar $# 2 || return 1
    local resultados=$(find "$1" -type f -size +"${2}M" 2>/dev/null)
    if [ -z "$resultados" ]; then
        echo "No se encontraron archivos > $2 MB"
    else
        echo "$resultados"
    fi
}

# 3. Buscar por Extensión
buscar_por_extension() {
    if [ $# -lt 2 ]; then
        echo "Uso: buscar_por_extension /ruta ext [-c]"
        return 1
    fi
    if [ "$3" == "-c" ]; then
        find "$1" -name "*.$2" | wc -l
    else
        find "$1" -name "*.$2"
    fi
}

# 4. Cambiar Permisos
cambiar_permisos() {
    validar $# 2 || return 1
    if [[ ! $1 =~ ^[0-7]{3,4}$ ]]; then
        echo "Error: Formato de permisos inválido"
        return 1
    fi
    chmod "$1" "$2" && echo "Permisos de '$2' cambiados a $1"
}

# 5. Obtener Propietario
obtener_propietario() {
    validar $# 1 || return 1
    local prop=$(stat -c '%U' "$1")
    local grupo=$(stat -c '%G' "$1")
    echo "$1: propietario=$prop grupo=$grupo"
}

# 6. Respaldo
respaldo() {
    validar $# 1 || return 1
    local fecha=$(date +%Y%m%d_%H%M%S)
    cp -- "$1" "$1.bak-$fecha" && echo "Backup creado"
}

# 7. Tamaño Directorio
tamaño_directorio() {
    validar $# 1 || return 1
    local bytes=$(du -sb "$1" | cut -f1)
    echo $(( bytes * 8 ))
}

# 8. Puerto Abierto
puerto_abierto() {
    validar $# 2 || return 1
    nc -z -w 2 "$1" "$2" &>/dev/null
    if [ $? -eq 0 ]; then
        echo "$2 abierto en $1"
    else
        echo "$2 cerrado en $1"
    fi
}

# 9. Verificar Conectividad
verificar_conectividad() {
    validar $# 1 || return 1
    if ping -c 1 "$1" &>/dev/null; then
        echo "$1 responde"
    else
        echo "$1 no responde"
    fi
}

# --- PRUEBAS AUTOMÁTICAS ---
echo "--- INICIANDO PRUEBAS ---"
crear_directorio "test_carpeta"
verificar_conectividad "8.8.8.8"