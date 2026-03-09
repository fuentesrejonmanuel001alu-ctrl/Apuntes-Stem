package Ejercicio_animales_domésticos;

public class Domestico extends Animal {

private String duenio;    

public Domestico(String nombre, String tipoAlimentacion, String duenio) {
        super(nombre, tipoAlimentacion);
        this.duenio = duenio;
    }

@Override
public String toString() {
    return "El animal doméstico " + nombre + " convive con su dueño " + duenio + " y se alimenta de " + tipoAlimentacion + "." + super.toString();
}


}
    

