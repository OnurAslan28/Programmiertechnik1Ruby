package formen;

public class Kreis extends GeometrischeForm{
    private Punkt ref_punkt;
    private int radius;

    public Kreis(Punkt ref_punkt,radius){
        super();
        this.ref_punkt = ref_punkt;

    }

    public Kreis(Punkt ref_punkt){this(1);}

    @Override
    public String toString(){
        return String.format("%s,r=%d",ref_punkt,radius);
    }
}
