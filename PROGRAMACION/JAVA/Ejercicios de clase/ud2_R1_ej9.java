package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej9 {
    public static void main(String[] args) {

        ArrayList<String> cola = new ArrayList<>(Arrays.asList());
        cola.add("cliente1");
        String eliminado = cola.remove(0);
        System.out.println(eliminado);
        System.out.println(cola);

    }

}
