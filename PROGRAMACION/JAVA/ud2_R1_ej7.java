package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;

public class ud2_R1_ej7 {
    public static void main(String[] args) {

        ArrayList<String> dias = new ArrayList<>(Arrays.asList("lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"));
        dias.set(6,"Domingo, fin de semana");
        System.out.println(dias);
    }

}
