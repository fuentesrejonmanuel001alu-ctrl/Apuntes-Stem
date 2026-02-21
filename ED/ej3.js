// Realiza la suma de dos números. (Renombrado de 'op1')
function sumar(num1, num2) {
  return num1 + num2;
}
//Ejecuta una multiplicación o división basándose en el modo de operación especificado.
 
function calcularOperacion(num1, num2, operacion) {
  if (operacion === "mul") {
    return num1 * num2;
  } else if (operacion === "div") {
    return num1 / num2;
  } else {
    return 0;
  }
}
//Crea un saludo simple utilizando el nombre del usuario.
function crearSaludo(nombreUsuario) {
  return "Hola " + nombreUsuario;
}

// Ejecución de prueba
console.log(obtenerResultadoCombinado(2, 3, "Ana"));


//@ts-check
// El profesor añadió //@ts-check para forzar el JSDoc correcto.

// Mala práctica: Nombre de función críptico y parámetros poco claros.
function calcOp(n1, n2, op) {
  if (op === "mul") {
    return n1 * n2;
  } else if (op === "div") {
    return n1 / n2;
  } else {
    // Mala práctica: Devolver 0 como resultado de una operación no válida puede ser ambiguo.
    return 0; 
  }
}

// Mala práctica: Función con nombre y parámetro poco descriptivos.
function saludo(n) {
  // Mala práctica: Uso de '+' en lugar de template literals.
  return "Hola " + n; 
}

// Función que no hace nada más que llamar a otras. Nombre críptico.
function obtenerResultadoCombinado(a, b, c) {
  // Esto es una combinación del fragmento que enviaste,
  // pero con nombres originales crípticos.
  const tempSum = sumar(a, b); 
  const tempSaludo = saludo(c);
  console.log(tempSaludo);
  return tempSum;
}

// Ejecución de prueba
console.log(calcOp(10, 5, "div"));
console.log(obtenerResultadoCombinado(2, 3, "Ana"));





//@ts-check
// REFACTORIZACIÓN: Nombres descriptivos (expresividad) y documentación JSDoc.

/**
 * Realiza una operación aritmética de multiplicación o división entre dos números.
 *
 * @param {number} primerNumero El primer operando.
 * @param {number} segundoNumero El segundo operando (el divisor si la operación es 'div').
 * @param {'mul' | 'div'} operacion Tipo de operación a realizar ('mul' para multiplicar, 'div' para dividir).
 * @returns {number} El resultado de la operación. Devuelve 0 si la operación no es válida.
 */
function calcularOperacionAritmetica(primerNumero, segundoNumero, operacion) {
  // Mejora de la expresividad en la condición.
  if (operacion === "mul") {
    return primerNumero * segundoNumero;
  } 
  
  // Se añade una pequeña validación: evitar división por cero, aunque el original no lo hacía.
  if (operacion === "div") {
    if (segundoNumero === 0) {
      // Se podría lanzar un error, pero por mantener la funcionalidad de devolver un número, se devuelve 0.
      console.warn("Advertencia: Intento de división por cero.");
      return 0;
    }
    return primerNumero / segundoNumero;
  }
  
  return 0;
}

/**
 * Crea un saludo personalizado para un usuario.
 *
 * @param {string} nombreUsuario El nombre de la persona a saludar.
 * @returns {string} La cadena de saludo completa (e.g., "Hola [nombre]").
 */
function crearSaludoSimple(nombreUsuario) {
  // Se usa Template Literals (más moderno y legible).
  return `Hola ${nombreUsuario}`;
}

/**
 * Realiza la suma de dos números y saluda a un usuario. 
 * Es una función coordinadora que combina dos funcionalidades simples.
 *
 * @param {number} valorA El primer valor para la suma.
 * @param {number} valorB El segundo valor para la suma.
 * @param {string} nombre La persona a saludar.
 * @returns {number} El resultado de la suma de los dos valores.
 */
function procesarCombinacionSumaYSagudo(valorA, valorB, nombre) {
  const resultadoSuma = valorA + valorB; // Se hace la suma directamente, o se llama a 'sumar' si existe.
  const mensajeSaludo = crearSaludoSimple(nombre);

  // Se respeta la funcionalidad original de imprimir el saludo.
  console.log(mensajeSaludo);
  
  return resultadoSuma;
}

// ----------------------------------------------------
// EJECUCIÓN (Mantiene la funcionalidad original)
// ----------------------------------------------------
console.log(calcularOperacionAritmetica(10, 5, "div")); // Imprime 2

// Ejemplo del código original
console.log(procesarCombinacionSumaYSagudo(2, 3, "Ana")); // Imprime 'Hola Ana' y luego 5









