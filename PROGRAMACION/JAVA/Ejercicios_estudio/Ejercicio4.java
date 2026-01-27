package PROGRAMACION.JAVA.Ejercicios_estudio;

import java.util.Scanner;

public class Ejercicio4 {

    public static void main(String[] args) {

        double IMC = 0;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Dime tu peso en Kg: ");
        double peso = scanner.nextDouble();

        System.out.println("Dime tu altura en m: ");
        double altura = scanner.nextDouble();

        IMC = peso / (altura * altura);

        System.out.printf("Tu IMC es %.2f\n", IMC);

        if (IMC < 18.5) {
            System.out.println("Tienes bajo peso");

        } else if (IMC >= 18.5 && IMC <= 24.9) {
            System.out.println("Tienes un peso normal");

        } else {
            System.out.println("Tienes sobrepeso");

        }
        scanner.close();

    }
}
