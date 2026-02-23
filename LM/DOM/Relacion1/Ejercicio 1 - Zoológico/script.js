// 1. Seleccionamos todos los animales y el botón
let animales = document.getElementsByClassName("animal");
let botonResaltar = document.getElementById("resaltarAnimales");

// 2. Al cargar la página: Cambiar el fondo a amarillo suave
// Usamos el bucle para aplicar el estilo a cada uno
for (let animal of animales) {
    animal.style.backgroundColor = "lightyellow";
}

// 3. Al hacer clic en el botón: Cambiar color de texto y tamaño de fuente
botonResaltar.addEventListener("click", function () {
    
    // Recorremos la lista otra vez para aplicar los nuevos cambios
    for (let animal of animales) {
        animal.style.color = "green";        // Texto a verde
        animal.style.fontSize = "24px";      // Aumenta el tamaño (puedes poner el que quieras)
    }
    
    // Extra: Cambiamos el texto del botón para saber que ya funcionó
    botonResaltar.textContent = "¡Animales Resaltados!";
});