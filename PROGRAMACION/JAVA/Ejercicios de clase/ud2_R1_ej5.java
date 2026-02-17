package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej5 {
    public static void main(String[] args) {

        ArrayList<String> animales = new ArrayList<>(Arrays.asList("perro", "gato"));
        String eliminado = animales.remove(0);

        System.out.println(animales);
        System.out.println(eliminado);

    }

}
