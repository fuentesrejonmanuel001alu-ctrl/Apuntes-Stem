package PROGRAMACION.JAVA.Ejercicios_estudio;

// PASO 1: Importar la herramienta (debe ir después del package)
import java.util.Scanner;

public class Ejercicio1 {

    // PASO 2: El motor del programa
    public static void main(String[] args) {

        // PASO 3: Crear el objeto Scanner
        Scanner lector = new Scanner(System.in);

        // PASO 4: Pedir los datos
        System.out.println("Escribe el primer número:");
        int n1 = lector.nextInt();

        System.out.println("Escribe el segundo número:");
        int n2 = lector.nextInt();

        // PASO 5: Operación y resultado
        int suma = n1 + n2;
        System.out.println("La suma de " + n1 + " y " + n2 + " es: " + suma);
        
        lector.close();
    }
}
    

