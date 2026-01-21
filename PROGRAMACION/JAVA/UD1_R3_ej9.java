import java.util.Scanner;

public class UD1_R3_ej9 {
    /**
     * 
     * @param args
     */
    public static void main(String[] args) {
        int numeroUsuario = 0;
        int digito = 0;
        int restante = 0;
        int suma = 0;
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Dime un número de dos cifras: ");
        numeroUsuario = scanner.nextInt();
        
        // 1. Verificamos si el número tiene dos cifras
        if (numeroUsuario < 10 || numeroUsuario > 99) {
            System.out.println("Error: no has introducido un número de dos cifras.");
        } else {
            // 2. Extraemos las decenas (al ser int, la división ya quita los decimales)
            digito = numeroUsuario / 10; 
            
            // 3. Extraemos las unidades usando el resto (%)
            restante = numeroUsuario % 10;
            
            // 4. Calculamos la suma
            suma = digito + restante;
            
            // 5. Mostramos el resultado solo si el número era válido
            System.out.println("La suma de los dos dígitos de " + numeroUsuario + " es " + suma);
        }
        
        scanner.close();
    }
}
//En el ejercicio de javascript, usamos Marth.floor, qaplicado aquí sería:
//digito = (int) Math.floor(numeroUsuario / 10.0);

//¿Por qué pusimos 10.0 en lugar de 10? 🧐
//Si haces 45 / 10, Java dice: "Entero entre entero da entero", y te devuelve 4. 
//Math.floor(4) simplemente devuelve 4.0.
//Si haces 45 / 10.0, Java dice: "Aquí hay decimales", y te devuelve 4.5. 
//Math.floor(4.5) entonces hace su trabajo y lo baja a 4.0