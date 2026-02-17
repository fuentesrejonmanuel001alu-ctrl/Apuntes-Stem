package ED;
/**
 * Representa un gato del colegio que tiene un nombre.
 * @author Estudiante
 */
public class Gato {
    String nombre;

    /**
     * Asigna un nombre al gatito. PARA VERLO: javadoc -d docs Gato.java
     * @param nuevoNombre El texto con el nombre que queremos ponerle.
     */
    public void ponerNombre(String nuevoNombre) {
        this.nombre = nuevoNombre;
    }
}