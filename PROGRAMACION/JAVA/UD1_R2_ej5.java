package PROGRAMACION.JAVA;

import java.util.Scanner;

public class UD1_R2_ej5 {
    /**
     * 
     * @param args
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su peso: ");
        double pesoTierra = scanner.nextDouble();
        final double gravedadLuna = 0.165; // las constantes en java se ponen con final
        double pesoEnLaLuna = pesoTierra * gravedadLuna;

        System.out.println("Tu peso en la luna es " + pesoEnLaLuna + " kg ");
        System.out.printf("Tu peso en la luna es %.2f " + pesoEnLaLuna + " kg "); // %2.f (estoy diciendo que quiero dos
                                                                                  // decimales) equivalente a foTixed

        scanner.close();
    }
}