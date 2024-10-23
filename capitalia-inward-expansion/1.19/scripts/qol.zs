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

val empty = <item:minecraft:air>;

val chain = <item:minecraft:chain>;

val iron = <tag:items:forge:ingots/iron>;
val nugget = <tag:items:forge:nuggets/iron>;

// Mangrove Roots -> Sticks
craftingTable.addShapeless("roots_to_sticks", <item:minecraft:stick>*4, [<item:minecraft:mangrove_roots>|<item:minecraft:muddy_mangrove_roots>]);

// Alloy Furnace -> Bluletric Alloy Furnace
craftingTable.addShaped("alloy_furnace_upgrade", <item:bluepower:blulectric_alloyfurnace>, 
    [[empty, <item:minecraft:bricks>, empty],
    [<item:minecraft:bricks>, <item:bluepower:alloyfurnace>, <item:minecraft:bricks>],
    [iron, <item:bluepower:blue_alloy_ingot>, iron]]);

// Tungsten Carbide anvil recipe
craftingTable.addShaped("tungsten_anvil", <item:minecraft:anvil>*2, 
    [[empty, <item:bluepower:tungsten_block>, empty],
    [empty, <item:bluepower:tungsten_carbide>, empty],
    [<item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>, <item:bluepower:tungsten_carbide>]]);

// Removes the dumb expensive-ness of Chains
craftingTable.remove(<item:minecraft:chain>);
craftingTable.addShaped("chain", <item:minecraft:chain>, 
    [[nugget],
    [nugget],
    [nugget]]);

# Craft chainmail Armour with Chains
craftingTable.addShaped("chainmail_helmet", <item:minecraft:chainmail_helmet>, 
    [[chain, chain, chain],
    [chain, empty, chain]]);
	
craftingTable.addShaped("chainmail_chestplate", <item:minecraft:chainmail_chestplate>, 
    [[chain, empty, chain],
    [chain, chain, chain],
    [chain, chain, chain]]);
	
craftingTable.addShaped("chainmail_leggings", <item:minecraft:chainmail_leggings>, 
    [[chain, chain, chain],
    [chain, empty, chain],
    [chain, empty, chain]]);

craftingTable.addShaped("chainmail_boots", <item:minecraft:chainmail_boots>, 
    [[chain, empty, chain],
    [chain, empty, chain]]);

# Upgrade Chainmail Armour into Iron
craftingTable.addShapeless("chainmail_helmet_upgrade", <item:minecraft:iron_helmet>, [<item:minecraft:chainmail_helmet>.anyDamage(), iron, iron, nugget]);

craftingTable.addShapeless("chainmail_chestplate_upgrade", <item:minecraft:iron_chestplate>, [<item:minecraft:chainmail_chestplate>.anyDamage(), iron, iron, nugget]);

craftingTable.addShapeless("chainmail_leggings_upgrade", <item:minecraft:iron_leggings>, [<item:minecraft:chainmail_leggings>.anyDamage(), iron, iron, nugget]);

craftingTable.addShapeless("chainmail_boots_upgrade", <item:minecraft:iron_boots>, [<item:minecraft:chainmail_boots>.anyDamage(), iron, iron, nugget]);

// Mini coal torches
craftingTable.addShaped("mini_torch", <item:minecraft:torch>, 
    [[<item:minicoal:mini_coal>|<item:minicoal:mini_charcoal>, <item:minicoal:mini_coal>|<item:minicoal:mini_charcoal>],
    [<tag:items:forge:rods/wooden>]]);

// Glow Berries -> Orange Dye
craftingTable.addShapeless("orange_dye_from_glow_berries", <item:minecraft:orange_dye>, [<item:minecraft:glow_berries>]);

// Convert Ropes into Rope Coils (and vice versa)
craftingTable.addShaped("rope_coiling", <item:quark:rope>,
    [[<item:additionaladditions:rope>, <item:additionaladditions:rope>],
    [<item:additionaladditions:rope>, <item:additionaladditions:rope>]]);

craftingTable.addShapeless("rope_uncoiling", <item:additionaladditions:rope>*4, [<item:quark:rope>]);

// Smelt coloured Glass Shards into regular ones
furnace.addRecipe("smelt_glass_shards", <item:quark:clear_shard>, <tag:items:quark:shards>, 0.1, 100);

// Smelt Dripleaves into Green Dye
furnace.addRecipe("dripleaf_dye", <item:minecraft:green_dye>*2, <item:minecraft:big_dripleaf>, 2.0, 100);
furnace.addRecipe("dripleaf_dye_small", <item:minecraft:green_dye>, <item:minecraft:small_dripleaf>, 1.0, 100);

// Smelt Moss Paste into Green Dye
furnace.addRecipe("paste_dye", <item:minecraft:green_dye>, <item:quark:moss_paste>, 1.0, 100);

// Convert webs into string
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

print("qol.zs loaded");