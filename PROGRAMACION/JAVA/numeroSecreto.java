import java.util.Scanner;

public class numeroSecreto {
    public static void main(String[] args) {
        int numeroSecreto = 8;
        int adivinaNumero;
        Scanner scanner = new Scanner(System.in); // Dato estándar

        System.out.print("Dime un número secreto entre 1 y 10: "); // Pregunta a usuario
        adivinaNumero = scanner.nextInt();
        while (adivinaNumero != numeroSecreto) {
            System.out.println("Inténtalo de nuevo");
            System.out.println("Dime un número secreto entre 1 y 10: ");
            adivinaNumero = scanner.nextInt();
        }
        scanner.close();
        System.out.println("¡Correcto! Has adivinado el número");

    }
}
