package PROGRAMACION.JAVA.Ejercicios_estudio;

import java.util.Scanner;

public class Ejercicio5 {

    public static void main(String[] args) {

        int formula1 = 0;
        double formula2 = 0;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Dime qué quieres calcular: 1. El área de un cuadrado; 2. El área de un triángulo");
        int decision = scanner.nextInt();

        if (decision == 1) {
            System.out.println("Dime un número entero");
            int numero1 = scanner.nextInt();

            System.out.println("Dime otro número entero");
            int numero2 = scanner.nextInt();

            formula1 = numero1 * numero2;
            System.out.print("El resultado es :\n" + formula1);

        } else if (decision == 2) {

            System.out.println("Dime la base");
            double numero3 = scanner.nextDouble();
            System.out.println("Dime la altura");
            double numero4 = scanner.nextDouble();

            formula2 = (numero3 * numero4) / 2;
            System.out.printf("El resultado es: %.2f\n",formula2);

        } else {

            System.out.println("Error. Opción no válida");

        }

        scanner.close();
    }

}
