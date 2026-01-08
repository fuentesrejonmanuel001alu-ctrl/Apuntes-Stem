import java.util.Scanner;

public class PesoLuna {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su peso: ");
        double pesoTierra = scanner.nextDouble();
        double gravedadLuna = 0.165; 
        double pesoEnLaLuna = pesoTierra * gravedadLuna;

        System.out.println("Tu peso en la luna es " + pesoEnLaLuna + " kg ");

    }
}