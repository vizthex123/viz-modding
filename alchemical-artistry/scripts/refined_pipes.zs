# Changes the recipes for Refined Pipes' content
import crafttweaker.api.tag.MCTag;

print("refined_pipes.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.removeByName("recipeName");
<recipetype:minecraft:crafting>.removeRecipe(<item>);

do item:minecraft:air for empty spaces

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("name", <item>, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);
<recipetype:thermal:smelter_catalyst>.addCatalyst("name", <item>, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

min chance is the chance to get extra outputs(?)
*/

# Item Pipes
// Tier 1 (Basic)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_item_pipe>);
craftingTable.addShaped("item_pipe_1", <item:refinedpipes:basic_item_pipe>*6, 
    [[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);

// Tier 2 (Improved)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_item_pipe>);
craftingTable.addShaped("item_pipe_2", <item:refinedpipes:improved_item_pipe>*6, 
    [[<item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>]]);

craftingTable.addShaped("improved_item_pipe", <item:refinedpipes:improved_item_pipe>*6, 
    [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<tag:items:forge:glass>, <tag:items:thermal:glass/hardened>, <tag:items:forge:glass>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

// Tier 3 (Advanced)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_item_pipe>);
craftingTable.addShaped("item_pipe_3", <item:refinedpipes:advanced_item_pipe>*6, 
    [[<item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>],
    [<tag:items:forge:glass>, <tag:items:thermal:glass/hardened>, <tag:items:forge:glass>],
    [<item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>]]);
	
craftingTable.addShaped("advanced_item_pipe", <item:refinedpipes:advanced_item_pipe>*6,
    [[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<tag:items:thermal:glass/hardened>, <tag:items:thermal:glass/hardened>, <tag:items:thermal:glass/hardened>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]]);



# Fluid Pipes
// Tier 1 (Basic)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_fluid_pipe>);
craftingTable.addShaped("fluid_pipe_1", <item:refinedpipes:basic_fluid_pipe>*6,
    [[<item:thermal:apatite>|<item:minecraft:prismarine_shard>, <item:thermal:apatite>|<item:minecraft:prismarine_shard>, <item:thermal:apatite>|<item:minecraft:prismarine_shard>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:thermal:apatite>|<item:minecraft:prismarine_shard>, <item:thermal:apatite>|<item:minecraft:prismarine_shard>, <item:thermal:apatite>|<item:minecraft:prismarine_shard>]]);

// Tier 2 (Improved)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_fluid_pipe>);
craftingTable.addShaped("fluid_pipe_2", <item:refinedpipes:improved_fluid_pipe>*6,
    [[<item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>]]);
	
craftingTable.addShaped("improved_fluid_pipe", <item:refinedpipes:improved_fluid_pipe>*6,
    [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<tag:items:forge:glass>, <item:minecraft:bucket>, <tag:items:forge:glass>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);
	
// Tier 3 (Advanced)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_fluid_pipe>);
craftingTable.addShaped("fluid_pipe_3", <item:refinedpipes:advanced_fluid_pipe>*6,
    [[<item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>]]);
	
craftingTable.addShaped("advanced_fluid_pipe", <item:refinedpipes:advanced_fluid_pipe>*6,
    [[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<tag:items:forge:glass>, <item:minecraft:bucket>, <tag:items:forge:glass>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]]);

// Tier 4 (Elite)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:elite_fluid_pipe>);
craftingTable.addShaped("fluid_pipe_4", <item:refinedpipes:elite_fluid_pipe>*6,
    [[<item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>]]);
	
craftingTable.addShaped("elite_fluid_pipe", <item:refinedpipes:elite_fluid_pipe>*6,
    [[<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>],
    [<tag:items:forge:glass>, <item:minecraft:bucket>, <tag:items:forge:glass>],
    [<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>]]);

// Tier 5 (Ultimate)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:ultimate_fluid_pipe>);
craftingTable.addShaped("fluid_pipe_5", <item:refinedpipes:ultimate_fluid_pipe>*6,
    [[<item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>]]);
	
craftingTable.addShaped("ultimate_fluid_pipe", <item:refinedpipes:ultimate_fluid_pipe>*6,
    [[<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>],
    [<tag:items:forge:glass>, <item:minecraft:bucket>, <tag:items:forge:glass>],
    [<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>]]);



# Energy Pipes
// Tier 1 (Basic)
// Same as the original recipe, but uses the proper tags
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:basic_energy_pipe>);
craftingTable.addShaped("energy_pipe_1", <item:refinedpipes:basic_energy_pipe>*6, 
    [[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<tag:items:forge:glass>, <item:minecraft:redstone_block>, <tag:items:forge:glass>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
	
// Tier 2 (Improved)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:improved_energy_pipe>);
craftingTable.addShaped("energy_pipe_2", <item:refinedpipes:improved_energy_pipe>*6, 
    [[<item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>],
    [<tag:items:forge:glass>, <item:minecraft:redstone>|<item:minecraft:glowstone_dust>, <tag:items:forge:glass>],
    [<item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>]]);
	
craftingTable.addShaped("improved_energy_pipe", <item:refinedpipes:improved_energy_pipe>*6, 
    [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<tag:items:forge:glass>, <item:minecraft:redstone>|<item:minecraft:glowstone_dust>, <tag:items:forge:glass>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

// Tier 3 (Advanced)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:advanced_energy_pipe>);
craftingTable.addShaped("energy_pipe_3", <item:refinedpipes:advanced_energy_pipe>*6, 
    [[<item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>],
    [<tag:items:forge:glass>, <item:minecraft:redstone_block>|<item:minecraft:glowstone>, <tag:items:forge:glass>],
    [<item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>]]);
	
craftingTable.addShaped("advanced_energy_pipe", <item:refinedpipes:advanced_energy_pipe>*6, 
    [[<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<tag:items:thermal:glass/hardened>, <item:minecraft:redstone_block>, <tag:items:thermal:glass/hardened>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]]);

// Tier 4 (Elite)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:elite_energy_pipe>);
craftingTable.addShaped("energy_pipe_4", <item:refinedpipes:elite_energy_pipe>*6, 
    [[<item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>],
    [<tag:items:forge:glass>, <item:minecraft:glowstone>, <tag:items:forge:glass>],
    [<item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>]]);

craftingTable.addShaped("elite_energy_pipe", <item:refinedpipes:elite_energy_pipe>*6, 
    [[<item:minecraft:emerald>, <item:minecraft:blaze_powder>, <item:minecraft:emerald>],
    [<tag:items:thermal:glass/hardened>, <item:minecraft:redstone_block>|<item:minecraft:glowstone>, <tag:items:thermal:glass/hardened>],
    [<item:minecraft:emerald>, <item:minecraft:blaze_powder>, <item:minecraft:emerald>]]);
	
// Tier 5 (Ultimate)
<recipetype:minecraft:crafting>.removeRecipe(<item:refinedpipes:ultimate_energy_pipe>);
craftingTable.addShaped("energy_pipe_5", <item:refinedpipes:ultimate_energy_pipe>*6, 
    [[<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>],
    [<item:minecraft:popped_chorus_fruit>, <tag:items:thermal:glass/hardened>, <item:minecraft:popped_chorus_fruit>],
    [<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>]]);
	
craftingTable.addShaped("ultimate_energy_pipe", <item:refinedpipes:ultimate_energy_pipe>*6, 
    [[<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>],
    [<tag:items:thermal:glass/hardened>, <item:minecraft:glowstone>, <tag:items:thermal:glass/hardened>],
    [<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>]]);

# *So* glad the extractors are tiered by default.
// Though I may add non-upgrade recipes later....

print("refined_pipes.zs loaded");