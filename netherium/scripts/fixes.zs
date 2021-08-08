# Fixes various recipes/items
print("fixes.zs loading...");
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
*/

# Fix Storage Racks not using their respective tags
# Hoping the author fixes them himself though. Recipes are annoying.
// Warped
craftingTable.removeByName("storageracks:warped_wood_rack");
craftingTable.addShaped("warped_wood_rack_fixed", <item:storageracks:warped_wood_rack>, 
    [[<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>],
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>],
    [<item:minecraft:warped_slab>, <item:minecraft:warped_slab>, <item:minecraft:warped_slab>]]);

// Crimson
craftingTable.removeByName("storageracks:crimson_wood_rack");
craftingTable.addShaped("crimson_wood_rack_fixed", <item:storageracks:crimson_wood_rack>, 
    [[<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>],
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>],
    [<item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>, <item:minecraft:crimson_slab>]]);


// Fix the recipe for the Culinary Generator not using any kind of cooked meat
<recipetype:minecraft:crafting>.removeRecipe(<item:industrialforegoing:mycelial_culinary>);
craftingTable.addShaped("culinary_generator", <item:industrialforegoing:mycelial_culinary>, 
    [[<tag:items:forge:crops>, <tag:items:forge:crops>, <tag:items:forge:crops>],
    [<tag:items:forge:crops>, <tag:items:forge:cooked_meat>, <tag:items:forge:crops>],
    [<item:minecraft:redstone>, <item:industrialforegoing:machine_frame_simple>, <item:minecraft:redstone>]]);

// Fix torches not using the proper tags
<recipetype:minecraft:crafting>.removeRecipe(<item:minecraft:torch>);
craftingTable.addShaped("torch", <item:minecraft:torch>*4, 
    [[<item:minecraft:charcoal>|<item:minecraft:coal>|<item:byg:lignite>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>]]);

craftingTable.addShaped("torch_anthracite", <item:minecraft:torch>*6, 
    [[<item:byg:anthracite>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>]]);

craftingTable.addShaped("torch_mini_coal", <item:minecraft:torch>, 
    [[<item:minicoal2:minicharcoal>|<item:minicoal2:minicoal>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>]]);

// Fix the duplicate Soul Torch recipes
<recipetype:minecraft:crafting>.removeRecipe(<item:minecraft:soul_torch>);
craftingTable.addShaped("soul_torch_coal", <item:minecraft:soul_torch>*4, 
    [[<item:minecraft:air>, <tag:items:minecraft:coals>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:soul_sand>|<item:minecraft:soul_soil>, <item:minecraft:air>]]);

craftingTable.addShaped("soul_torch_souls", <item:minecraft:soul_torch>*8, 
    [[<item:minecraft:air>, <item:comfortable_nether:docile_soul>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:soul_sand>|<item:minecraft:soul_soil>, <item:minecraft:air>]]);

# Fix BNO's Nuggets not being craftable
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:tin_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:tin_ingot>);

craftingTable.addShapeless("tin_to_nuggets", <item:bno:tin_nugget>*9, [<tag:items:forge:ingots/tin>]);
craftingTable.addShaped("nuggets_to_tin", <item:electrodynamics:ingottin>, 
    [[<tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>],
    [<tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>],
    [<tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/tin>]]);

<recipetype:minecraft:crafting>.removeRecipe(<item:bno:lead_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:lead_ingot>);

craftingTable.addShapeless("lead_to_nuggets", <item:bno:lead_nugget>*9, [<tag:items:forge:ingots/lead>]);
craftingTable.addShaped("nuggets_to_lead", <item:electrodynamics:ingotlead>, 
    [[<tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>],
    [<tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>],
    [<tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/lead>]]);

<recipetype:minecraft:crafting>.removeRecipe(<item:bno:silver_nugget>);
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:silver_ingot>);

craftingTable.addShapeless("silver_to_nuggets", <item:bno:silver_nugget>*9, [<tag:items:forge:ingots/silver>]);
craftingTable.addShaped("nuggets_to_silver", <item:electrodynamics:ingotsilver>, 
    [[<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>],
    [<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>],
    [<tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/silver>]]);


# Fix BNO's Blocks not being craftable
// Copper is done by Create, BNO block has been removed in removed.zs & JEI.zs
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:tin_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:lead_block>);
<recipetype:minecraft:crafting>.removeRecipe(<item:bno:silver_block>);

craftingTable.addShaped("tin_to_block", <item:bno:tin_block>, 
    [[<tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>],
    [<tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>],
    [<tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>, <tag:items:forge:ingots/tin>]]);

craftingTable.addShaped("lead_to_block", <item:bno:lead_block>, 
    [[<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);

craftingTable.addShaped("silver_to_block", <item:bno:silver_block>, 
    [[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
    [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
    [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]]);



# Fix Food Pouches being full when crafted
<recipetype:minecraft:crafting>.removeRecipe(<item:foodpouches:small_food_pouch>);
<recipetype:minecraft:crafting>.removeRecipe(<item:foodpouches:medium_food_pouch>);
<recipetype:minecraft:crafting>.removeRecipe(<item:foodpouches:large_food_pouch>);
<recipetype:minecraft:crafting>.removeRecipe(<item:foodpouches:massive_food_pouch>);

// Pouch
craftingTable.addShaped("food_pouch", <item:foodpouches:small_food_pouch>.withTag({Damage: 40 as int}).withDamage(40), 
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:items:forge:leather>, <tag:items:forge:crops>, <tag:items:forge:leather>],
    [<item:minecraft:air>, <tag:items:forge:leather>, <item:minecraft:air>]]);

// Satchel
craftingTable.addShaped("food_satchel", <item:foodpouches:medium_food_pouch>.withTag({Damage: 60 as int}).withDamage(60), 
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:items:forge:leather>, <item:minecraft:golden_carrot>, <tag:items:forge:leather>],
    [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

craftingTable.addShapeless("food_satchel_upgrade", <item:foodpouches:medium_food_pouch>.withTag({Damage: 60 as int}).withDamage(60), [<item:minecraft:golden_carrot>, <item:foodpouches:small_food_pouch>.anyDamage()]);

// Bag
craftingTable.addShaped("food_bag", <item:foodpouches:large_food_pouch>.withTag({Damage: 80 as int}).withDamage(80), 
    [[<item:minecraft:air>, <tag:items:forge:leather>, <item:minecraft:air>],
    [<tag:items:forge:leather>, <item:minecraft:golden_apple>, <tag:items:forge:leather>],
    [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

craftingTable.addShapeless("food_bag_upgrade", <item:foodpouches:large_food_pouch>.withTag({Damage: 80 as int}).withDamage(80), [<item:minecraft:golden_apple>, <item:foodpouches:medium_food_pouch>.anyDamage()]);

// Sack
craftingTable.addShaped("food_sack", <item:foodpouches:massive_food_pouch>.withTag({Damage: 100 as int}).withDamage(85), 
    [[<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>],
    [<tag:items:forge:leather>, <item:minecraft:enchanted_golden_apple>, <tag:items:forge:leather>],
    [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

craftingTable.addShapeless("food_sack_upgrade", <item:foodpouches:massive_food_pouch>.withTag({Damage: 100 as int}).withDamage(85), [<item:minecraft:enchanted_golden_apple>, <item:foodpouches:large_food_pouch>.anyDamage()]);

print("fixes.zs loaded");