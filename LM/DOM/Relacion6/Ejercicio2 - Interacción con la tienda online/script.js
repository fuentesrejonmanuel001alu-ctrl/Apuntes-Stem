// 1. Selección de elementos
const barraBusqueda = document.getElementById("busqueda");
const productos = document.querySelectorAll(".producto");

// 2. Eventos de Ratón (mouseover y mouseout)
productos.forEach(producto => {
    // Cuando el ratón entra: Cambiamos el fondo a un azul cerámico suave
    producto.addEventListener("mouseover", function() {
        this.style.backgroundColor = "#d1e7ff";
        this.style.cursor = "pointer";
    });

    // Cuando el ratón sale: Restauramos el fondo (vacío vuelve al original)
    producto.addEventListener("mouseout", function() {
        this.style.backgroundColor = "";
    });
});

// 3. Evento KEYDOWN: Mostrar tecla en consola
barraBusqueda.addEventListener("keydown", function(event) {
    console.log("Tecla presionada: " + event.key);
});

// 4. Evento KEYUP: Filtrar productos
barraBusqueda.addEventListener("keyup", function() {
    let filtro = this.value.toLowerCase();
    
    productos.forEach(function(producto) {
        // Obtenemos el nombre desde el atributo data-nombre
        let nombre = producto.getAttribute("data-nombre").toLowerCase();
        
        // Lógica de filtrado: ¿Contiene el nombre el texto del filtro?
        if (nombre.includes(filtro)) {
            producto.style.display = "block"; 
        } else {
            producto.style.display = "none";
        }
    });
});