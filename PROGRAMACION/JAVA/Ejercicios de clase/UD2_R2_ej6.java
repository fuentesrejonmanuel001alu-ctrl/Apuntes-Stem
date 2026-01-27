package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class UD2_R2_ej6 {

    public static void main(String[] args) {
        
        ArrayList<String> nombreTarea = new ArrayList<>(Arrays.asList());
        boolean[] estadoTarea = new boolean[5]; //
        
        Scanner scanner = new Scanner(System.in);
        int opcion=0;
        Boolean estadoTarea=false;
        while (opcion != 5) {
        System.out.println("Elige una de las opciones:\n" +
        "1. Añadir una nueva tarea.\n" +
        "2. Marcar una tarea como completada.\n" +
        "3. Ver la lista de tareas pendientes.\n" +
        "4. Ver la lista de tareas completadas.\n" +
        "5. Salir del programa.");
        opcion = scanner.nextInt()                                                                                                                                 ..0. Int();


    // ✅ OPCIÓN 1: Añadir tarea
    if (opcion == 1) {
        String tareaNueva="";
      System.out.print("Dime el nombre de la tarea nueva que quieres añadir");

      nombreTarea.add(tareaNueva);
   


      System.out.println("Tareas actuales:");
      System.out.print(nombreTarea);
      System.out.print(estadoTarea);
    }
        
        
        
// ✅ OPCIÓN 2: Marcar tarea como completada
    else if (opcion == 2) {
      String lista = "";
      for (int i = 0; i < nombreTarea.length; i++) {
        lista += i + " - " + nombreTarea[i] + " (" + (estadoTarea[i] ? "Completada" : "Pendiente") + ")\n";
      }

      int indice = System.out.print(lista);lista + "\nIndica el número de la tarea completada:"));
      if (indice >= 0 && indice < estadoTarea.length) {
        estadoTarea[indice] = true;
        System.out.print("Tarea marcada como completada:", nombreTarea[indice]);
      } else {
        System.out.print("Número de tarea no válido");
      }
    }

// ✅ OPCIÓN 2: Marcar tarea como completada
    else if (opcion == 2) {
      String lista = "";
      for (int i = 0; i < nombreTarea.length; i++) {
        lista += i + " - " + nombreTarea[i] + " (" + (estadoTarea[i] ? "Completada" : "Pendiente") + ")\n";
      }

      int indice = System.out.print(Indica el número de la tarea completada:);
      if (indice >= 0 && indice < estadoTarea.length) {
        estadoTarea[indice] = true;
        System.out.print("Tarea marcada como completada:", nombreTarea[indice]);
      } else {
        console.log("Número de tarea no válido");
      }
    }

    // ✅ OPCIÓN 3: Ver tareas pendientes
    else if (opcion == 3) {
      console.log("Tareas pendientes:");
      for (let i = 0; i < estadoTarea.length; i++) {
        if (estadoTarea[i] == false) {
          console.log(i + " - " + nombreTarea[i]);
        }
      }
    }

    // ✅ OPCIÓN 4: Ver tareas completadas
    else if (opcion == 4) {
      console.log("Tareas completadas:");
      for (let i = 0; i < estadoTarea.length; i++) {
        if (estadoTarea[i] == true) {
          console.log(i + " - " + nombreTarea[i]);
        }
      }
    }

    // ✅ OPCIÓN INVÁLIDA
    else {
      alert("Error numérico");
    }

    // 🔁 Volver a preguntar la opción
    opcion = Number(
      prompt(
        "Elige una de las opciones:\n" +
          "1. Añadir una nueva tarea.\n" +
          "2. Marcar una tarea como completada.\n" +
          "3. Ver la lista de tareas pendientes.\n" +
          "4. Ver la lista de tareas completadas.\n" +
          "5. Salir del programa."
      )
    );
  }

  console.log("Salir del programa");
