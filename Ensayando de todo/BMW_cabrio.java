import java.util.ArrayList; // Necesario para la lista elástica
import java.util.Scanner;

// CLASE MOLDE
class DatosBMW {
    // 1. Atributos PRIVADOS (Nadie los toca desde fuera)
    private String modelo;
    private int cv;

    // 2. SETTERS (Para escribir los datos con seguridad)
    public void setModelo(String modeloRecibido) {
        this.modelo = modeloRecibido;
    }

    public void setCv(int cvRecibido) {
        if (cvRecibido > 0) {
            this.cv = cvRecibido;
        } else {
            System.out.println("CV no válidos, se pondrá 0 por defecto.");
            this.cv = 0;
        }
    }

    // 3. GETTERS (Para leer los datos)
    public String getModelo() {
        return this.modelo;
    }

    public int getCv() {
        return this.cv;
    }
}

// CLASE PRINCIPAL
public class BMW_E64 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        
        // 4. CREACIÓN DEL ARRAYLIST
        // Se lee: "Una lista llamada 'garaje' que solo guarda objetos de tipo 'DatosBMW'"
        ArrayList<DatosBMW> garaje = new ArrayList<>();

        System.out.println("--- BIENVENIDO AL REGISTRO BMW E64 ---");

        for (int i = 0; i < 2; i++) {
            // A. Creamos el objeto vacío (El chasis del coche)
            DatosBMW nuevoCoche = new DatosBMW();

            System.out.print("Introduce el modelo (ej: 650i): ");
            String mod = teclado.nextLine();
            // B. Usamos el SETTER para guardar el nombre
            nuevoCoche.setModelo(mod);

            System.out.print("Introduce los caballos: ");
            int potencia = teclado.nextInt();
            // C. Usamos el SETTER para guardar los caballos
            nuevoCoche.setCv(potencia);
            
            teclado.nextLine(); // Limpiar el "Enter" residual

            // D. INTEGRACIÓN: Guardamos el coche completo en la lista
            garaje.add(nuevoCoche);
            System.out.println("Coche guardado con éxito.\n");
        }

        // 5. MOSTRAR LOS DATOS (Recorrer el ArrayList)
        System.out.println("Lista final en el garaje:");
        for (DatosBMW c : garaje) {
            // E. Usamos los GETTERS para imprimir
            System.out.println("- Modelo: " + c.getModelo() + " | Potencia: " + c.getCv() + "cv.");
        }

        teclado.close(); // Cerramos el scanner para evitar el error de aviso
    }
}