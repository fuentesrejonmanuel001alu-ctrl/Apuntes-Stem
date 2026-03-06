public class Programador extends Empleado{

    private final double BONIFICADOR = 1.5;

    public Programador(String nombre, double sueldoBase) {
        super(nombre, sueldoBase);
    }

    @Override
    public String toString() {
        return super.toString() + "Programador [BONIFICADOR=" + BONIFICADOR + "]";
    }

    double calcularSueldo() {
        return sueldoBase * BONIFICADOR;
    }

}
