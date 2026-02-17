package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej3 {
    public static void main(String[] args) {

        ArrayList<String> colores = new ArrayList<>(Arrays.asList("rojo", "verde", "azul"));

        String eliminado = colores.remove(colores.size() - 1);

        System.out.println(eliminado);
        System.out.println(colores);
    }

}
