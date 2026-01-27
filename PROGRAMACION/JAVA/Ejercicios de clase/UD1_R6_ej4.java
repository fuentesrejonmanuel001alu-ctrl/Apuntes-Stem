package PROGRAMACION.JAVA;

import java.util.Scanner; // Importamos la herramienta para leer el teclado

public class UD1_R6_ej4 {
    public static void main(String[] args) {
        // 1. Declaramos las variables. Usamos 'double' para admitir decimales.
        double litrosGastadosTotal = 0; // Acumulador de litros totales
        double costeTotal = 0;          // Acumulador de dinero total
        Scanner scanner = new Scanner(System.in); // Creamos el lector

        // 2. Pedimos los datos iniciales de configuración
        System.out.print("¿A cuánto está el litro de combustible? (€): ");
        double precioPorLitro = scanner.nextDouble();

        System.out.print("¿Cuál es el consumo medio del coche? (L/100km): ");
        double consumoMedio = scanner.nextDouble();

        System.out.print("¿Cuántos litros iniciales hay en el depósito?: ");
        double litrosActuales = scanner.nextDouble();

        // 3. Pedimos los km del primer viaje para "arrancar" el bucle
        System.out.print("¿Km del primer viaje? (Escribe 0 para terminar): ");
        double kmViaje = scanner.nextDouble();

        // 4. El bucle se repite mientras los km NO sean 0
        while (kmViaje != 0) {
            // A. Calculamos el consumo de ESTE viaje concreto
            double consumidoEnViaje = (kmViaje * consumoMedio) / 100;
            
            // B. Calculamos el coste de ESTE viaje
            double costeViaje = consumidoEnViaje * precioPorLitro;

            // C. Actualizamos los totales y el depósito
            litrosActuales = litrosActuales - consumidoEnViaje; // Restamos al depósito
            litrosGastadosTotal = litrosGastadosTotal + consumidoEnViaje; // Sumamos al total gastado
            costeTotal = costeTotal + costeViaje; // Sumamos al dinero total gastado

            // D. Mostramos la información al usuario
            System.out.println("\n--- Resumen del viaje ---");
            System.out.println("-> Has gastado: " + consumidoEnViaje + " L");
            System.out.println("-> Coste del viaje: " + costeViaje + " €");
            System.out.println("-> Gasolina restante: " + litrosActuales + " L");
            System.out.println("-------------------------\n");

            // E. IMPORTANTE: Pedimos los km del SIGUIENTE viaje. 
            // Si el usuario pone 0, la condición del 'while' dejará de cumplirse.
            System.out.print("¿Km del siguiente viaje? (0 para salir): ");
            kmViaje = scanner.nextDouble();
        }

        // 5. Al salir del bucle, mostramos el resumen final
        System.out.println("\n*** ESTADÍSTICAS FINALES ***");
        System.out.println("Total litros consumidos: " + litrosGastadosTotal + " L");
        System.out.println("Dinero total gastado: " + costeTotal + " €");
        System.out.println("Depósito final: " + litrosActuales + " L");

        scanner.close(); // Cerramos el scanner
    } // Cierra el main
} // Cierra la clase