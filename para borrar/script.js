// 1. Seleccionamos (Sección 3)

const boton = document.getElementById("boton");
const input = document.getElementById("input");
const lista = document.getElementById("miLista");

// 2. Evento y Creación (Sección 5 y 6)
boton.addEventListener("click", function() {
    // Creamos el <li> (Sección 5.1.1)
    const nuevoItem = document.createElement("li");
    
    // Le metemos el texto del input (Sección 4.1)
    nuevoItem.textContent = input.value;
    
    // Lo añadimos a la lista (Sección 5.1.2)
    lista.appendChild(nuevoItem);
    
    // Limpiamos el input
    input.value = "";
});