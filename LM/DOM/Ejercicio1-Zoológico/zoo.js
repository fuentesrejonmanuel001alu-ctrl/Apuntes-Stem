console.log("SCRIPT ANIMALES CARGADO")
let animales = document.getElementsByClassName("animal")

for (let animal of animales) {
    animal.style.backgroundColor = "lightyellow"
}


let botonResaltar = document.getElementById("resaltarAnimales")

botonResaltar.addEventListener("click", function () {
    for (let animal of animales) {
        animal.style.backgroundColor = "lightgreen"
    }
})


//Ejemplo para eventos
let titulo = document.getElementById("titulo")

titulo.addEventListener("mouseover", function () {
    botonResaltar.textContent = "Boton cambiado"
})

titulo.addEventListener("mouseout", function () {
    botonResaltar.textContent = "Resaltar Animales"
})