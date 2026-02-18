package nivel1; // O nivel3, según donde lo dejes finalmente

import java.util.ArrayList;
import java.util.List;
import nivel3.LineaFactura;
import nivel3.ConstantesFactura;

/**
 * Gestiona el cálculo total de una factura vinculada a {@link LineaFactura}.
 * @author TuNombre
 * @version 1.0
 */
public class Factura {
    private final List<LineaFactura> lineas = new ArrayList<>();

    /**
     * Añade una línea respetando el límite {@link ConstantesFactura#MAX_LINEAS_FACTURA}.
     * @param linea Objeto de tipo linea a añadir.
     * @throws IllegalStateException Si se supera el máximo permitido.
     */
    public void agregarLinea(LineaFactura linea) {
        if (lineas.size() >= ConstantesFactura.MAX_LINEAS_FACTURA) {
            throw new IllegalStateException("Demasiadas líneas");
        }
        lineas.add(linea);
    }

    /**
     * Calcula el total final aplicando el {@link ConstantesFactura#IVA_GENERAL}.
     * @return Total con impuestos incluidos.
     */
    public double calcularTotal() {
        double subtotal = 0;
        for (LineaFactura l : lineas) {
            subtotal += l.calcularSubtotal();
        }
        return subtotal * (1 + ConstantesFactura.IVA_GENERAL);
    }
}