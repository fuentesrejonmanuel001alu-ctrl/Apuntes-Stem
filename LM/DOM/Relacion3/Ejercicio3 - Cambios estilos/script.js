// 1. Seleccionamos todos los elementos de la lista (li)
const canciones = document.querySelectorAll("li");

// 2. Recorremos la lista con forEach para aplicar los cambios
canciones.forEach(cancion => {
    
    // Cambiamos el color del texto a verde
    cancion.style.color = "green";

    // Añadimos el emoji al final del texto actual
    cancion.textContent = cancion.textContent + " 🎶";
});