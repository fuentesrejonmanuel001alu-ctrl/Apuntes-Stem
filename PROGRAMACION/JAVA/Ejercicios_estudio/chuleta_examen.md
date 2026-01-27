1. En el 99% de los casos de aprendizaje, la primera línea real de código es la declaración de la clase. En Java, todo el código debe residir dentro de una clase.

Lo primero que escribimos siempre

public class NombreDeTuPrograma { 
    // Todo el código va aquí dentro
}

2. Si estás trabajando en un proyecto real o con un IDE (como IntelliJ o Eclipse), la verdadera primera línea suele ser la declaración del paquete.

package com.miempresa.proyecto;

public class MiClase { ... }

3. Aunque no es la primera línea del archivo, es la primera línea que se ejecuta. Sin ella, tu programa es como un coche sin motor: existe, pero no arranca.

public static void main(String[] args) {
    // Aquí empieza la magia
}

4. Como el Scanner no viene cargado por defecto (para no gastar memoria innecesariamente), tienes que "importarlo". Esta línea se escribe arriba de todo, justo después del package (si tienes uno) y antes de la clase.

import java.util.Scanner; // <--- ¡Esta pasa a ser de las primeras líneas!

public class MiPrograma { ... }

Ejemplo:

import java.util.Scanner; // 1. Importar la herramienta

public class Saludo { // 2. Definir la clase
    public static void main(String[] args) { // 3. Punto de entrada
        
        // 4. Crear el Scanner
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("¿Cómo te llamas? ");
        
        // 5. Usar el Scanner para leer texto
        String nombre = entrada.nextLine(); -- Cuando es string es nextLine
        
        System.out.println("Hola, " + nombre + ". ¡Ya sabes usar el Scanner!");
        Si ponemos printf para decimales, es %.2f, muy importante el punto antes del 2 y si añadimos \n hacemos el salto de línea

        entrada.close(); // Buena práctica: cerrar el Scanner al terminar
    }
}

entrada.nextLine() -> Para frases o palabras (String).

entrada.nextInt() -> Para números enteros (int).

entrada.nextDouble() -> Para números con decimales (double).