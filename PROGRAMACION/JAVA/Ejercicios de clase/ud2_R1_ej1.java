package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej1 {
    public static void main(String[] args) {

        ArrayList<Integer> numeros = new ArrayList<>(Arrays.asList(5, 10, 15, 20));
        System.out.println(numeros.get(0));
        System.out.println(numeros.get(numeros.size() - 1));
    }
}
