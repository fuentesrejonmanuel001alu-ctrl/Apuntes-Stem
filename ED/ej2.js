function procesarUsuario(nombre, edad, activarDepuracion, version) {
  let resultadoMensaje = "";

// 1. Hacemos un Console.log de Depuración
  if (activarDepuracion) {
    console.log("DBG");
  }

   // 2. Determinar el mensaje
  if (edad > 18) {
    resultadoMensaje = "ok";
  } else {
    resultadoMensaje = "no";
  }

  // 3. Imprimir el modo de ejecución
  if (version === "v1") {
    console.log("mod1");
  } else if (version === "v2") {
    console.log("mod2");
  } else {
    console.log("modX");
  }
    return resultadoMensaje;
}
// Ejecución de prueba original
const resultado1 = procesarUsuario("pepe", 22, false, "v1");
console.log("resultado:", resultado1);

const resultado2 = procesarUsuario("ana", 17, false, "v2");
console.log("extra:", resultado2);



// Mala práctica: 'procesarUsuario' (del fragmento que enviaste) tiene múltiples responsabilidades y lógica redundante.
function procesarUsuario(nombre, edad, activarDepuracion, version) {
  // Mala práctica: Variable auxiliar innecesaria.
  let resultadoMensaje = ""; 

  // 1. Hacemos un Console.log de Depuración
  if (activarDepuracion) {
    // Mala práctica: Nombre de función genérico. Se podría extraer.
    console.log("DBG"); 
  }

  // 2. Determinar el mensaje (Lógica simple que se puede reducir)
  if (edad > 18) {
    resultadoMensaje = "ok";
  } else {
    resultadoMensaje = "no";
  }

  // 3. Imprimir el modo de ejecución (Duplicación de 'console.log')
  if (version === "v1") {
    console.log("mod1");
  } else if (version === "v2") {
    console.log("mod2");
  } else {
    console.log("modX");
  }

  return resultadoMensaje;
}

// Mala práctica: Función redundante, simple suma sin valor añadido.
function op1(num1, num2) {
  let temp = num1; // Variable auxiliar innecesaria (YAGNI).
  return temp + num2;
}

// Ejecución de prueba original
const resultado1 = procesarUsuario("pepe", 22, false, "v1");
console.log("resultado:", resultado1);
console.log(op1(5, 3));





// REFACTORIZACIÓN: Se ha aplicado el principio YAGNI (eliminar lo que no se necesita).
// La función original se ha dividido en dos responsabilidades claras:
// 1. Determinar el estado (válido/no válido). 2. Ejecutar el modo (imprimir log).

// ----------------------------------------------------
// Funciones pequeñas y con una única responsabilidad
// ----------------------------------------------------

// Se usa una función booleana más clara.
const esMayorDeEdad = (edad) => edad > 18;

// Función pura para obtener el mensaje de estado.
function obtenerMensajeEstado(edad) {
  // Se simplifica la lógica con operador ternario.
  return esMayorDeEdad(edad) ? "ok" : "no";
}

// Función con efecto secundario controlado para el logging.
function ejecutarModoVersion(version) {
  // Se elimina la duplicación de 'console.log' usando un objeto o un switch.
  const modos = {
    v1: "mod1",
    v2: "mod2"
  };
  const modoSeleccionado = modos[version] || "modX"; // Usa 'modX' por defecto.
  console.log(modoSeleccionado);
}

// Se elimina la función 'op1' innecesaria. La suma se realiza directamente o se usa una función nativa si es muy simple.
// Aquí se mantiene una función 'sumar' solo si la lógica original lo requería, pero eliminando la variable 'temp'.
const sumar = (a, b) => a + b;


// ----------------------------------------------------
// Integración
// ----------------------------------------------------

// Función principal limpia que orquesta el proceso.
function procesarUsuarioLimpio(nombre, edad, activarDepuracion, version) {
  if (activarDepuracion) {
    console.log("DBG"); // El log de depuración se mantiene por requisito
  }

  ejecutarModoVersion(version); // 2. Imprimir modo.
  return obtenerMensajeEstado(edad); // 1. Devolver estado.
}


// ----------------------------------------------------
// EJECUCIÓN (Mantiene la funcionalidad original)
// ----------------------------------------------------
const resultado1 = procesarUsuarioLimpio("pepe", 22, false, "v1");
console.log("resultado:", resultado1); // Imprime 'mod1' y 'resultado: ok'

console.log(sumar(5, 3)); // Imprime 8