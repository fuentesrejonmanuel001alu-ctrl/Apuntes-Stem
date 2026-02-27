// 1. Seleccionamos los elementos del DOM
const inputNombre = document.getElementById("inputNombreProducto");
const inputPrecio = document.getElementById("inputPrecioProducto");
const btnAniadir = document.getElementById("btnAniadirProducto");
const lista = document.getElementById("listaProductos");
const totalH2 = document.getElementById("totalCompraH2");

// 2. Variable para acumular el total
let totalAcumulado = 0;

// Inicializamos el texto del total
totalH2.textContent = "Total: 0€";

// 3. Evento para añadir producto
btnAniadir.addEventListener("click", () => {
    // Obtenemos los valores de los inputs
    const nombre = inputNombre.value;
    const precio = parseFloat(inputPrecio.value);

    // Validación básica: que el nombre no esté vacío y el precio sea un número válido
    if (nombre.trim() !== "" && !isNaN(precio)) {
        
        // --- Crear el nuevo elemento en la lista ---
        const nuevoItem = document.createElement("li");
        nuevoItem.textContent = `${nombre}: ${precio}€`;
        lista.appendChild(nuevoItem);

        // --- Actualizar el total ---
        totalAcumulado += precio;
        totalH2.textContent = `Total: ${totalAcumulado.toFixed(2)}€`;

        // --- Limpiar los inputs y poner el foco en el nombre ---
        inputNombre.value = "";
        inputPrecio.value = "";
        inputNombre.focus();

    } else {
        alert("Por favor, introduce un nombre y un precio válidos.");
    }
});