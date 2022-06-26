# Adds Quality of Life recipes

import crafttweaker.api.tag.MCTag;

print("qol.zs loading...");

/*
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

# Change torch recipes
# Result is half the burn time of the item (e.g. Coal smelts 8 items, so it makes 4 torches)
craftingTable.removeByName("minecraft:torch");
craftingTable.removeByName("byg:torch_from_byg_coals");

craftingTable.addShaped("torch", <item:minecraft:torch>*4, 
    [[<item:minecraft:charcoal>|<item:minecraft:coal>|<item:malum:blazing_quartz>|<item:thermal:bitumen>],
    [<tag:items:balm:wooden_rods>]]);

craftingTable.addShaped("8x_torch", <item:minecraft:torch>*8, 
    [[<item:malum:arcane_charcoal>|<item:thermal:coal_coke>],
    [<tag:items:balm:wooden_rods>]]);

craftingTable.addShaped("6x_torch", <item:minecraft:torch>*6, 
    [[<item:byg:anthracite>],
    [<tag:items:balm:wooden_rods>]]);

craftingTable.addShaped("3x_torch", <item:minecraft:torch>*3, 
    [[<item:thermal:sulfur>|<item:byg:lignite>|<item:createaddition:biomass_pellet>],
    [<tag:items:balm:wooden_rods>]]);

craftingTable.addShaped("2x_torch", <item:minecraft:torch>*2, 
    [[<item:thermal:rosin>|<item:thermal:tar>],
    [<tag:items:balm:wooden_rods>]]);


// Buffs the rope recipe to give 2 instead of 1 per craft
craftingTable.remove(<item:additionaladditions:rope>);
craftingTable.addShaped("rope", <item:additionaladditions:rope>*2,
    [[<tag:items:forge:string>],
    [<tag:items:forge:string>]]);

// Make the rope coils from quark give 6 instead of 3
craftingTable.remove(<item:quark:rope>);
craftingTable.addShaped("rope_coil", <item:quark:rope>*6,
    [[<tag:items:forge:string>, <tag:items:forge:string>],
    [<tag:items:forge:string>, <tag:items:forge:string>],
    [<tag:items:forge:string>, <tag:items:forge:string>]]);

// Convert Ropes into Rope Coils (and vice versa)
craftingTable.addShaped("rope_coiling", <item:quark:rope>,
    [[<item:additionaladditions:rope>, <item:additionaladditions:rope>],
    [<item:additionaladditions:rope>, <item:additionaladditions:rope>]]);

craftingTable.addShapeless("rope_uncoiling", <item:additionaladditions:rope>*4, [<item:quark:rope>]);

// Smelt coloured Glass Shards into regular ones
furnace.addRecipe("smelt_glass_shards", <item:quark:clear_shard>, <tag:items:quark:shards>, 0, 100);

// Smelt Dripleaves into Green Dye
furnace.addRecipe("dripleaf_dye", <item:minecraft:green_dye>*2, <item:minecraft:big_dripleaf>, 1.5, 200);
furnace.addRecipe("dripleaf_dye_small", <item:minecraft:green_dye>, <item:minecraft:small_dripleaf>, 2.0, 200);

// Convert webs into string
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<item:minecraft:air>, <tag:items:forge:storage_blocks/lead>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:ingots/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);


# Smelt Raw Ore Blocks into ingots
# Gives a bit less XP than smelting the 9 ores would
# This means that you'll get more XP from raw ores, but the blocks will go a bit faster

blastFurnace.addRecipe("raw_copper_block", <item:minecraft:copper_ingot>*9, <item:minecraft:raw_copper_block>, 5.0, 600);
blastFurnace.addRecipe("raw_iron_block", <item:minecraft:iron_ingot>*9, <item:minecraft:raw_iron_block>, 5.5, 600);
blastFurnace.addRecipe("raw_gold_block", <item:minecraft:gold_ingot>*9, <item:minecraft:raw_gold_block>, 7.5, 600);

blastFurnace.addRecipe("raw_tin_block", <item:thermal:tin_ingot>*9, <item:thermal:raw_tin_block>, 6.0, 600);
blastFurnace.addRecipe("raw_lead_block", <item:thermal:lead_ingot>*9, <item:thermal:raw_lead_block>, 6.0, 600);
blastFurnace.addRecipe("raw_silver_block", <item:thermal:silver_ingot>*9, <item:thermal:raw_silver_block>, 6.0, 600);
blastFurnace.addRecipe("raw_nickel_block", <item:thermal:nickel_ingot>*9, <item:thermal:raw_nickel_block>, 6.0, 600);

blastFurnace.addRecipe("raw_zinc_block", <item:create:zinc_ingot>*9, <item:create:raw_zinc_block>, 5.5, 600);

blastFurnace.addRecipe("raw_pendorite_block", <item:byg:pendorite_scraps>*9, <item:byg:raw_pendorite_block>, 6.0, 900);

print("qol.zs loaded");