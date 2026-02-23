// 1. Seleccionamos todos los elementos con la clase "precio"
const precios = document.querySelectorAll(".precio");

// 2. Recorremos cada uno de ellos con un bucle
precios.forEach(precioElemento => {
    
    // Aplicamos negrita a todos los precios
    precioElemento.style.fontWeight = "bold";

    // Convertimos el texto a número para poder comparar
    const valor = Number(precioElemento.textContent);

    // Si el precio es mayor a 50, ponemos el texto en rojo
    if (valor > 50) {
        precioElemento.style.color = "red";
    }
});