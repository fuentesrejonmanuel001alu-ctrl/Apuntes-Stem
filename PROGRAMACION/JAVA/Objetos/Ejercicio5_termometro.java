package Objetos;

import java.util.Scanner;

public class Ejercicio5_termometro {

    public static void main(String[] args) {

        double respuestaUsuario = 0;

        Scanner scanner = new Scanner(System.in); // Dato estándar
        System.out.print("Dime la temperatura en ºC: "); // Pregunta a usuario
        respuestaUsuario = scanner.nextDouble();
        Termometro termometro1=new Termometro(respuestaUsuario);
        System.out.println(termometro1.temperatura);


        scanner.close();
        System.out.println("La temperatura es: " + termometro1.convertirFahrenheit() + " ºF ");

    }

}

class Termometro {
    double temperatura;

    Termometro(double temperatura){
        this.temperatura = temperatura;
    }

    double convertirFahrenheit() {
        return (temperatura * 9/5) + 32;
    }
}
