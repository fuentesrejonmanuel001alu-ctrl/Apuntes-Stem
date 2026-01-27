package PROGRAMACION.JAVA.Ejercicios_estudio;

import java.util.Scanner;

public class Ejercicio3 {

    public static void main(String[] args) {

        double IMC = 0;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Dime tu peso en Kg: ");
        double peso = scanner.nextDouble();

        System.out.println("Dime tu altura en m: ");
        double altura = scanner.nextDouble();

        IMC = peso / (altura * altura);

        System.out.printf("Tu IMC es %.2f", IMC);

        scanner.close();
    
}
}