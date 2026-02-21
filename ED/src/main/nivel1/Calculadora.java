package nivel1;

/**
 * Proporciona herramientas para cálculos financieros y conversiones.
 * @author TuNombre
 * @version 1.0
 * @since 1.0
 */
public class Calculadora {

    /**
     * Calcula el interés simple de una inversión.
     * @param capital Cantidad inicial invertida.
     * @param tasa Porcentaje de interés (ej. 0.05).
     * @param anios Tiempo en años.
     * @return El interés acumulado.
     * @throws IllegalArgumentException Si algún valor es negativo.
     */
    public double calcularInteresSimple(double capital, double tasa, int anios) {
        if (capital < 0 || tasa < 0 || anios < 0) {
            throw new IllegalArgumentException("Los valores no pueden ser negativos");
        }
        return capital * tasa * anios;
    }
}