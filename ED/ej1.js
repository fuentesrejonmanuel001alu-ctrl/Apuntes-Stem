// Problema original: variables globales y nombres crípticos.
// Solución: Usar nombres descriptivos y 'const' donde sea posible, pero mantenerlas globales como en el original.

// 'x' refactorizado a 'contador'. Usamos 'let' porque en el original podía cambiar.
let contador = 5;
// 'y' refactorizado a 'limite'. Usamos 'const' porque nunca cambia.
const limite = 10;
// 'ZzZz' refactorizado a 'saludo'. Usamos 'const' porque el mensaje nunca cambia.
const saludo = "Hola";
// La variable 'a' se elimina si no se usa. (Asumimos que no se usa)

// La función 'haz' se refactoriza a 'hacerProceso'.
function hacerProceso() {
  // El bucle usa el límite global.
  for (let i = 0; i < limite; i++) {
    // Mejoramos la comparación: '===' en lugar de '==' (más seguro).
    if (contador === 5) {
      console.log(saludo);
    }
    /* Se elimina la lógica extra (else if / else) porque nunca se ejecutaba. */
  }
}
hacerProceso(); // Llama a la función.

// 'mivaria' refactorizado a 'variableGlobal'.
let variableGlobal = "global";

// 'cambiaglobal' refactorizado a 'cambiarGlobal'.
function cambiarGlobal() {
    // Mantiene la mutación del estado global original.
    variableGlobal = "cambiada";
}

cambiarGlobal();
console.log(variableGlobal);






let x = 5; // Mala práctica: variable global sin const ni nombre descriptivo.
const Y = 10; // Mala práctica: Uso inconsistente de mayúsculas, global.
let ZzZz = "Hola"; // Mala práctica: Nombre críptico.
let a; // Mala práctica: Variable declarada y no usada.

// Mala práctica: Nombre de función poco expresivo.
function haz() { 
  // Mala práctica: Dependencia de variables globales (side effect).
  for (let i = 0; i < Y; i++) {
    // Mala práctica: Uso de '==' (comparación débil).
    if (x == 5) {
      console.log(ZzZz);
    } else if (x === 6) { // Lógica innecesaria que nunca se cumple si 'x' no cambia.
      console.log("Adios");
    } else {
      // Lógica redundante.
      console.log("...");
    }
  }
}

// Mala práctica: Mutación de estado global.
let mivaria = "global"; 
function cambiaglobal() {
  // Mala práctica: Mutación de variable global sin pasarla como argumento.
  mivaria = "cambiada"; 
}

haz();
cambiaglobal();
console.log(mivaria);




/**
 * REFACTORIZACIÓN: Se han eliminado las variables globales mutables y las dependencias de estado.
 * La funcionalidad ahora está encapsulada en funciones puras (o al menos más controlables).
 */

// Se mantiene la funcionalidad original de imprimir el saludo varias veces.
function imprimirSaludo(limite, valorComparacion, saludo) {
  // Se usa 'limite' y 'saludo' como parámetros para eliminar la dependencia global.
  for (let i = 0; i < limite; i++) {
    // Uso de '===' (comparación estricta) para evitar errores de tipo.
    // Aunque 'x' (ahora 'valorComparacion') es siempre 5 aquí, se respeta la lógica de comparación.
    if (valorComparacion === 5) {
      console.log(saludo);
    }
    // Se elimina la lógica innecesaria (else if / else) que nunca se cumplía
    // y solo aumentaba la complejidad ciclomática.
  }
}

// Se elimina la función que muta el estado global.
// Ahora, la función devuelve el nuevo valor, lo que permite al código cliente gestionarlo.
function obtenerNuevoValor() {
  // Mantiene la funcionalidad original de cambiar el valor.
  return "cambiada"; 
}

// ----------------------------------------------------
// EJECUCIÓN (Mantiene la funcionalidad original del código)
// ----------------------------------------------------

// Valores que eran globales ahora se pasan directamente.
imprimirSaludo(10, 5, "Hola"); // Llama a 'haz' con valores limpios.

let variableGlobalControlada = "global";
// El cliente gestiona el cambio de valor de manera explícita.
variableGlobalControlada = obtenerNuevoValor(); 
console.log(variableGlobalControlada); // Muestra "cambiada"