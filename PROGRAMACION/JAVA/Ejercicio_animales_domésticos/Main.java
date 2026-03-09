package Ejercicio_animales_domésticos;

// ### 4. Animales Domésticos y Salvajes
// **Enunciado:**  
// Crea una clase `Animal` con los atributos `nombre` y `tipoAlimentacion`. 
// Luego, crea dos subclases: `Domestico` con el método `convivirConHumanos()` y
//  `Salvaje` con el método `cazar()`. 
// Cada método debe devolver una cadena con una acción específica relacionada con el tipo de animal.  

// - `Domestico`:
//     - Atributos: `dueño`
//     - Método `convivirConHumanos()`: devuelve "El animal doméstico [nombre] convive con su dueño [dueño] y se alimenta de [tipoAlimentacion]."

// - `Salvaje`:
//     - Atributos: `habitat`
//     - Método `cazar()`: devuelve "El animal salvaje [nombre] caza en su hábitat [habitat] y se alimenta de [tipoAlimentacion]."

// Implementa una clase `Main` para probar la creación de objetos y la llamada a los métodos `convivirConHumanos()` y `cazar()`.

public class Main {
    public static void main(String[] args) {

        Animal jirafa = new Animal("jirafa", "pienso");

        System.out.println(jirafa);

        Domestico koala = new Domestico("Pluto", "hierba", "Pepito");

        System.out.println(koala);

        Salvaje cocodrilo = new Salvaje("Braulius", "carne_humana", "Moncloa");

        System.out.println(cocodrilo);

    }
}