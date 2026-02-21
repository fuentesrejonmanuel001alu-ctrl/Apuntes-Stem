import java.util.Scanner;

public class mi_primer_java {
    public static void main(String[] args) {
        String nombre = "";
        double sueldo = 0;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su nombre: ");
        nombre = scanner.next(); //Esto solo guarda un nombre, si queremos compuesto o apellidos: nextLine()
        System.out.print("Ingrese su sueldo: ");
        sueldo = scanner.nextDouble();

        scanner.close();
        System.out.printf("Hola %s, tu sueldo es %.2f €", nombre, sueldo);
    }
}