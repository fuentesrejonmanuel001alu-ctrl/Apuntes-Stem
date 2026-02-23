// 1. Añadir "Trompetista"
const lista = document.querySelector("ul"); // Seleccionamos la lista
const nuevoIntegrante = document.createElement("li"); // Creamos el elemento
nuevoIntegrante.textContent = "Trompetista"; // Le ponemos el texto
lista.appendChild(nuevoIntegrante); // Lo añadimos al final de la lista

// 2. Eliminar "Batería"
const integrantes = document.querySelectorAll("li"); // Cogemos todos los que hay ahora
integrantes.forEach(integrante => {
    if (integrante.textContent === "Batería") {
        integrante.remove(); // Si el texto coincide, lo borramos
    }
});