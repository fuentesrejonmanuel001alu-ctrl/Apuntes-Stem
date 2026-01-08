import java.util.Scanner; //Dato estándar

public class CaramelosNinios { //Dato estándar, debe coincidir con nombre archivo
    public static void main(String[] args) { //Dato estándar
        Scanner scanner = new Scanner(System.in); //Dato estándar
        System.out.print("¿Cuántos caramelos tienes?"); // Pregunta a usuario
        int repartoCaramelos = scanner.nextInt(); //Guardamos respuesta de usuario--- java lee los números enteros así
        System.out.print("¿Cuántos niños hay?"); //Pregunta a usuario
        int numeroNinios = scanner.nextInt(); //Como hay dos preguntas, debe haber dos respuestas
        int caramelosPorNinio = repartoCaramelos / numeroNinios; //hacemos los cálculos, ojo con olvidar;
        int caramelosSobran = repartoCaramelos % numeroNinios; //los cálculos son con variable scanner
         
        System.out.println("Caramelos a cada niño: " + caramelosPorNinio + " | " + "Caramelos sobrantes: " + caramelosSobran);

    }

    }