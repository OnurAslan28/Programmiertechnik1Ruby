package formen;



public class Rechteck extends GeometrischeForm{
    private Punkt ref_punkt;
    private int hoehe, breite;

    public Rechteck(Punkt ref_punkt, int breite, int hoehe){
        super();
        this.ref_punkt = ref_punkt;
        this.breite = breite;
        this.hoehe = hoehe;
    }

    public Rechteck(Punkt ref_punkt) {this(ref_punkt, 1, 1);}



    public String toString(){
        return String.format("%s,b=%d,h=%d", ref_punkt.toString(), this.breite, this.hoehe);
    }

}
