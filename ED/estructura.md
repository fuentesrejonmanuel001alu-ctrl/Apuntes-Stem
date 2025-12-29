mkdir src // creo carpeta
touch src/ejercicio-1.js src/ejercicio-2.js src/ejercicio-3.js //creo archivos vacíos de refactorización
git add .
git commit -m "feat: Estructura inicial del proyecto creada (src/)."
git push origin main

COMMIT 1

git add .
git commit -m "Refactorización y análisis del Ejercicio 1 (Boy Scout)."
git push origin main

COMMIT 2

git add .
git commit -m "Refactorización y análisis del Ejercicio 2 (YAGNI / Simplificación)."
git push origin main

COMMIT 3

git add .
git commit -m "Documentación JSDoc y mejora de expresividad en Ejercicio 3."
git push origin main

COMMIT 4

git add .
git commit -m "Revisión final de formato, estilo y organización."
git push origin main

COMMIT 5




# Prueba Técnica 3 - Clean Code

Haz clic en el botón para ver la entrega:

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/flrm4puQ)

## Instrucciones

Este repositorio contiene tres ejercicios orientados a aplicar principios de Clean Code sobre código JavaScript con malas prácticas. Trabajarás directamente sobre los archivos proporcionados y podrás reorganizar el proyecto si lo consideras necesario, siempre manteniendo la funcionalidad original del código.

## Requisitos generales del proyecto

- Mantén la funcionalidad original del código en su versión refactorizada.
- Trabaja directamente sobre los archivos originales proporcionados. En ellos podrás añadir comentarios y anotar los problemas detectados.
- Añade comentarios claros y concisos en el código original describiendo los problemas detectados y, cuando sea necesario, explicando el funcionamiento del fragmento analizado.
- Crea una carpeta llamada `src/` y guarda allí las versiones refactorizadas y limpias de cada ejercicio.
- Usa nombres de archivos en kebab-case siguiendo la convención estándar.
- Evita duplicar código innecesariamente.
- Mantén un estilo de formato coherente en todo el proyecto (indentación, espaciados y uso consistente de `const` y `let`).
- Añade los commits y el push al repositorio remoto con mensajes claros.
- Puedes crear una carpeta `docs/` si deseas añadir notas adicionales o explicaciones más extensas, pero no es obligatorio. En la mayoría de los casos, los comentarios en el código original serán suficientes. Si decides crearla, recuerda mantener la misma estructura coherente del proyecto y convención en los nombres de archivo.

## Orden de entregas y pushes requeridos

Para garantizar una entrega organizada y trazable de tu trabajo, deberás seguir este orden de commits y pushes:

1. **Push inicial**: Estructura del proyecto preparada (creación de la carpeta `src/`, organización mínima y renombrado de archivos si procede). Este push *no debe incluir la refactorización*, solo la preparación del proyecto antes de empezar a trabajar los ejercicios.

2. **Push del Ejercicio 1**: Entrega del primer ejercicio con sus anotaciones y refactorización.

3. **Push del Ejercicio 2**: Entrega del segundo ejercicio con sus anotaciones y refactorización.

4. **Push del Ejercicio 3**: Entrega del tercer ejercicio con sus anotaciones y refactorización.

5. **Push final opcional**: Última revisión general del proyecto donde puedes corregir detalles, mejorar aspectos de Clean Code o unificar criterios antes de la entrega definitiva.

## Criterios de evaluación

1. **Identificación, análisis y documentación de malas prácticas**: El alumnado detecta correctamente los problemas presentes en el código original y los documenta mediante comentarios claros, precisos y no redundantes. Se valora la capacidad para explicar la causa del problema y justificar la necesidad de su refactorización.

2. **Calidad del código refactorizado**: El código final mejora significativamente en legibilidad, claridad y coherencia, manteniendo la funcionalidad original. Se evalúan aspectos como nombres adecuados, reducción de complejidad, eliminación de duplicidades y estructura semántica.

3. **Organización del proyecto y estructura de archivos**: Se respeta la organización indicada: versiones limpias dentro de `src/`, uso de kebab-case en los nombres de archivo y estructura global consistente y profesional.

4. **Coherencia en estilo y formato**: El proyecto mantiene un estilo de formato uniforme: indentación correcta, espaciados consistentes, uso adecuado de `const`/`let`, ausencia de líneas innecesarias y legibilidad general del código.

5. **Cumplimiento de los requisitos de entrega**: Se siguen correctamente las instrucciones de la prueba: orden de pushes solicitado, preparación inicial del proyecto y entrega final estructurada.

---

## Ejercicio 1

El archivo correspondiente a este ejercicio contiene varios ejemplos de malas prácticas habituales en JavaScript: uso de variables globales, nombres poco descriptivos, comparaciones débiles, lógica innecesaria y mutación del estado desde funciones.

Siguiendo el principio de los Boy Scouts, tu tarea consiste en dejar el código mejor de como lo has encontrado: analiza el archivo original, anota los problemas detectados y produce una versión refactorizada más clara, coherente y mantenible, manteniendo exactamente la misma funcionalidad.

---

## Ejercicio 2

El archivo correspondiente a este ejercicio presenta problemas centrados en la complejidad innecesaria: variables y estructuras que no aportan nada a la funcionalidad, funciones redundantes, duplicación absurda y nombres poco significativos que dificultan la lectura.

Tu tarea consiste en aplicar el principio YAGNI para simplificar el código eliminando elementos innecesarios, reduciendo duplicidades y mejorando su claridad general. Analiza el archivo original, señala los problemas detectados y prepara una versión refactorizada más simple, directa y mantenible, manteniendo exactamente la misma funcionalidad.

---

## Ejercicio 3

El archivo correspondiente a este ejercicio contiene varias funciones sin documentación y con nombres poco expresivos.

En este ejercicio deberás aplicar comentarios JSDoc siguiendo la estructura básica vista en clase. El objetivo principal no es evaluar conocimientos avanzados de JSDoc, sino tu capacidad para documentar correctamente cada función: describir su propósito, detallar sus parámetros, indicar el tipo de retorno y añadir cualquier aclaración relevante.

Además, deberás aplicar principios de Clean Code relacionados con la expresividad del código. Se espera que mejores los nombres de funciones y variables cuando sea necesario, de modo que el código resultante sea más claro y fácil de entender incluso antes de leer los comentarios.

El archivo ya contiene `//@ts-check`, por lo que deberás escribir JSDoc con una estructura válida para evitar errores. Mantén la funcionalidad original.

A continuación tienes un ejemplo de JSDoc para que tomes como referencia en este ejercicio. No forma parte del código que debes modificar.

```javascript
/**
 * Calcula el precio final aplicando un descuento.
 * Ejemplo de JSDoc para guiar la documentación del ejercicio.
 *
 * @param {number} precio Precio original del producto.
 * @param {number} descuento Porcentaje de descuento (0–100).
 * @returns {number} Precio final tras aplicar el descuento.
 */
function calcularPrecioFinal(precio, descuento) {
    return precio - (precio * descuento / 100);
}
```