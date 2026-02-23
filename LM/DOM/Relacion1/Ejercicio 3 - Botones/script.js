// 1. Selección de elementos del DOM por su ID
const btn1 = document.getElementById("btnImagen1");
const btn2 = document.getElementById("btnImagen2");
const btnReiniciar = document.getElementById("reiniciar");
const visor = document.getElementById("visor");

// 2. Evento para insertar la Imagen 1
btn1.addEventListener("click", function() {
    // Creamos el nodo de imagen
    const img1 = document.createElement("img");
    // Configuramos la ruta del archivo
    img1.setAttribute("src", "imagen1.png");
    // Insertamos la imagen dentro del visor
    visor.appendChild(img1);
});

// 3. Evento para insertar la Imagen 2
btn2.addEventListener("click", function() {
    // Creamos el nodo de imagen
    const img2 = document.createElement("img");
    // Configuramos la ruta del archivo
    img2.setAttribute("src", "imagen2.png");
    // Insertamos la imagen dentro del visor
    visor.appendChild(img2);
});

// 4. Evento para el botón Reiniciar (Limpiar todo)
btnReiniciar.addEventListener("click", function() {
    // Vaciamos el contenido del visor para que desaparezcan las fotos
    visor.innerHTML = "";
});