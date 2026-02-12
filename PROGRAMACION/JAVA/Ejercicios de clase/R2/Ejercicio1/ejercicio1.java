package Ejercicios de clase.R2;

public class ejercicio1 {
    public static <Estudiante> void main(String[] args) {

        Estudiante estudiante1 = new Estudiante("Carlota", 5, "STEM0067");  
        Estudiante estudiante2 = new Estudiante("Miguel", 25);
        Estudiante estudiante3 = new Estudiante("Raul", "STE0068");

        Universidad uni = new Universidad();
        uni.agregarEstudiante(estudiante1);
        uni.agregarEstudiante(estudiante2);
        uni.agregarEstudiante(estudiante3);
        System.out.println(uni.mostrarAlumnado());
    }
    
}
