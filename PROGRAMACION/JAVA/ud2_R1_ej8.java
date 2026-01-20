package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej8 {
    public static void main(String[] args) {

        ArrayList<Integer> numeros = new ArrayList<>(Arrays.asList(100, 200, 300));
        int temporal = numeros.get(0);
        numeros.set(0, numeros.getLast());
        numeros.set(2, temporal);
        System.out.print(numeros);
    }

}
