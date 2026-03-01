import java.util.Scanner;

class Coche {
    String marca;
    int potencia;
}
public class Para_borrar {

    public static void main(String[] args) {

        String marca;
        String modelo;
        int potencia;
        double precio;

        Scanner teclado = new Scanner(System.in);

        Coche[] listaCoches = new Coche[3];

        for (int i = 0; i < 3; i++) {
            listaCoches[i]= new Coche();
            System.out.print("Introduce la marca para el coche " + (i+1) + ": ");
            listaCoches[i].marca = teclado.nextLine();

            System.out.print("Potencia (CV) del coche " + (i+1) + ": ");
            listaCoches[i].potencia = teclado.nextInt();
            teclado.nextLine(); // Limpiamos el búfer para que no se salte la siguiente marca
            
        }
        System.out.println("--- INVENTARIO DEL TALLER ---");
        for (int i = 0; i < 3; i++) {
        System.out.println("Plaza " + i + ": " + listaCoches[i].marca + " (" + listaCoches[i].potencia + " CV)");
        }
    }

}
