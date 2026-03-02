
import java.util.Scanner;

public class Borrar {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        int tiempo;
        String respuesta = "";

        System.out.print("Dime la marca del coche: ");
        respuesta = teclado.nextLine();

        while (!respuesta.equalsIgnoreCase("salir")) {
            System.out.print("¿Cuántos años tiene el " + respuesta + "?:");
            tiempo = teclado.nextInt();
            teclado.nextLine();

            if (tiempo <= 2) {
                System.out.println("Cita prioritaria: Es un coche nuevo");
            } else if (tiempo >= 3 && tiempo < 30) {
                System.out.println("Cita normal: Póngase a la cola");
            } else {
                System.out.println("Es un vehiculo histórico");
            }
            System.out.print("Dime la marca del coche: ");
            respuesta = teclado.nextLine();

        }
        System.out.println("Taller cerrado. ¡Buen trabajo!");
        teclado.close();
    }
}