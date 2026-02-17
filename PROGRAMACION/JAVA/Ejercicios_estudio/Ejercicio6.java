package Ejercicios_estudio;

import java.util.Scanner;

public class Ejercicio6 {


    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Dime tu edad");
        int edad = sc.nextInt();
        sc.nextLine();
        
        if (edad >= 18){
        System.out.println("Acceso permitido");
        System.out.println("Dime tu nombre");
        String nombre = sc.nextLine();
        System.out.println("Bienvenido, " + nombre);
        } else {
        System.out.println("Denegado");
        }        
        sc.close();
    }
}

    