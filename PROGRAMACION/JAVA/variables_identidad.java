package PROGRAMACION.JAVA;

public class variables_identidad {

    public static void main(String[] args) {

    String usuario = "Tecnico_2026";
    int idTerminal = 404;
    boolean conexionSegura=true;

    if(idTerminal==404){
        System.out.print("ACCESO CONCEDIDO. Iniciando sesión...");
    } else {
        System.out.println("ERROR. Terminal no autorizada");
    }

    System.out.println("LOGIN: " + usuario + "|" + "TERMINAL: " +idTerminal + "|" + "ENCRIPTADO: " + conexionSegura);
}
}