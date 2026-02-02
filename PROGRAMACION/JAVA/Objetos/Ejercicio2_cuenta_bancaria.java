package Objetos;

public class Ejercicio2_cuenta_bancaria {

    public static void main(String[] args) {
        // 1. CREAMOS EL OBJETO: Llamamos al constructor con un nombre y un saldo inicial.
        cuentaBancaria miCuenta = new cuentaBancaria("Pepe", 500.0);

        // 2. OPERAMOS: Usamos los métodos que hemos creado abajo.
        miCuenta.depositar(200.0); // Ahora debería tener 700
        miCuenta.retirar(100.0);   // Ahora debería tener 600
        miCuenta.retirar(1000.0);  // Esto debería saltar el error del "if"
        
        // 3. COMPROBAMOS: Miramos cuánto dinero ha quedado.
        System.out.println("Titular: " + miCuenta.titular + " | Saldo final: " + miCuenta.saldo + "€");
    }
}

class cuentaBancaria {
    // ATRIBUTOS: Son las "propiedades" de la cuenta.
    String titular;
    double saldo;

    // CONSTRUCTOR: Es el que recibe los datos cuando haces el "new".
    cuentaBancaria(String titular, double saldo) {
        this.titular = titular; // "this.titular" es la variable de arriba, "titular" es lo que entra por el paréntesis.
        this.saldo = saldo;
    }

    // MÉTODO DEPOSITAR: No devuelve nada (void), solo modifica el saldo.
    void depositar(double cantidad) {
        this.saldo = this.saldo + cantidad; 
        System.out.println("Has ingresado " + cantidad + "€. Saldo actual: " + this.saldo);
    }

    // MÉTODO RETIRAR: Aquí controlamos que no se quede en negativo.
    void retirar(double cantidad) {
        if (this.saldo >= cantidad) { 
            // Si hay dinero suficiente, restamos.
            this.saldo = this.saldo - cantidad;
            System.out.println("Has retirado " + cantidad + "€. Saldo restante: " + this.saldo);
        } else {
            // Si pides más de lo que tienes, avisamos y no restamos nada.
            System.out.println("¡ERROR! No tienes saldo suficiente para retirar " + cantidad + "€.");
        }
    }
}