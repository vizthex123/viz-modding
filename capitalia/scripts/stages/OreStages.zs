# Stages ores so you can't use them until you're supposed too
/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <recipe-or-item_name>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/

print("OreStages.zs loading....");

# Stone Age
mods.ItemStages.addItemStage("stone_age", <minecraft:lapis_ore>);

mods.ItemStages.addItemStage("stone_age", <superores:super_lapis>);

mods.ItemStages.setUnfamiliarName("Blue Ore?", <minecraft:lapis_ore>);
mods.ItemStages.setUnfamiliarName("Dense Blue Ore?", <superores:super_lapis>);


# Bronze Age
mods.ItemStages.addItemStage("bronze_age", <minecraft:gold_ore>);
mods.ItemStages.addItemStage("bronze_age", <minecraft:redstone_ore>);

mods.ItemStages.addItemStage("bronze_age", <superores:super_gold>);
mods.ItemStages.addItemStage("bronze_age", <superores:super_redstone>);


mods.ItemStages.setUnfamiliarName("Gold...?", <minecraft:gold_ore>);
mods.ItemStages.setUnfamiliarName("Blood...?", <minecraft:redstone_ore>);

mods.ItemStages.setUnfamiliarName("Gold Pile...?", <superores:super_gold>);
mods.ItemStages.setUnfamiliarName("Coagulated Blood...?", <superores:super_redstone>);


# Iron Age
mods.ItemStages.addItemStage("iron_age", <ore:oreNickel>);
mods.ItemStages.addItemStage("iron_age", <minecraft:iron_ore>);
mods.ItemStages.addItemStage("iron_age", <minecraft:emerald_ore>);
mods.ItemStages.addItemStage("iron_age", <minecraft:diamond_ore>);

mods.ItemStages.addItemStage("iron_age", <superores:super_iron>);
mods.ItemStages.addItemStage("iron_age", <superores:super_nickel>);
mods.ItemStages.addItemStage("iron_age", <superores:super_emerald>);
mods.ItemStages.addItemStage("iron_age", <superores:super_diamond>);


mods.ItemStages.setUnfamiliarName("Sulfur...?", <ore:oreNickel>);
mods.ItemStages.setUnfamiliarName("Iron...?", <minecraft:iron_ore>);
mods.ItemStages.setUnfamiliarName("Peridot...?", <minecraft:emerald_ore>);
mods.ItemStages.setUnfamiliarName("Cyan Ore...?", <minecraft:diamond_ore>);

mods.ItemStages.setUnfamiliarName("Dense Iron...?", <superores:super_iron>);
mods.ItemStages.setUnfamiliarName("Dense Sulfur...?", <superores:super_nickel>);
mods.ItemStages.setUnfamiliarName("Dense Peridot...?", <superores:super_emerald>);
mods.ItemStages.setUnfamiliarName("Dense Cyan Ore...?", <superores:super_diamond>);

mods.ItemStages.addItemStage("iron_age", <magneticraft:ores:3>);
mods.ItemStages.setUnfamiliarName("Carbon...ore...?", <magneticraft:ores:3>);


# Industrial Age
mods.ItemStages.addItemStage("industrial_age", <ore:oreLead>);
mods.ItemStages.addItemStage("industrial_age", <ore:oreSilver>);
mods.ItemStages.addItemStage("industrial_age", <ore:oreOsmium>);
mods.ItemStages.addItemStage("industrial_age", <ore:oreAluminum>);

mods.ItemStages.addItemStage("industrial_age", <superores:super_lead>);
mods.ItemStages.addItemStage("industrial_age", <superores:super_silver>);
mods.ItemStages.addItemStage("industrial_age", <superores:super_osmium>);
mods.ItemStages.addItemStage("industrial_age", <superores:super_aluminum>);


mods.ItemStages.setUnfamiliarName("Scrap Deposit...?", <ore:oreLead>);
mods.ItemStages.setUnfamiliarName("Coins...?", <ore:oreSilver>);
mods.ItemStages.setUnfamiliarName("Titanium...?", <ore:oreOsmium>);
mods.ItemStages.setUnfamiliarName("Probably Aluminium?", <ore:oreAluminum>);

mods.ItemStages.setUnfamiliarName("Scrap Mound...?", <superores:super_lead>);
mods.ItemStages.setUnfamiliarName("Coin Pile...?", <superores:super_silver>);
mods.ItemStages.setUnfamiliarName("Adamanatium...?", <superores:super_osmium>);
mods.ItemStages.setUnfamiliarName("Definitely Aluminium.", <superores:super_aluminum>);

mods.ItemStages.addItemStage("industrial_age", <techguns:basicore:3>);
mods.ItemStages.addItemStage("industrial_age", <techguns:basicore:4>);

mods.ItemStages.setUnfamiliarName("Tungsten...?", <techguns:basicore:3>);
mods.ItemStages.setUnfamiliarName("Emerald....?", <techguns:basicore:4>);


# Machine Age
mods.ItemStages.addItemStage("machine_age", <bigreactors:oreyellorite>);

mods.ItemStages.addItemStage("machine_age", <superores:super_yellorite>);


mods.ItemStages.setUnfamiliarName("Discoloured Uranium...?", <bigreactors:oreyellorite>);
mods.ItemStages.setUnfamiliarName("Discoloured Uranium Deposit...?", <superores:super_yellorite>);


# Information Age
mods.ItemStages.addItemStage("information_age", <superores:super_certus>);

mods.ItemStages.addItemStage("information_age", <appliedenergistics2:quartz_ore>);
mods.ItemStages.addItemStage("information_age", <appliedenergistics2:charged_quartz_ore>);

mods.ItemStages.setUnfamiliarName("Dense Nether Quartz...?", <superores:super_certus>);
mods.ItemStages.setUnfamiliarName("Nether Quartz...?", <appliedenergistics2:quartz_ore>);
mods.ItemStages.setUnfamiliarName("Electric Quartz...?", <appliedenergistics2:charged_quartz_ore>);

// Misc
mods.ItemStages.addItemStage("basic_reactor", <netherendingores:ore_end_modded_1:12>);
mods.ItemStages.addItemStage("basic_reactor", <netherendingores:ore_nether_modded_1:12>);

mods.ItemStages.setUnfamiliarName("Uranium. It's highly radioactive.", <netherendingores:ore_end_modded_1:12>);
mods.ItemStages.setUnfamiliarName("Uranium. It's radioactive.", <netherendingores:ore_nether_modded_1:12>);

print("OreStages.zs loaded");