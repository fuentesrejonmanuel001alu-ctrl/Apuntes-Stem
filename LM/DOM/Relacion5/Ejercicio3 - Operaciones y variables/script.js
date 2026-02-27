// 1. Seleccionamos los elementos de entrada y el lugar del resultado
const input1 = document.getElementById("numero1");
const input2 = document.getElementById("numero2");
const displayResultado = document.getElementById("resultado");

// 2. Seleccionamos los botones
const btnSumar = document.getElementById("btnSumar");
const btnRestar = document.getElementById("btnRestar");
const btnMultiplicar = document.getElementById("btnMultiplicar");
const btnDividir = document.getElementById("btnDividir");

// Función auxiliar para obtener los números y validar
function obtenerNumeros() {
    return {
        n1: Number(input1.value),
        n2: Number(input2.value)
    };
}

// 3. Gestión de eventos con addEventListener

btnSumar.addEventListener("click", () => {
    const { n1, n2 } = obtenerNumeros();
    const suma = n1 + n2;
    displayResultado.textContent = `Resultado: ${suma}`;
});

btnRestar.addEventListener("click", () => {
    const { n1, n2 } = obtenerNumeros();
    const resta = n1 - n2;
    displayResultado.textContent = `Resultado: ${resta}`;
});

btnMultiplicar.addEventListener("click", () => {
    const { n1, n2 } = obtenerNumeros();
    const multi = n1 * n2;
    displayResultado.textContent = `Resultado: ${multi}`;
});

btnDividir.addEventListener("click", () => {
    const { n1, n2 } = obtenerNumeros();
    
    // Validación extra: no se puede dividir por cero
    if (n2 === 0) {
        displayResultado.textContent = "Error: No se puede dividir por 0";
        displayResultado.style.color = "red";
    } else {
        const divi = n1 / n2;
        displayResultado.textContent = `Resultado: ${divi}`;
        displayResultado.style.color = "black";
    }
});