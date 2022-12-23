# Adds Quality of Life recipes

import crafttweaker.api.tag.MCTag;
print("qol.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

// Smoke Rotten Flesh into Leather
smoker.addRecipe("smelt_flesh", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 0.35, 200);
smoker.addRecipe("smelt_illager_flesh", <item:minecraft:leather>, <item:food_enhancements:illager_flesh>, 0.5, 100);

// Smoke Poisonous Potatoes into Baked Potatoes
smoker.addRecipe("smelt_poisonous_potato", <item:minecraft:baked_potato>, <item:minecraft:poisonous_potato>, 0.5, 200);

// Recycle Depth Meter
furnace.addRecipe("smelt_depth_meter", <item:create:copper_nugget>*27, <item:additionaladditions:depth_meter>, 0, 400);
blastFurnace.addRecipe("blast_depth_meter", <item:create:copper_nugget>*27, <item:additionaladditions:depth_meter>, 0, 200);

// 8x Wool -> White Wool
craftingTable.addShaped("white_wool", <item:minecraft:white_wool>*8, 
    [[<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
    [<tag:items:minecraft:wool>, <item:minecraft:white_dye>, <tag:items:minecraft:wool>],
    [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>]]);

// Make Suspicious Stew use tags
craftingTable.remove(<item:minecraft:suspicious_stew>);
craftingTable.addShapeless("suspicious_stew", <item:minecraft:suspicious_stew>, [<tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>, <item:minecraft:bowl>, <tag:items:minecraft:flowers>]);

# Rope Changes
// Buffs the rope recipe to give 2 instead of 1 per craft
craftingTable.remove(<item:additionaladditions:rope>);
craftingTable.addShaped("rope", <item:additionaladditions:rope>*2,
    [[<tag:items:forge:string>],
    [<tag:items:forge:string>]]);

// Convert Ropes into Rope Coils (and vice versa)
craftingTable.addShaped("rope_coiling", <item:quark:rope>,
    [[<item:additionaladditions:rope>, <item:additionaladditions:rope>],
    [<item:additionaladditions:rope>, <item:additionaladditions:rope>]]);

craftingTable.addShapeless("rope_uncoiling", <item:additionaladditions:rope>*4, [<item:quark:rope>]);

// Smelt coloured Glass Shards into regular ones
furnace.addRecipe("smelt_glass_shards", <item:quark:clear_shard>, <tag:items:quark:shards>, 0, 100);

// Smelt Dripleaves into Green Dye
furnace.addRecipe("dripleaf_dye", <item:minecraft:green_dye>*2, <item:minecraft:big_dripleaf>, 1.5, 100);
furnace.addRecipe("dripleaf_dye_small", <item:minecraft:green_dye>, <item:minecraft:small_dripleaf>, 2.0, 100);

// Smelt Moss Paste into Green Dye
furnace.addRecipe("paste_dye", <item:minecraft:green_dye>, <item:quark:moss_paste>, 1.0, 100);

// Convert webs into string
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

print("qol.zs loaded");