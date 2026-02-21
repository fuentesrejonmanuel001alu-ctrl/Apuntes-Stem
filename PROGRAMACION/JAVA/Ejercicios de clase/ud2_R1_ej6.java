package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej6 {
    public static void main(String[] args) {
        ArrayList<String> frutas = new ArrayList<>(Arrays.asList("manzana", "banana", "naranja"));

        frutas.remove(0);

        frutas.add("fresa");

        System.out.println(frutas);

    }

}
