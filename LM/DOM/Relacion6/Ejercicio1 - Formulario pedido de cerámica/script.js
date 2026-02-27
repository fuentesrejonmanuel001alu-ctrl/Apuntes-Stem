// 1. Selección de elementos
const formulario = document.getElementById("pedidoForm");
const inputs = formulario.querySelectorAll("input, select");
const selectProducto = document.getElementById("producto");

// 2. Eventos FOCUS y BLUR (Cambio de color de borde)
inputs.forEach(campo => {
    campo.addEventListener("focus", function() {
        // Al entrar, ponemos un borde azul cerámico
        this.style.border = "2px solid #2980b9";
        this.style.outline = "none";
    });

    campo.addEventListener("blur", function() {
        // Al salir, restauramos el borde original
        this.style.border = "";
    });
});

// 3. Evento CHANGE (Producto seleccionado)
selectProducto.addEventListener("change", function() {
    console.log("Producto seleccionado actualmente: " + this.value);
});

// 4. Evento SUBMIT (Tu lógica mejorada)
formulario.addEventListener("submit", function(event) {
    const nombre = document.getElementById("nombre").value.trim();
    const email = document.getElementById("email").value.trim();
    const cantidad = document.getElementById("cantidad").value;
    
    // Validación
    if (nombre === "" || email === "" || cantidad <= 0) {
        console.log("Error: Todos los campos son obligatorios y la cantidad debe ser mayor a 0");
        event.preventDefault(); // Evita el envío
        alert("Por favor, rellena todos los campos correctamente.");
    } else {
        console.log("--- Pedido Fajalauza Procesado ---");
        console.log(`Cliente: ${nombre}, Producto: ${selectProducto.value}, Cantidad: ${cantidad}`);
        // Aquí no ponemos preventDefault para que el formulario se envíe, 
        // a menos que quieras procesarlo todo por JS, en cuyo caso lo añadirías.
    }
});