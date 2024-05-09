# Fixes the basic nether ores recipes because they keep giving the wrong items.
print("smelting_fixes.zs loading...");
/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

blastFurnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

1 second = 20 ticks
*/

// Fix ingot recipes not using tags
// Copper is done automatically by Create (though it gives much less XP)
<recipetype:minecraft:blasting>.removeRecipe(<item:tconstruct:copper_ingot>);
<recipetype:minecraft:smelting>.removeRecipe(<item:tconstruct:copper_ingot>);

furnace.removeByName("electrodynamics:ingottin_ore_smelting");
furnace.removeByName("electrodynamics:ingotlead_ore_smelting");
furnace.removeByName("electrodynamics:ingotsilver_ore_smelting");

blastFurnace.removeByName("electrodynamics:ingottin_ore_blasting");
blastFurnace.removeByName("electrodynamics:ingotlead_ore_blasting");
blastFurnace.removeByName("electrodynamics:ingotsilver_ore_blasting");

furnace.removeByName("bno:tin_ingot-smelting");
furnace.removeByName("bno:copper_ingot-smelting");
furnace.removeByName("bno:silver_ingot-smelting");
furnace.removeByName("bno:lead_ingot-smelting");

blastFurnace.removeByName("bno:tin_ingot-blasting");
blastFurnace.removeByName("bno:copper_ingot-blasting");
blastFurnace.removeByName("bno:silver_ingot-blasting");
blastFurnace.removeByName("bno:lead_ingot-blasting");

furnace.addRecipe("silver_ingot_smelting", <item:electrodynamics:ingotsilver>, <tag:items:forge:ores/silver>, 0.5, 200);
furnace.addRecipe("lead_ingot_smelting", <item:electrodynamics:ingotlead>, <tag:items:forge:ores/lead>, 0.5, 200);
furnace.addRecipe("tin_ingot_smelting", <item:electrodynamics:ingottin>, <tag:items:forge:ores/tin>, 0.5, 200);

blastFurnace.addRecipe("silver_ingot_blasting", <item:electrodynamics:ingotsilver>, <tag:items:forge:ores/silver>, 0.5, 100);
blastFurnace.addRecipe("lead_ingot_blasting", <item:electrodynamics:ingotlead>, <tag:items:forge:ores/lead>, 0.5, 100);
blastFurnace.addRecipe("tin_ingot_blasting", <item:electrodynamics:ingottin>, <tag:items:forge:ores/tin>, 0.5, 100);

print("smelting_fixes.zs loaded");