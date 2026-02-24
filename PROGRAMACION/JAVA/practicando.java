import java.util.Scanner; // 1. Fundamental para leer el teclado

public class practicando {

   public static void main(String[] args) {
      Scanner sc = new Scanner(System.in); // Creamos el escáner

      System.out.println("Dime una contraseña");
      String entrada = sc.nextLine(); // Leemos lo que escribe el usuario

      // Llamamos a tu función y guardamos el resultado
      boolean esValida = validar(entrada);

      if (esValida) {
         System.out.println("✅ Acceso permitido");
      } else {
         System.out.println("❌ Contraseña incorrecta");
      }

      sc.close();
   } // <-- Aquí faltaba cerrar el main

   public static boolean validar(String pass){
              
      if (pass.equals("Java123")){

         return true;

      } else {
      return false;
      }
   }
}
