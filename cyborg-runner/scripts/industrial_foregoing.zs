# Adds recipes to machines from Industrial Foregoing
/*
BioReactor.add(<>);
ProteinReactor.add(<>);
*/

import mods.industrialforegoing.Extractor;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("Loading industrial_foregoing.zs...");


# Bioreactor
BioReactor.remove(<minecraft:dye:4>);

BioReactor.add(<minecraft:apple>);
BioReactor.add(<minecraft:reeds>);
BioReactor.add(<minecraft:melon>);
BioReactor.add(<minecraft:wheat>);
BioReactor.add(<minecraft:beetroot>);
BioReactor.add(<minecraft:pumpkin>);
BioReactor.add(<minecraft:poisonous_potato>);
BioReactor.add(<minecraft:chorus_fruit>);
BioReactor.add(<minecraft:waterlily>);
BioReactor.add(<extrautils2:redorchid>);

BioReactor.add(<xlfoodmod:rice_seeds>);
BioReactor.add(<xlfoodmod:tomato_seeds>);
BioReactor.add(<xlfoodmod:strawberry_seeds>);
BioReactor.add(<xlfoodmod:cucumber_seeds>);
BioReactor.add(<xlfoodmod:corn_seeds>);
BioReactor.add(<xlfoodmod:pepper_seeds>);
BioReactor.add(<xlfoodmod:vanilla_flower>);
BioReactor.add(<xlfoodmod:lettuce_seeds>);
BioReactor.add(<xlfoodmod:pepper>);
BioReactor.add(<xlfoodmod:raw_corn>);
BioReactor.add(<xlfoodmod:cucumber>);
BioReactor.add(<xlfoodmod:lettuce>);
BioReactor.add(<xlfoodmod:onion>);
BioReactor.add(<xlfoodmod:tomato>);
BioReactor.add(<xlfoodmod:strawberry>);

BioReactor.add(<natura:materials>);
BioReactor.add(<natura:materials:8>);
BioReactor.add(<natura:nether_sapling2>);
BioReactor.add(<natura:overworld_seeds>);
BioReactor.add(<natura:overworld_seeds:1>);
BioReactor.add(<natura:nether_glowshroom:*>);
BioReactor.add(<natura:edibles:2>);
BioReactor.add(<natura:edibles:3>);
BioReactor.add(<natura:edibles:4>);
BioReactor.add(<natura:edibles:5>);
BioReactor.add(<natura:edibles:6>);
BioReactor.add(<natura:edibles:7>);
BioReactor.add(<natura:edibles:8>);
BioReactor.add(<natura:edibles:9>);
BioReactor.add(<natura:edibles:10>);
BioReactor.add(<natura:edibles:11>);
BioReactor.add(<natura:saguaro_fruit_item>);


BioReactor.add(<glacidus:dead_lumicia>);
BioReactor.add(<glacidus:lumicia_sapling>);
BioReactor.add(<glacidus:crysial_flower>);
BioReactor.add(<glacidus:pulphorus_flower>);
BioReactor.add(<glacidus:aurantiacus_flower>);
BioReactor.add(<glacidus:solegia_flower>);
BioReactor.add(<glacidus:flavula_flower>);
BioReactor.add(<glacidus:grapes>);

BioReactor.add(<byg:poisionivy>);
BioReactor.add(<byg:pinkcherrysapling>);
BioReactor.add(<byg:cikasapling>);
BioReactor.add(<byg:greatoaksapling>);
BioReactor.add(<byg:jacarandasapling>);
BioReactor.add(<byg:mangrovesapling>);
BioReactor.add(<byg:redmaplesapling>);
BioReactor.add(<byg:silvermaplesapling>);
BioReactor.add(<byg:orangeoaksapling>);
BioReactor.add(<byg:redoaksapling>);
BioReactor.add(<byg:orchardsapling>);
BioReactor.add(<byg:paloverdesapling>);
BioReactor.add(<byg:pinesapling>);
BioReactor.add(<byg:skyrissapling>);
BioReactor.add(<byg:bluesprucesapling>);
BioReactor.add(<byg:redsprucesapling>);
BioReactor.add(<byg:orangesprucesapling>);
BioReactor.add(<byg:yellowsprucesapling>);
BioReactor.add(<byg:pinkstellatasapling>);
BioReactor.add(<byg:whitestellatasapling>);
BioReactor.add(<byg:redwoodsapling>);
BioReactor.add(<byg:zelkovasapling>);
BioReactor.add(<byg:blueglowshroomitem>);
BioReactor.add(<byg:greenglowshroomitem>);
BioReactor.add(<byg:purpleglowshroomitem>);
BioReactor.add(<byg:glowcanestalkred>);
BioReactor.add(<byg:glowcanestalkblue>);
BioReactor.add(<byg:glowcanestalkpink>);
BioReactor.add(<byg:glowcanestalkpurple>);
BioReactor.add(<byg:greenapple>);
BioReactor.add(<byg:blueberry>);
BioReactor.add(<byg:strawberry>);
BioReactor.add(<byg:hollyberries>);
BioReactor.add(<byg:rowanberries>);
BioReactor.add(<byg:hawthornberries>);
BioReactor.add(<byg:salal_berry>);



# Protein Reactor
ProteinReactor.add(<minecraft:rabbit_foot>);
ProteinReactor.add(<glacidus:raw_porcali_meat>);
ProteinReactor.add(<rewired:meat_raw>);
ProteinReactor.add(<natura:edibles>);



# Tree Fluid Extractor
/*
Note: Input must be a block (any kind)

Extractor.remove(<input>);

Extractor.add(<input>, <fluid_output*>);
* output is X mB/5 ticks

1 mB = ~1600
2 mB = ~3200
3 mB = ~4800
4 mB = ~6400
5 mB = ~8000
*/

Extractor.remove(<natura:redwood_logs:2>);
Extractor.add(<natura:redwood_logs:2>, <fluid:latex>*2);


/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<null>, <null>, <null>],
                                   	                    [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
*/

print("industrial_foregoing.zs loaded");