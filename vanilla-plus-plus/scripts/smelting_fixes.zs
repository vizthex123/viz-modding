# Make all ore smelting use tags
print("smelting_fixes.zs loading...");
/*
blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

val copper_ore = <tag:items:minecraft:copper_ores>;
val iron_ore = <tag:items:minecraft:iron_ores>;
val gold_ore = <tag:items:minecraft:gold_ores>;
val diamond_ore = <tag:items:minecraft:diamond_ores>;
val emerald_ore = <tag:items:minecraft:emerald_ores>;

# Removals are in 1-kubejs.zs to prevent conflicts with the scrap recipes

furnace.addRecipe("copper_ingot", <item:minecraft:copper_ingot>, copper_ore, 0.5, 200);
blastFurnace.addRecipe("blast_copper_ingot", <item:minecraft:copper_ingot>, copper_ore, 0.5, 100);

furnace.addRecipe("iron_ingot", <item:minecraft:iron_ingot>, iron_ore, 0.7, 200);
blastFurnace.addRecipe("blast_iron_ingot", <item:minecraft:iron_ingot>, iron_ore, 0.7, 100);

furnace.addRecipe("gold_ingot", <item:minecraft:gold_ingot>, gold_ore, 1.0, 200);
blastFurnace.addRecipe("blast_gold_ingot", <item:minecraft:gold_ingot>, gold_ore, 1.0, 100);

furnace.addRecipe("diamond", <item:minecraft:diamond>, diamond_ore, 2.0, 200);
blastFurnace.addRecipe("blast_diamond", <item:minecraft:diamond>, diamond_ore, 2.0, 100);

furnace.addRecipe("emerald", <item:minecraft:emerald>, emerald_ore, 3.0, 200);
blastFurnace.addRecipe("blast_emerald", <item:minecraft:emerald>, emerald_ore, 3.0, 100);



# Ores no sane person would smelt but I'll fix them anyway to be consistent

val coal_ore = <tag:items:minecraft:coal_ores>;
val lapis_ore = <tag:items:minecraft:lapis_ores>;
val redstone_ore = <tag:items:minecraft:redstone_ores>;
val quartz_ore = <tag:items:c:quartz_ores>;

furnace.addRecipe("coal", <item:minecraft:coal>, coal_ore, 0.1, 200);
blastFurnace.addRecipe("blast_coal", <item:minecraft:coal>, coal_ore, 0.1, 100);

furnace.addRecipe("lapis", <item:minecraft:lapis_lazuli>, lapis_ore, 0.35, 200);
blastFurnace.addRecipe("blast_lapis", <item:minecraft:lapis_lazuli>, lapis_ore, 0.35, 100);

furnace.addRecipe("redstone", <item:minecraft:redstone>, redstone_ore, 0.65, 200);
blastFurnace.addRecipe("blast_redstone", <item:minecraft:redstone>, redstone_ore, 0.65, 100);

furnace.addRecipe("quartz", <item:minecraft:quartz>, quartz_ore, 0.25, 200);
blastFurnace.addRecipe("blast_quartz", <item:minecraft:quartz>, quartz_ore, 0.25, 100);

print("smelting_fixes.zs loaded");