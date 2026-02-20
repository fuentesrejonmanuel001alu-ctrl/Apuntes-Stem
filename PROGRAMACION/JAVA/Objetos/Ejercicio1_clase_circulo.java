package Objetos;

public class Ejercicio1_clase_circulo {

    public static void main(String[] args) {

    Circulo circulo1= new Circulo(5);
    Circulo circulo2= new Circulo(1);

    System.out.println("Círculo de radio " + circulo1.radio + " Área: " + circulo1.calcularArea() + " Perímetro: " );

    
    }
    
}
class Circulo{

    final double PI = 3.1415;
    double radio;
    
    Circulo (double radio){
        this.radio = radio; 
    }
    double calcularArea(){
        return PI * this.radio * this.radio;
    }
    
    double calcularPerimetro(){
        return 2 * PI * this.radio;
    }
}
