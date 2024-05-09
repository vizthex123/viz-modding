# Fixes smelting recipes (like in Vanilla++)
# Also adds scrap smelting recipes to prevent conflicts
print("smelting_fixes.zs loading...");

/*
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/
/*
### Make all ore smelting use tags
# Add tags to raw ores
val copper_ore = <tag:items:spelunkery:copper_ores>;
val iron_ore = <tag:items:spelunkery:iron_ores>;
val gold_ore = <tag:items:spelunkery:gold_ores>;
val diamond_ore = <tag:items:spelunkery:diamond_ores>;
val emerald_ore = <tag:items:spelunkery:emerald_ores>;

copper_ore.add(<item:minecraft:raw_copper>);
iron_ore.add(<item:minecraft:raw_iron>);
gold_ore.add(<item:minecraft:raw_gold>);

val coal_ore = <tag:items:spelunkery:coal_ores>;
val lapis_ore = <tag:items:spelunkery:lapis_ores>;
val redstone_ore = <tag:items:spelunkery:redstone_ores>;
val quartz_ore = <tag:items:forge:ores/quartz>;


val copper = <item:minecraft:copper_ingot>;
val iron = <item:minecraft:iron_ingot>;
val gold = <item:minecraft:gold_ingot>;
val diamond = <item:minecraft:diamond>;
val emerald = <item:minecraft:emerald>;

val coal = <item:minecraft:coal>;
val redstone = <item:minecraft:redstone>;
val lapis = <item:minecraft:lapis_lazuli>;
val quartz = <item:minecraft:quartz>;



furnace.remove(copper);
furnace.remove(iron);
furnace.remove(gold);
furnace.remove(diamond);
furnace.remove(emerald);

furnace.remove(coal);
furnace.remove(redstone);
furnace.remove(lapis);
furnace.remove(quartz);

blastFurnace.remove(copper);
blastFurnace.remove(iron);
blastFurnace.remove(gold);
blastFurnace.remove(diamond);
blastFurnace.remove(emerald);

blastFurnace.remove(coal);
blastFurnace.remove(redstone);
blastFurnace.remove(lapis);
blastFurnace.remove(quartz);


furnace.remove(<item:minecraft:raw_copper>);
furnace.remove(<item:minecraft:raw_iron>);
furnace.remove(<item:minecraft:raw_gold>);

blastFurnace.remove(<item:minecraft:raw_copper>);
blastFurnace.remove(<item:minecraft:raw_iron>);
blastFurnace.remove(<item:minecraft:raw_gold>);



furnace.addRecipe("copper_ingot", copper, copper_ore, 0.5, 200);
blastFurnace.addRecipe("blast_copper_ingot", copper, copper_ore, 0.5, 100);

furnace.addRecipe("iron_ingot", iron, iron_ore, 0.7, 200);
blastFurnace.addRecipe("blast_iron_ingot", iron, iron_ore, 0.7, 100);

furnace.addRecipe("gold_ingot", gold, gold_ore, 1.5, 200);
blastFurnace.addRecipe("blast_gold_ingot", gold, gold_ore, 1.5, 100);

furnace.addRecipe("diamond", diamond, diamond_ore, 2.0, 200);
blastFurnace.addRecipe("blast_diamond", diamond, diamond_ore, 2.0, 100);

furnace.addRecipe("emerald", emerald, emerald_ore, 3.0, 200);
blastFurnace.addRecipe("blast_emerald", emerald, emerald_ore, 3.0, 100);



# Ores no sane person would smelt but I'll fix them anyway to be consistent
furnace.addRecipe("coal", coal, coal_ore, 0.1, 200);
blastFurnace.addRecipe("blast_coal", coal, coal_ore, 0.1, 100);

furnace.addRecipe("lapis", lapis, lapis_ore, 0.35, 200);
blastFurnace.addRecipe("blast_lapis", lapis, lapis_ore, 0.35, 100);

furnace.addRecipe("redstone", redstone, redstone_ore, 0.65, 200);
blastFurnace.addRecipe("blast_redstone", redstone, redstone_ore, 0.65, 100);

furnace.addRecipe("quartz", quartz, quartz_ore, 0.25, 200);
blastFurnace.addRecipe("blast_quartz", quartz, quartz_ore, 0.25, 100);



# Scrap
furnace.addRecipe("smelt_copper_scrap", copper, <item:kubejs:copper_scrap>, 0.25, 200);
furnace.addRecipe("smelt_iron_scrap", iron, <item:kubejs:iron_scrap>, 0.35, 200);
furnace.addRecipe("smelt_gold_scrap", gold, <item:kubejs:gold_scrap>, 0.5, 200);
furnace.addRecipe("smelt_diamond_scrap", diamond, <item:kubejs:diamond_scrap>, 0.5, 200);

furnace.addRecipe("smelt_fiery_scrap", <item:twilightforest:fiery_ingot>, <item:kubejs:fiery_scrap>, 0.25, 200);
furnace.addRecipe("smelt_ironwood_scrap", <item:twilightforest:ironwood_ingot>, <item:kubejs:ironwood_scrap>, 0.5, 200);
furnace.addRecipe("smelt_knightmetal_scrap", <item:twilightforest:knightmetal_ingot>, <item:kubejs:knightmetal_scrap>, 0.5, 200);


blastFurnace.addRecipe("blast_copper_scrap", copper, <item:kubejs:copper_scrap>, 0.25, 100);
blastFurnace.addRecipe("blast_iron_scrap", iron, <item:kubejs:iron_scrap>, 0.35, 100);
blastFurnace.addRecipe("blast_gold_scrap", gold, <item:kubejs:gold_scrap>, 0.5, 100);
blastFurnace.addRecipe("blast_diamond_scrap", diamond, <item:kubejs:diamond_scrap>, 1.0, 100);

blastFurnace.addRecipe("blast_fiery_scrap", <item:twilightforest:fiery_ingot>, <item:kubejs:fiery_scrap>, 0.25, 100);
blastFurnace.addRecipe("blast_ironwood_scrap", <item:twilightforest:ironwood_ingot>, <item:kubejs:ironwood_scrap>, 0.5, 100);
blastFurnace.addRecipe("blast_knightmetal_scrap", <item:twilightforest:knightmetal_ingot>, <item:kubejs:knightmetal_scrap>, 0.5, 100);



# Extra items
furnace.addRecipe("smelt_gold_minotaur_axe", gold, <item:twilightforest:gold_minotaur_axe>, 1.0, 200);
blastFurnace.addRecipe("blast_gold_minotaur_axe", gold, <item:twilightforest:gold_minotaur_axe>, 1.0, 100);

furnace.addRecipe("smelt_diamond_minotaur_axe", diamond, <item:twilightforest:diamond_minotaur_axe>, 2.0, 200);
blastFurnace.addRecipe("blast_diamond_minotaur_axe", diamond, <item:twilightforest:diamond_minotaur_axe>, 2.0, 100);

furnace.addRecipe("smelt_catalyst", diamond, <item:undergarden:catalyst>, 2.0, 200);
blastFurnace.addRecipe("blast_catalyst", diamond, <item:undergarden:catalyst>, 2.0, 100);
*/
print("smelting_fixes.zs loaded");