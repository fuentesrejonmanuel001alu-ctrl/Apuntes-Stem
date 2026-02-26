// 1. Seleccionamos los elementos necesarios
const lista = document.getElementById("lista");
const btnAniadir = document.getElementById("btnAniadir");
const btnBorrar = document.getElementById("btnBorrar");
const btnEditar = document.getElementById("btnEditar");

// --- AÑADIR ELEMENTO ---
btnAniadir.addEventListener("click", () => {
    const nuevoLi = document.createElement("li"); //
    const numero = lista.children.length + 1; // Contamos cuántos hay para poner el número
    nuevoLi.textContent = `Elemento ${numero}`;
    lista.appendChild(nuevoLi); //
});

// --- BORRAR EL ÚLTIMO ELEMENTO ---
btnBorrar.addEventListener("click", () => {
    const ultimo = lista.lastElementChild; // Selecciona el último de la lista
    if (ultimo) {
        ultimo.remove(); // Elimina el nodo del DOM
    } else {
        alert("No hay más elementos para borrar");
    }
});

// --- EDITAR (REEMPLAZAR) EL PRIMERO ---
btnEditar.addEventListener("click", () => {
    const primero = lista.firstElementChild; // Selecciona el primero
    
    if (primero) {
        const liEditado = document.createElement("li");
        liEditado.textContent = "¡Elemento Editado! ✨";
        liEditado.style.color = "blue";
        
        // Reemplazamos el antiguo por el nuevo
        lista.replaceChild(liEditado, primero);
    } else {
        alert("No hay elementos para editar");
    }
});