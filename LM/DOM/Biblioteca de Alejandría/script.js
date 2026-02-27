// 1. SELECTORES
const buscador = document.getElementById('buscador');
const listaLibros = document.getElementById('lista-libros');
const listaFavoritos = document.getElementById('lista-favoritos');
const contadorFavs = document.getElementById('contador-favs');
const btnOrdenTitulo = document.getElementById('ordenarTitulo');
const btnOrdenAutor = document.getElementById('ordenarAutor');

// 2. BUSCADOR EN TIEMPO REAL (Evento keydown/keyup)
buscador.addEventListener('keyup', () => {
    const termino = buscador.value.toLowerCase();
    const libros = listaLibros.querySelectorAll('li');

    libros.forEach(libro => {
        const texto = libro.textContent.toLowerCase();
        libro.style.display = texto.includes(termino) ? 'flex' : 'none';
    });
});

// 3. AGREGAR A FAVORITOS (Delegación de eventos - click)
listaLibros.addEventListener('click', (e) => {
    if (e.target.classList.contains('btn-fav')) {
        const libroOriginal = e.target.parentElement;
        const titulo = libroOriginal.querySelector('.titulo').textContent;
        const autor = libroOriginal.querySelector('.autor').textContent;

        // Crear elemento dinámicamente
        const favLi = document.createElement('li');
        favLi.innerHTML = `<span>${titulo} (${autor})</span> <button class="btn-eliminar">Eliminar</button>`;
        
        listaFavoritos.appendChild(favLi);
        actualizarContador();
    }
});

// 4. ELIMINAR DE FAVORITOS (remove)
listaFavoritos.addEventListener('click', (e) => {
    if (e.target.classList.contains('btn-eliminar')) {
        e.target.parentElement.remove();
        actualizarContador();
    }
});

// 5. EDITAR INFORMACIÓN (dblclick + replaceChild / contenteditable)
listaLibros.addEventListener('dblclick', (e) => {
    if (e.target.classList.contains('titulo') || e.target.classList.contains('autor')) {
        const elemento = e.target;
        elemento.setAttribute('contenteditable', 'true');
        elemento.focus();

        elemento.addEventListener('blur', () => {
            elemento.removeAttribute('contenteditable');
            // Si es el autor, actualizamos el data-attribute
            if (elemento.classList.contains('autor')) {
                elemento.parentElement.setAttribute('data-autor', elemento.textContent);
            }
        }, { once: true });
    }
});

// 6. ORDENAR LISTA (childElementCount + replaceChild logic)
function ordenar(criterio) {
    const items = Array.from(listaLibros.children);
    
    items.sort((a, b) => {
        let valA = a.querySelector(`.${criterio}`).textContent.toLowerCase();
        let valB = b.querySelector(`.${criterio}`).textContent.toLowerCase();
        return valA.localeCompare(valB);
    });

    // Limpiar y re-insertar ordenado
    listaLibros.innerHTML = '';
    items.forEach(item => listaLibros.appendChild(item));
}

btnOrdenTitulo.addEventListener('click', () => ordenar('titulo'));
btnOrdenAutor.addEventListener('click', () => ordenar('autor'));

// 7. UTILIDADES
function actualizarContador() {
    contadorFavs.textContent = listaFavoritos.childElementCount;
}