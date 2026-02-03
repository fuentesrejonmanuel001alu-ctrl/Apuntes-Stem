package Objetos;

import java.util.Scanner;

public class Ejercicio6_reloj {

    public static void main(String[] args) {

        int respuestaUsuario = 0;

        Scanner scanner = new Scanner(System.in); // Dato estándar
        System.out.print("Dime la hora: "); // Pregunta a usuario
        respuestaUsuario = scanner.nextInt();
        Reloj hora=new Reloj(respuestaUsuario);
        System.out.println(hora.horario);

        scanner.close();
        System.out.println("La hora es: ");
    
}
}
class Reloj{
    int hora, minuto, segundo;
    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return super.toString(int hora, minuto, segundo);
    }
}