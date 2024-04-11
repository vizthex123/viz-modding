# Adds stuff missing from Better End
# Guess they're either bugged or still in development?

print("better-end.zs loading...");

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

# Biomass tags are in 0-tags-biomass.zs
# Dye tags are in 0-tags-dyes.zs
/*
# Make Thallasium give XP when smelted
furnace.remove(<item:betterend:thallasium_ingot>);
blastFurnace.remove(<item:betterend:thallasium_ingot>);

furnace.addRecipe("smelt_raw_thallasium", <item:betterend:thallasium_ingot>, <item:betterend:thallasium_raw>, 1.4, 200);
blastFurnace.addRecipe("blast_raw_thallasium", <item:betterend:thallasium_ingot>, <item:betterend:thallasium_raw>, 1.4, 100);

furnace.addRecipe("smelt_thallasium_ore", <item:betterend:thallasium_ingot>, <item:betterend:thallasium_ore>, 1.4, 200);
blastFurnace.addRecipe("blast_thallasium_ore", <item:betterend:thallasium_ingot>, <item:betterend:thallasium_ore>, 1.4, 100);
*/
// End Music Discs -> Ender Shards
craftingTable.addShapeless("end_disc_to_ender_shard", <item:betterend:ender_shard>*2, [<tag:items:vanilla:end_discs>]);

// Ender Shards -> Pearls
craftingTable.addShapeless("shards_to_pearl", <item:minecraft:ender_pearl>, [<item:betterend:ender_shard>, <item:betterend:ender_shard>, <item:betterend:ender_shard>, <item:betterend:ender_shard>]);



# Missing tags
<tag:items:balm:nuggets>.add(<item:betterend:thallasium_nugget>);
<tag:items:balm:nuggets>.add(<item:betterend:terminite_nugget>);

print("better-end.zs loaded");