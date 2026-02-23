// 1. Seleccionamos todos los elementos con la clase "noticia"
const noticias = document.querySelectorAll(".noticia");

// 2. Recorremos la lista de noticias
noticias.forEach((noticia, indice) => {
    
    // Añadir el emoji al inicio de cada noticia
    noticia.textContent = "🔥 " + noticia.textContent;

    // En programación, los índices empiezan en 0. 
    // Indice 0 es la 1ª noticia (impar), Indice 1 es la 2ª (par)...
    
    if (indice % 2 === 0) {
        // NOTICIAS IMPARES (1ª, 3ª...): Fondo gris
        noticia.style.backgroundColor = "lightgray";
    } else {
        // NOTICIAS PARES (2ª, 4ª...): Texto azul
        noticia.style.color = "blue";
    }
});