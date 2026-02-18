package nivel1;

/**
 * Representa a un usuario con identidad verificada.
 * @author TuNombre
 * @since 1.0
 */
public class Usuario {
    private String nombre;
    private String dni;

    /**
     * Crea un usuario validando que los campos no estén vacíos.
     * @param nombre Nombre del usuario.
     * @param dni DNI del usuario.
     * @throws IllegalArgumentException Si los campos están en blanco.
     */
    public Usuario(String nombre, String dni) {
        if (nombre == null || nombre.isBlank() || dni == null || dni.isBlank()) {
            throw new IllegalArgumentException("Campos obligatorios vacíos");
        }
        this.nombre = nombre;
        this.dni = dni;
    }
}