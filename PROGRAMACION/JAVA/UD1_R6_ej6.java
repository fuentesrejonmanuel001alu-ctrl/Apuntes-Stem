import java.util.Scanner;

public class UD1_R6_ej6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero1, numero2, resultado = 0;
        String operacionMatematica;
        String entrada = ""; // Esta variable controla el bucle

        // El bucle se repite mientras la entrada NO sea "SALIR"
        while (!entrada.equalsIgnoreCase("SALIR")) { // Así se pone por ser texto
            System.out.print("Dime un número (o escribe 'SALIR' para terminar): ");
            entrada = scanner.next();

            // Solo calculamos si el usuario no ha querido salir
            if (!entrada.equalsIgnoreCase("SALIR")) {
                numero1 = Integer.parseInt(entrada); // Convertimos el texto a número

                System.out.print("Dime el segundo número: ");
                numero2 = scanner.nextInt();

                System.out.print("Indica operación (*, /, +, -): ");
                operacionMatematica = scanner.next();

                if (operacionMatematica.equals("*")) {
                    resultado = numero1 * numero2;
                } else if (operacionMatematica.equals("/")) {
                    resultado = (numero2 != 0) ? (numero1 / numero2) : 0; 
                } else if (operacionMatematica.equals("+")) {
                    resultado = numero1 + numero2;
                } else if (operacionMatematica.equals("-")) {
                    resultado = numero1 - numero2;
                } else {
                    System.out.println("Error: Operación no reconocida.");
                }

                System.out.println("El resultado es: " + resultado);
                System.out.println("-------------------------");
            }
        }
        
        System.out.println("Calculadora cerrada.");
        scanner.close();
    }
}