package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Scanner;

public class pt_sacamuelas {
    public static void main(String[] args) {

        final String DIENTE = "A", DIENTESANO = "Y", DIENTEDANIADO = "Z";
        final int NUMDIENTES = 10, MAXDIENTESPICADOS = 5;
        double DIENTESPICADOS = Math.floor(Math.random() * MAXDIENTESPICADOS) + 1;

        int DIENTESNOPICADOS = (int) (NUMDIENTES - DIENTESPICADOS);
        String JUGADOR1 = "Jugador 1";
        final String JUGADOR2 = "Jugador 2";

        Boolean juegoPerdido = false;
        ArrayList<String> tableroInterno = null, tableroVisible = new ArrayList<String>();
        String jugadorActual = JUGADOR1;
        String mensajeFinPrograma = "Enhorabuena, ambos ganan";
        int posicionSeleccionada = 0;
        int dientesPicadosIntroducidos = 0;
        int posicionDienteIntroducir = 0;

        Scanner scanner = new Scanner(System.in);

        for (int index = 0; index < NUMDIENTES; index++) {
            tableroVisible.add(DIENTE);
        }

        while (dientesPicadosIntroducidos < DIENTESPICADOS) {
            posicionDienteIntroducir = (int) Math.floor(Math.random() * NUMDIENTES);
            if (tableroInterno.get(posicionDienteIntroducir) != null) {
                tableroInterno.get(posicionDienteIntroducir = 1);
                dientesPicadosIntroducidos++;
            }

        }
        for (int index = 0; index < NUMDIENTES; index++) {
            tableroVisible.add(DIENTE);
        }
        for (int index = 0; index < DIENTESNOPICADOS && !juegoPerdido; index++) {
            do {
                System.out.println(jugadorActual + "Elige: ");
                int decision = scanner.nextInt();

            } while (tableroVisible.get(posicionSeleccionada) != DIENTE
                    || (posicionSeleccionada < 0 || posicionSeleccionada > NUMDIENTES) || isNan(posicionSeleccionada));
        }
    }

    private static boolean isNan(int posicionSeleccionada) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'isNan'");
    }
}
