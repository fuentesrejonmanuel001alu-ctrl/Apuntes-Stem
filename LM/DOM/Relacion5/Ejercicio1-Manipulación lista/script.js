// Comprobación de seguridad: Verás esto en la consola (F12) si el archivo carga
console.log("¡El script está funcionando!");

// 1. Seleccionamos los elementos
const lista = document.getElementById("lista");
const btnAniadir = document.getElementById("btnAniadir");
const btnBorrar = document.getElementById("btnBorrar");
const btnEditar = document.getElementById("btnEditar");

// 2. FUNCIÓN AÑADIR: Crea un nuevo li y lo pone al final
btnAniadir.addEventListener("click", () => {
    const nuevoLi = document.createElement("li");
    nuevoLi.textContent = "Elemento " + (lista.children.length + 1);
    lista.appendChild(nuevoLi);
});

// 3. FUNCIÓN BORRAR: Elimina el último de la lista
btnBorrar.addEventListener("click", () => {
    const ultimo = lista.lastElementChild;
    if (ultimo) {
        ultimo.remove();
    } else {
        alert("Ya no quedan elementos para borrar");
    }
});

// 4. FUNCIÓN EDITAR: Reemplaza el primer elemento por uno nuevo
btnEditar.addEventListener("click", () => {
    const primero = lista.firstElementChild;
    if (primero) {
        const liReemplazo = document.createElement("li");
        liReemplazo.textContent = prompt("Introduce el nuevo texto 🔄");
        liReemplazo.style.color = "red";
        liReemplazo.style.fontWeight = "bold";
        
        // Reemplazamos el antiguo por el nuevo
        lista.replaceChild(liReemplazo, primero);
    } else {
        alert("No hay nada que editar");
    }
});