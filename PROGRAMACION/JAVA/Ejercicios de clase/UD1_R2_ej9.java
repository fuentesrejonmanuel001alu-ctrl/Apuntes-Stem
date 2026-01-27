package PROGRAMACION.JAVA;

import java.util.Scanner; //Dato estándar

public class UD1_R2_ej9 { // Dato estándar, debe coincidir con nombre archivo
    public static void main(String[] args) { //Dato estándar
        int repartoCaramelos=0;
        int numeroNinios=0;
        int caramelosPorNinio=0;
        int caramelosSobran=0;
        Scanner scanner = new Scanner(System.in); //Dato estándar
        System.out.print("¿Cuántos caramelos tienes?"); // Pregunta a usuario
        repartoCaramelos = scanner.nextInt(); //Guardamos respuesta de usuario--- java lee los números enteros así
        System.out.print("¿Cuántos niños hay?"); //Pregunta a usuario
        numeroNinios = scanner.nextInt(); //Como hay dos preguntas, debe haber dos respuestas
        scanner.close();
        caramelosPorNinio = repartoCaramelos / numeroNinios; //hacemos los cálculos, ojo con olvidar;
        caramelosSobran = repartoCaramelos % numeroNinios; //los cálculos son con variable scanner
         
        System.out.println("Caramelos a cada niño: " + caramelosPorNinio + " | " + "Caramelos sobrantes: " + caramelosSobran);

    }

}