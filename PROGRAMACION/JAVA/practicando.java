public class practicando {

     public static void main(String[] args) {
        
        System.out.println("Tu sueldo es: " + calcularSueldo(8, 10) + " €");
     }

     public static int calcularSueldo(int horas, int pagoPorHora){

         return horas * pagoPorHora;
        }
}