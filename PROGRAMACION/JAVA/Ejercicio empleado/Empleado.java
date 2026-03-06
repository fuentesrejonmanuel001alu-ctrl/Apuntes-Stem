public class Empleado {

    String nombre;
    double sueldoBase;

    
    public Empleado(String nombre, double sueldoBase) {
        this.nombre = nombre;
        this.sueldoBase = sueldoBase;
    }


    @Override
    public String toString() {
        return "nombre [nombre=" + nombre + ", sueldoBase=" + sueldoBase + "]";
    }

    
    
}
