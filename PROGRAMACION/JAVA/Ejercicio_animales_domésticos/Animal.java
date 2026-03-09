package Ejercicio_animales_domésticos;


public class Animal {

    protected String nombre;
    protected String tipoAlimentacion;

    public Animal(String nombre, String tipoAlimentacion) {

        this.nombre = nombre;
        this.tipoAlimentacion = tipoAlimentacion;

}

    @Override
    public String toString() {
        return "Animal [nombre=" + nombre + ", tipoAlimentacion=" + tipoAlimentacion + "]";
    }
}