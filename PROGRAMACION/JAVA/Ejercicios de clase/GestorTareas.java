package PROGRAMACION.JAVA;

import java.util.ArrayList;
import java.util.Scanner;

public class GestorTareas {

    public static void main(String[] args) {

        ArrayList<String> nombreTarea = new ArrayList<>();
        ArrayList<Boolean> estadoTarea = new ArrayList<>();

        Scanner sc = new Scanner(System.in);
        int opcion;

        do {
            System.out.println("\nElige una de las opciones:");
            System.out.println("1. Añadir una nueva tarea.");
            System.out.println("2. Marcar una tarea como completada.");
            System.out.println("3. Ver la lista de tareas pendientes.");
            System.out.println("4. Ver la lista de tareas completadas.");
            System.out.println("5. Salir del programa.");

            opcion = sc.nextInt();
            sc.nextLine(); // limpiar buffer

            // ✅ OPCIÓN 1: Añadir tarea
            if (opcion == 1) {
                System.out.print("Dime el nombre de la tarea nueva que quieres añadir: ");
                String tareaNueva = sc.nextLine();

                nombreTarea.add(tareaNueva);
                estadoTarea.add(false);

                System.out.println("Tarea añadida correctamente.");
            }

            // ✅ OPCIÓN 2: Marcar tarea como completada
            else if (opcion == 2) {
                for (int i = 0; i < nombreTarea.size(); i++) {
                    System.out.println(
                        i + " - " + nombreTarea.get(i) + " (" +
                        (estadoTarea.get(i) ? "Completada" : "Pendiente") + ")"
                    );
                }

                System.out.print("Indica el número de la tarea completada: ");
                int indice = sc.nextInt();

                if (indice >= 0 && indice < estadoTarea.size()) {
                    estadoTarea.set(indice, true);
                    System.out.println("Tarea marcada como completada: " + nombreTarea.get(indice));
                } else {
                    System.out.println("Número de tarea no válido.");
                }
            }

            // ✅ OPCIÓN 3: Ver tareas pendientes
            else if (opcion == 3) {
                System.out.println("Tareas pendientes:");
                for (int i = 0; i < estadoTarea.size(); i++) {
                    if (!estadoTarea.get(i)) {
                        System.out.println(i + " - " + nombreTarea.get(i));
                    }
                }
            }

            // ✅ OPCIÓN 4: Ver tareas completadas
            else if (opcion == 4) {
                System.out.println("Tareas completadas:");
                for (int i = 0; i < estadoTarea.size(); i++) {
                    if (estadoTarea.get(i)) {
                        System.out.println(i + " - " + nombreTarea.get(i));
                    }
                }
            }

            // ❌ OPCIÓN INVÁLIDA
            else if (opcion != 5) {
                System.out.println("Error numérico.");
            }

        } while (opcion != 5);

        System.out.println("Salir del programa.");
        sc.close();
    }
}
