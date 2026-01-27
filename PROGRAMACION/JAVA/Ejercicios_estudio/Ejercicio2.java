package PROGRAMACION.JAVA.Ejercicios_estudio;

import java.util.Scanner;

public class Ejercicio2 {

    public static void main(String[] args) {

        double Fahrenheit = 0;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Escribe los grados en Celsius:");
        double Celsius = scanner.nextDouble();

        Fahrenheit = (Celsius * 9 / 5) + 32;

        System.out.printf("La conversión a ºF es %.2f", Fahrenheit);

        scanner.close();
    }
}
