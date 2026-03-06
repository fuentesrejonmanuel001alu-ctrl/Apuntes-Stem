public class Televisor extends Electrodomestico {

    private double tamanioPantalla;

    public Televisor(String marca, String modelo, double tamanioPantalla) {

        super(marca, modelo);
        this.tamanioPantalla = tamanioPantalla;

    }

    @Override
    public String toString() {
        return "Televisor [tamanioPantalla=" + tamanioPantalla + "]" + super.toString();
    }

    

}
