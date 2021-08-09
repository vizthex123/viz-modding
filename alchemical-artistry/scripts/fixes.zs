# Fixes how Minecraft (or maybe it was Forge?) broke some recipes.
import crafttweaker.api.tag.MCTag;

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

// Makes Empty Canisters cheaper
// No clue why they cost an arm and a leg by default tbh
<recipetype:minecraft:crafting>.removeRecipe(<item:heartcanisters:empty_canister>);
craftingTable.addShaped("empty_canister_fixed", <item:heartcanisters:empty_canister>, 
    [[<item:heartcanisters:canister_base>],
    [<item:minecraft:iron_ingot>],
    [<item:heartcanisters:canister_base>]]);

// Fix TNT not using the forge:sand tag
<recipetype:minecraft:crafting>.removeRecipe(<item:minecraft:tnt>);
craftingTable.addShaped("tnt_tagged", <item:minecraft:tnt>, 
    [[<tag:items:forge:gunpowder>, <tag:items:forge:sand>, <tag:items:forge:gunpowder>],
    [<tag:items:forge:sand>, <tag:items:forge:gunpowder>, <tag:items:forge:sand>],
    [<tag:items:forge:gunpowder>, <tag:items:forge:sand>, <tag:items:forge:gunpowder>]]);

// Fixes Rubber not using the flower tag
// No clue why they didn't do this by default tbh
craftingTable.removeByName("thermal:rubber_from_dandelion");
craftingTable.addShaped("rubber_small", <item:thermal:rubber>, 
    [[<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, <item:minecraft:water_bucket>, <tag:items:minecraft:small_flowers>],
    [<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>]]);

craftingTable.addShaped("rubber_tall", <item:thermal:rubber>*2, 
    [[<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, <item:minecraft:water_bucket>, <tag:items:minecraft:tall_flowers>],
    [<tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>, <tag:items:minecraft:tall_flowers>]]);

// Fix Bowls not using the proper tag (why are they even doing that lol?)
craftingTable.removeByName("minecraft:bowl");
craftingTable.addShaped("bowl_fixed", <item:minecraft:bowl>*4, 
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>],
    [<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>]]);

// Makes Mushroom Stew use the mushrooms tag instead of specific items
craftingTable.removeByName("minecraft:mushroom_stew");
craftingTable.addShapeless("mushroom_stew_tagged", <item:minecraft:mushroom_stew>, [<item:minecraft:bowl>, <tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>]);

// Make Rabbit Stew use the mushrooms tag instead of specific items
<recipetype:minecraft:crafting>.removeRecipe(<item:minecraft:rabbit_stew>);
craftingTable.addShapeless("rabbit_stew_tagged", <item:minecraft:rabbit_stew>, [<item:minecraft:cooked_rabbit>, <item:minecraft:baked_potato>, <item:minecraft:carrot>, <item:minecraft:bowl>, <tag:items:forge:mushrooms>]);


print("fixes.zs loaded");