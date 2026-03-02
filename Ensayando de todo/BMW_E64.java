import java.util.Scanner;

class DatosBMW {
    String marca;
    String modelo;
    int cv; // Usamos int porque los caballos son números enteros
}

public class BMW_E64 {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        DatosBMW[] garaje = new DatosBMW[3];

        for (int i = 0; i < 3; i++) {

            garaje[i] = new DatosBMW(); // Sin esto, las siguientes líneas fallan

            garaje[i].marca = "BMW"; // La marca la dejamos fija

            System.out.print("Introduce el modelo para el coche " + (i + 1) + ": ");
            garaje[i].modelo = teclado.nextLine();

            System.out.print("¿Cuántos CV tiene el " + garaje[i].modelo + "?: ");
            garaje[i].cv = teclado.nextInt();

            teclado.nextLine(); // Limpiamos el buffer

            System.out.println(
                    "--- Guardado: " + garaje[i].marca + " " + garaje[i].modelo + " con " + garaje[i].cv + "cv ---\n");
        }
        teclado.close();
    }
}