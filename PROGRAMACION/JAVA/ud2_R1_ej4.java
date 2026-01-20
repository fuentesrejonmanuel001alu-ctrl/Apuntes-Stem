package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej4 {
    public static void main(String[] args) {

        ArrayList<String> animales = new ArrayList<>(Arrays.asList("perro", "gato"));
        animales.add(0, "loro");
        animales.add(1, "tortuga");

        System.out.println(animales);

    }

}
