package nivel3;

/**
 * Representa un concepto individual dentro de una factura.
 * @author TuNombre
 * @version 1.0
 */
public class LineaFactura {
    private String concepto;
    private double precioUnitario;
    private int cantidad;

    /**
     * Calcula el subtotal de la línea usando {@code precioUnitario * cantidad}.
     * @return El subtotal sin impuestos.
     */
    public double calcularSubtotal() {
        return precioUnitario * cantidad;
    }
}