// 1. Seleccionamos todos los elementos <li> por su etiqueta (Sección 3.3)
let frutas = document.getElementsByTagName("li");
let boton = document.getElementById("marcarFrutas");

// 2. Al cargar la página: Borde naranja a cada fruta (Sección 4.3)
for (let fruta of frutas) {
    fruta.style.border = "2px solid orange";
    fruta.style.margin = "5px"; // Un poco de espacio para que se vea mejor el borde
    fruta.style.listStyle = "none"; // Opcional: quita los puntos de la lista
}

// 3. Al hacer clic en el botón (Sección 6.1)
boton.addEventListener("click", function () {
    for (let fruta of frutas) {
        // Cambiamos el fondo a un color pastel (Sección 4.3)
        fruta.style.backgroundColor = "lightcyan";
        
        // Añadimos el emoji al texto existente (Sección 4.1)
        // Usamos += para sumar el emoji al nombre que ya tiene
        fruta.textContent = fruta.textContent + " ✅";
    }
    
    // Desactivamos el botón para que no sigan apareciendo checks si pulsas mil veces
    boton.disabled = true;
});