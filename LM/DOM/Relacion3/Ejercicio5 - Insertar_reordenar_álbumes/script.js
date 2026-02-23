// 1. Seleccionamos la lista donde están los álbumes
const lista = document.querySelector("ul");

// --- PASO 1: Crear e insertar "Xapomelon" antes de "L'odore Della Morte" ---

// Creamos el nuevo elemento
const albumPegatina = document.createElement("li");
albumPegatina.textContent = "Xapomelon - La Pegatina";

// Buscamos el álbum de referencia para saber dónde insertar
const todosLosAlbumes = document.querySelectorAll("li");
let referencia = null;

todosLosAlbumes.forEach(li => {
    if (li.textContent.includes("L'odore Della Morte")) {
        referencia = li;
    }
});

// Lo insertamos antes de la referencia
if (referencia) {
    lista.insertBefore(albumPegatina, referencia);
}

// --- PASO 2: Agregar "Street Gigs" al final de la lista ---

const albumLocos = document.createElement("li");
albumLocos.textContent = "Street Gigs - The Locos";
lista.appendChild(albumLocos);