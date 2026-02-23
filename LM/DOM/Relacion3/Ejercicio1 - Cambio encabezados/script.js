// 1. Seleccionamos los elementos por su ID
const titulo = document.getElementById("titulo");
const subtitulo = document.getElementById("subtitulo");

// 2. Modificamos el contenido de texto
titulo.textContent = "Historia del Ska-Punk: Álbumes Icónicos";
subtitulo.textContent = "Desde los 80 hasta hoy";

// 3. Modificamos el estilo visual
titulo.style.color = "yellow";          // Color de letra amarillo
subtitulo.style.backgroundColor = "black"; // Fondo negro
subtitulo.style.color = "white";        // (Opcional) Letra blanca para que se lea sobre el negro