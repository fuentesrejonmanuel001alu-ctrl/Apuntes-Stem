import java.util.Scanner;

public class BMW {
    
    public static void main(String[] args) {

              Scanner teclado = new Scanner(System.in);

        // 1. Declaramos el String individual con los datos y si no lo preguntamos, ponemos: String modelo650i = "V8 4.8L"; 
        
        System.out.println("Dime qué motor lleva tu BMW E64");
        String modelo650i = teclado.nextLine();

        System.out.println("Perfecto, tu Serie 6 ahora tiene un motor: " + modelo650i);

        // 2. Declaramos el array de Strings para 3 extras
        String[] extrasE64 = new String[3];

        // 3. Llenamos los huecos (índices 0, 1 y 2)

        extrasE64[0] = "Capota de lona";
        extrasE64[1] = "Asientos de cuero";
        extrasE64[2] = "Navegador iDrive";

        // 4. Imprimimos todo usando el bucle
        System.out.println("Especificaciones del BMW Serie 6:");
        System.out.println("Motor: " + modelo650i);
        System.out.println("--- Lista de Equipamiento ---");

        for (int i = 0; i < 3; i++) {
            System.out.println((i + 1) + ". " + extrasE64[i]);
        }
        teclado.close();
    }
}