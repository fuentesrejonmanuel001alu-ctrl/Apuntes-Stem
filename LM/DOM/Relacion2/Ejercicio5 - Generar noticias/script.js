// 1. Seleccionamos el div donde vamos a meter los párrafos
const contenedor = document.getElementById("contenedor");

// 2. Creamos un array con las frases para procesarlas fácilmente
const noticias = [
    "Descubren una nueva especie en la selva amazónica.",
    "Avances tecnológicos revolucionan la industria de la salud.",
    "El mercado financiero experimenta grandes cambios."
];

// 3. Recorremos el array y creamos los elementos uno a uno
noticias.forEach(texto => {
    // Creamos la etiqueta <p>
    const parrafo = document.createElement("p");
    
    // Le asignamos el texto de la noticia
    parrafo.textContent = texto;
    
    // Lo "colgamos" dentro del div contenedor
    contenedor.appendChild(parrafo);
});