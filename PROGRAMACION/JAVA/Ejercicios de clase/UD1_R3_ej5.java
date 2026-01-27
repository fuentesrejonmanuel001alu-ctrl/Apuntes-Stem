package PROGRAMACION.JAVA;

import java.util.Scanner;

public class UD1_R3_ej5 {

    public static void main(String[] args) {
    int numeroUsuario = 0;
    Scanner scanner = new Scanner(System.in); //Dato estándar
    System.out.print("Dime un número entero positivo: "); // Pregunta a usuario
    numeroUsuario = scanner.nextInt();
    if (numeroUsuario >= 10 && numeroUsuario <= 20) {
        System.out.print(numeroUsuario + " está entre las cifras 10 y 20");
    }else {
        System.out.print(numeroUsuario + " está fuera de rango");
    }
    scanner.close();
}

}
