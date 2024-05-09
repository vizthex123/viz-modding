# Changes things related to my KubeJS items
#priority 12

import crafttweaker.api.tag.MCTag;

print("1-kubejs.zs loading...");

/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

# Stone Stick
craftingTable.addShaped("stone_stick", <item:kubejs:stone_stick>*4, 
    [[<tag:items:minecraft:stone_crafting_materials>],
    [<tag:items:minecraft:stone_crafting_materials>]]);

craftingTable.addShapeless("stone_stick_to_stick", <item:minecraft:stick>, [<item:kubejs:stone_stick>, <item:kubejs:stone_stick>]);


# Craft Disc Residue into Coal
# Can also be turned into Black Dye (in dyes.zs)
craftingTable.addShapeless("disc_residue_to_coal", <item:minecraft:coal>*16, [<item:kubejs:disc_residue>, <item:kubejs:disc_residue>]);


# Craft Biomass & Meaty Clumps
val organic = <tag:items:vanilla:biomass_materials>;
val meat = <tag:items:vanilla:meaty_clump_materials>;
craftingTable.addShaped("biomass", <item:kubejs:biomass>,
    [[organic, organic, organic],
    [organic, organic, organic],
    [organic, organic, organic]]);

craftingTable.addShaped("meaty_clump", <item:kubejs:meaty_clump>,
    [[meat, meat, meat],
    [meat, meat, meat],
    [meat, meat, meat]]);

# Craft Small Scrap into Scrap
craftingTable.addShapeless("copper_scrap", <item:kubejs:copper_scrap>, [<item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>, <item:kubejs:small_copper_scrap>]);

craftingTable.addShapeless("iron_scrap", <item:kubejs:iron_scrap>, [<item:kubejs:small_iron_scrap>, <item:kubejs:small_iron_scrap>, <item:kubejs:small_iron_scrap>]);

craftingTable.addShapeless("gold_scrap", <item:kubejs:gold_scrap>, [<item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>, <item:kubejs:small_gold_scrap>]);

craftingTable.addShapeless("diamond_scrap", <item:kubejs:diamond_scrap>, [<item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>, <item:kubejs:small_diamond_scrap>]);



# Smelt Scrap into Ingots
# Scrap recipes are in recycling.zs
# Removals used in recipe-tag-fixes.zs to prevent conflicts with these recipes
furnace.remove(<item:minecraft:copper_ingot>);
furnace.remove(<item:minecraft:iron_ingot>);
furnace.remove(<item:minecraft:gold_ingot>);
furnace.remove(<item:minecraft:diamond>);
furnace.remove(<item:minecraft:emerald>);

furnace.remove(<item:minecraft:coal>);
furnace.remove(<item:minecraft:redstone>);
furnace.remove(<item:minecraft:lapis_lazuli>);
furnace.remove(<item:minecraft:quartz>);

blastFurnace.remove(<item:minecraft:copper_ingot>);
blastFurnace.remove(<item:minecraft:iron_ingot>);
blastFurnace.remove(<item:minecraft:gold_ingot>);
blastFurnace.remove(<item:minecraft:diamond>);
blastFurnace.remove(<item:minecraft:emerald>);

blastFurnace.remove(<item:minecraft:coal>);
blastFurnace.remove(<item:minecraft:redstone>);
blastFurnace.remove(<item:minecraft:lapis_lazuli>);
blastFurnace.remove(<item:minecraft:quartz>);

furnace.addRecipe("smelt_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0.35, 200);
furnace.addRecipe("smelt_iron_scrap", <item:minecraft:iron_ingot>, <item:kubejs:iron_scrap>, 0.35, 200);
furnace.addRecipe("smelt_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0.5, 200);
furnace.addRecipe("smelt_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0.5, 200);

blastFurnace.addRecipe("blast_copper_scrap", <item:minecraft:copper_ingot>, <item:kubejs:copper_scrap>, 0.35, 100);
blastFurnace.addRecipe("blast_iron_scrap", <item:minecraft:iron_ingot>, <item:kubejs:iron_scrap>, 0.35, 100);
blastFurnace.addRecipe("blast_gold_scrap", <item:minecraft:gold_ingot>, <item:kubejs:gold_scrap>, 0.5, 100);
blastFurnace.addRecipe("blast_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0.5, 100);

# Tags
<tag:items:c:wooden_rods>.add(<item:kubejs:stone_stick>);
# <tag:items:balm:wooden_rods>.add(<item:kubejs:stone_stick>);
<tag:items:balm:stone_rods>.add(<item:kubejs:stone_stick>);

<tag:items:balm:gold_nuggets>.add(<item:kubejs:small_gold_scrap>);
<tag:items:balm:iron_nuggets>.add(<item:kubejs:small_iron_scrap>);

print("1-kubejs.zs loaded");