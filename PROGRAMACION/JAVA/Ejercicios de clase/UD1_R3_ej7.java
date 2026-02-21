package PROGRAMACION.JAVA;

import java.util.Scanner;

public class UD1_R3_ej7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // 1. Pedimos los datos para que las variables no estén vacías
        System.out.print("Introduce el primer número: ");
        int numero1 = scanner.nextInt();
        
        System.out.print("Introduce el segundo número: ");
        int numero2 = scanner.nextInt();
        
        System.out.print("Introduce la operación (+, -, *, /): ");
        String operacionMatematica = scanner.next();
        
        int resultado = 0;

        // 2. Lógica de la calculadora
        if (operacionMatematica.equals("*")) {
            resultado = numero1 * numero2;
        } else if (operacionMatematica.equals("/")) {
            // Usamos una condición rápida para evitar dividir por cero
            resultado = (numero2 != 0) ? (numero1 / numero2) : 0; 
        } else if (operacionMatematica.equals("+")) {
            resultado = numero1 + numero2;
        } else if (operacionMatematica.equals("-")) {
            resultado = numero1 - numero2;
        } else {
            System.out.println("Error: Operación no reconocida.");
        }

        System.out.println("El resultado es: " + resultado);
        System.out.println("-------------------------");
        
        System.out.println("Calculadora cerrada.");
        scanner.close(); // Cerramos el scanner dentro del método main
    }
}
