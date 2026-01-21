package PROGRAMACION.JAVA;

import java.util.Scanner;

public class UD1_R6_ej1 {
    public static void main(String[] args) {
        double sumaNotas = 0;
        double promedio = 0;
        double numeroNotas = 0;
        double aprobado = 0;
        double suspenso = 0;
        int i = 1;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce la calificación del alumno " + i + ": ");
        double calificacion = scanner.nextDouble();
        while (calificacion != -1) {
            i++;
            if (calificacion >= 5) {
                aprobado++;
            } else {
                suspenso++;
            }
            numeroNotas++;
            sumaNotas += calificacion;
            System.out.print("Introduce la calificación del alumno " + i + ": ");
            calificacion = scanner.nextDouble();
            promedio = sumaNotas / numeroNotas;

        }
        scanner.close();

        if (numeroNotas > 0) {
            promedio = sumaNotas / numeroNotas;
            System.out.printf("Hay %.0f aprobados y %.0f suspensos | La calificación media es: %.2f", aprobado, suspenso, promedio);
        } else {
            System.out.printf("No se introdujeron notas");
        }

    }

}

