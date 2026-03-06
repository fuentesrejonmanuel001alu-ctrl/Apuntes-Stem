public class Diseniador extends Empleado {
    private final double BONIFICADOR = 1.1;

    public Diseniador(String nombre, double sueldoBase) {
        super(nombre, sueldoBase);
    }

    @Override
    public String toString() {
        return super.toString() + " Tiene un bonificador de " + BONIFICADOR;
    }

    double calcularSueldo(){
        return sueldoBase * BONIFICADOR;
    }

    
}