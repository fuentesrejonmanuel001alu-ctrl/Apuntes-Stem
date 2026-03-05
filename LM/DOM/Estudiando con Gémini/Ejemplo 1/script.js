const titulo = document.getElementById("texto");
const boton = document.getElementById("miBoton");

// Evento 1: Cuando el ratón ENTRA (mouseover)
titulo.addEventListener("mouseover", function() {
    // En lugar de cambiar el color uno a uno, usamos una clase (Sección 4.3)
    titulo.classList.add("activado");
    titulo.textContent = "¡Ratón detectado!";
});

// Evento 2: Cuando el ratón SALE (mouseout)
titulo.addEventListener("mouseout", function() {
    titulo.classList.remove("activado");
    titulo.textContent = "Se ha ido...";
});

// Evento 3: El Click de siempre
boton.addEventListener("click", function() {
    alert("¡Has pulsado el botón!");
});