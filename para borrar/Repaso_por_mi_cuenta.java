import java.util.Scanner;

public class Repaso_por_mi_cuenta {

    public static void main(String[] args) {

        String[] invitados = new String[3];

        Scanner teclado = new Scanner(System.in);

        for (int i = 0; i < 3; i++) {
            System.out.print("Introduce el invitado " + (i + 1) + ": ");
            invitados[i] = teclado.nextLine();
        }
        System.out.println("\nLista de invitados:");
        for (String nombre : invitados) {
            System.out.println("- " + nombre);
        }
        teclado.close();
    }
}