public class Gerente extends Empleado {
    private final double BONIFICADOR = 2;

    public Gerente(String nombre, double sueldoBase) {
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