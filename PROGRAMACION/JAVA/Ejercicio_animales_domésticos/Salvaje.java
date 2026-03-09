package Ejercicio_animales_domésticos;

public class Salvaje extends Animal{

     String habitat;



    public Salvaje(String nombre, String tipoAlimentacion, String habitat) {
        super(nombre, tipoAlimentacion);
        this.habitat = habitat;
    
}



public String toString() {
        return "El animal salvaje " + nombre + " caza en su hábitat " + habitat + " y se alimenta de " + tipoAlimentacion + "." + super.toString();
    }
    }


