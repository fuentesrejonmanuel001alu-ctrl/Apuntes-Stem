package PROGRAMACION.JAVA;

import java.util.Scanner;

public class pt_sushi {
    public static void main(String[] args) { 
    double consumoArrozMaki = 120, consumoAguaMaki = 0.10, precioUnitarioMaki = 8;
    double consumoArrozNigiri = 50, consumoAguaNigiri = 0.05, precioUnitarioNigiri = 10;
    double consumoArrozSashimi = 0, consumoAguaSashimi = 0.02, precioUnitarioSashimi = 12;

    int totalMaki = 0, totalNigiri = 0, totalSashimi = 0, importeTotal = 0;
    String maki = "maki", nigiri = "nigiri", sashimi = "sashimi";
    int contadorPedidos = 0, arrozGastadoTotal = 0, aguaGastadaTotal = 0;
    boolean hayStock = true;

    int numeroPedidos = 0;
    double stockArroz = 0;
    double stockAgua = 0;

    Scanner scanner = new Scanner(System.in);
    System.out.print("Número de pedidos: "); // Pedimos y guardamos cada dato
    numeroPedidos=scanner.Int();
    System.out.print("Dime el stock de Arroz (gr): ");
    stockArroz=scanner.double();
    System.out.print("Dime el stock de Agua (L): ");
    stockAgua=scanner.double();

    while(contadorPedidos<numeroPedidos&&hayStock==true){

               // A. Selección de Plato 🍣
    String tipoPlato = System.out.print("Pedido " + (contadorPedidos + 1) + ": ¿Qué plato quieres? (maki, nigiri, sashimi)");

    while (tipoPlato != maki && tipoPlato != nigiri && tipoPlato != sashimi) {
        System.out.print("Error. Introduce maki, nigiri o sashimi:");
    }

}

    scanner.close()

}
}

