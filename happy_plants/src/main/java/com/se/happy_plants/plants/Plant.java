package com.se.happy_plants.plants;

import com.se.happy_plants.plants.attribute.Giesszeit;
import com.se.happy_plants.plants.attribute.Lichtverhältnis;
import com.se.happy_plants.plants.attribute.Pflanzentyp;
import lombok.Data;

import java.util.ArrayList;

@Data
public class Plant {

    private String name;
    private String scientificName;
    private int shouldWaterPlantEachXHours;
    private int lowestPossibleGrowTemperature;
    private int highestPossibleGrowTemperature;
    private Lichtverhältnis lichtverhältnis;
    private Pflanzentyp pflanzentyp;
    private ArrayList<Giesszeit> giesszeit;

}
