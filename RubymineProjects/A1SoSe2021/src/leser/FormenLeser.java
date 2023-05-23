package leser;

import formen.GeometrischeForm;
import formen.Kreis;
import formen.Rechteck;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class FormenLeser {

    private static final String KREIS_ID = "Kreis";
    private static final String RECHTECK_ID = "Rechteck";
    private static String dateiname = "geodata";

    public static void main(String[] args) throws FileNotFoundException {

        List<GeometrischeForm> vollStaendigeFormen = leseNurVoellstaendige(dateiname);
        System.out.println("Liste der vollständig spezifizierten Formen");
        printList(vollStaendigeFormen);
        List<GeometrischeForm> formenMitDefaults = leseAlle(dateiname);
        System.out.println("Liste der Formen mit Defaults");
        printList(formenMitDefaults);
    }


    private static List<GeometrischeForm> leseNurVoellstaendige(String dateiname) throws FileNotFoundException {
        List<GeometrischeForm> lgf = new ArrayList<>();

        Scanner formenScanner = new Scanner(new File("./resources/" + dateiname));
        formenScanner.useDelimiter(" ");
        while (formenScanner.hasNext()) {
            String string = formenScanner.next();
            String[] line = string.split(" ");
            int length = line.length;
            if (line[0].equals(KREIS_ID)) {
                switch (length) {
                    case 4:
                        GeometrischeForm vier = new Kreis();
                        lgf.add(vier);
                }
            } else if (line[0].equals(RECHTECK_ID)) {
                switch (length) {

                    case 5:
                        GeometrischeForm fuenf = new Rechteck();
                        lgf.add(fuenf);
                }
            }
        }
        return lgf;
    }
    private static List<GeometrischeForm> leseAlle (String dateiname) throws FileNotFoundException {
            List<GeometrischeForm> lgf = new ArrayList<>();

            Scanner formenScanner = new Scanner(new File("./resources/" + dateiname));
            formenScanner.useDelimiter(" ");
            while (formenScanner.hasNext()) {
                String string = formenScanner.next();
                String[] line = string.split(" ");
                int length = line.length;
                if (line[0].equals(KREIS_ID)) {
                    switch (length) {
                        case 1:
                            GeometrischeForm eins = new Kreis();
                            lgf.add(eins);
                            break;
                        case 3:
                            GeometrischeForm drei = new Kreis();
                            lgf.add(drei);
                            break;
                        case 4:
                            GeometrischeForm vier = new Kreis();
                            lgf.add(vier);
                    }
                } else if (line[0].equals(RECHTECK_ID)) {
                    switch (length) {
                        case 1:
                            GeometrischeForm eins = new Rechteck();
                            lgf.add(eins);
                            break;
                        case 3:
                            GeometrischeForm drei = new Rechteck();
                            lgf.add(drei);
                            break;
                        case 5:
                            GeometrischeForm fuenf = new Rechteck();
                            lgf.add(fuenf);

                    }

                }


            }
            return lgf;
        }



            private static void printList (List < GeometrischeForm > lgf) {
                for (int i = 0; i < lgf.size(); i++) {
                    System.out.printf("%4d:%s\n", i, lgf.get(i));
                }
            }
        }

