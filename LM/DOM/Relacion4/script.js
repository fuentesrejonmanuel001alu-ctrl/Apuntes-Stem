// --- 1) Clic en la imagen ---
const imgClick = document.getElementById('imgClick');
imgClick.addEventListener('click', () => {
    alert("¡Siente la Energía de Burn!");
});

// --- 2) Hover en la imagen ---
const imgHover = document.getElementById('imgHover');
const srcOriginal = imgHover.src; // Guardamos la imagen original

imgHover.addEventListener('mouseenter', () => {
    imgHover.src = "https://picsum.photos/200?random=99";
});

imgHover.addEventListener('mouseleave', () => {
    imgHover.src = srcOriginal;
});

// --- 3) Teclas en el campo de texto ---
const campoTexto = document.getElementById('campoTexto');
campoTexto.addEventListener('keydown', (event) => {
    console.log("Tecla presionada: " + event.key);
});

// --- 4) Submit del formulario (sin recargar) ---
const formulario = document.getElementById('formulario');
const inputNombre = document.getElementById('nombre');
const resultado = document.getElementById('resultado');

formulario.addEventListener('submit', (event) => {
    event.preventDefault(); // Evita que la página se recargue
    const nombre = inputNombre.value;
    resultado.textContent = `¡Energía recargada, ${nombre}!`;
});

// --- 5) Focus y Blur en el código ---
const inputCodigo = document.getElementById('codigo');
const mensaje = document.getElementById('mensaje');

inputCodigo.addEventListener('focus', function() {
    this.style.outline = 'none'; // Quita el borde negro por defecto
    this.style.border = '2px solid green'; // Borde verde
    mensaje.textContent = "Introduce tu código de energía";
});

inputCodigo.addEventListener('blur', function() {
    this.style.border = ''; // Restablece el borde original (vacío vuelve al CSS)
    mensaje.textContent = ""; // Borra el mensaje
});