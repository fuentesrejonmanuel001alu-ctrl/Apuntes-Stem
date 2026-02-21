package PROGRAMACION.JAVA;

import java.util.Scanner;

public class UD1_R4_ej1 {
    public static void main(String[] args) {
    int resultado =0;
    int numeroUsuario;
    Scanner scanner = new Scanner(System.in); //Dato estándar
    System.out.print("Dime un número entero positivo: "); // Pregunta a usuario
    numeroUsuario = scanner.nextInt();
    scanner.close();
    for (int i=1; i<=10; i++){
    resultado= numeroUsuario* i;
    System.out.println("El resultado de multiplicar por " + i + " es : " + resultado);

    }
    }
}
