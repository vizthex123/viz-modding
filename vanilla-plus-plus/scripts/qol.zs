# Adds Quality of Life recipes because I am an addict
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

// Logs -> Sticks
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Saplings -> Sticks
craftingTable.addShapeless("saplings_to_sticks", <item:minecraft:stick>, [<tag:items:minecraft:saplings>]);

// Tiny (Char)coal -> (Char)coal
craftingTable.addShapeless("tiny_coal_smasher", <item:minecraft:coal>, [<item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>]);
craftingTable.addShapeless("tiny_charcoal_smasher", <item:minecraft:charcoal>, [<item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>]);

// Cheaper Chains
craftingTable.remove(<item:minecraft:chain>);
craftingTable.remove(<item:charm:gold_chain>);
craftingTable.remove(<item:pfm:iron_chain>);

craftingTable.addShaped("chain", <item:minecraft:chain>, 
    [[<item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>]]);

craftingTable.addShaped("iron_chain", <item:pfm:iron_chain>*2, 
    [[<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]]);
craftingTable.addShapeless("iron_chain_combine", <item:pfm:iron_chain>, [<item:minecraft:chain>, <item:minecraft:iron_nugget>]);

craftingTable.addShaped("gold_chain", <item:charm:gold_chain>, 
    [[<item:minecraft:gold_nugget>],
    [<item:minecraft:gold_nugget>],
    [<item:minecraft:gold_nugget>]]);

// Upgrade the Baby Backpack to a Frayed one
craftingTable.addShaped("baby_backpack_upgrade", <item:inmis:frayed_backpack>, 
    [[<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>],
    [<item:minecraft:leather>, <item:inmis:baby_backpack>, <item:minecraft:leather>],
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]]);

// Upgrade the Blazing Backpack to a Withered one
craftingTable.addShaped("blazing_backpack_upgrade", <item:inmis:withered_backpack>, 
    [[<item:minecraft:air>, <item:minecraft:nether_star>, <item:minecraft:air>],
    [<tag:items:minecraft:soul_fire_base_blocks>, <item:inmis:blazing_backpack>, <tag:items:minecraft:soul_fire_base_blocks>],
    [<item:minecraft:air>, <tag:items:minecraft:soul_fire_base_blocks>, <item:minecraft:air>]]);


### Recipe Fixes ###
## Adds tag support to recipes
craftingTable.remove(<item:nears:soul_sundae>);
craftingTable.remove(<item:nears:glowy_snack>);
craftingTable.remove(<item:minecraft:rabbit_stew>);
craftingTable.remove(<item:minecraft:mushroom_stew>);
craftingTable.remove(<item:minecraft:beetroot_soup>);

var bowl = <tag:items:vanilla:bowl>;
var mushroom = <tag:items:vanilla:mushroom>;

// Soul Sundae
craftingTable.addShapeless("soul_sundae", <item:nears:soul_sundae>, [<tag:items:nears:sundae_soils>, <item:nears:faar>, <item:nears:soul_juice>, bowl]);

// Glowy Snack
craftingTable.addShapeless("glowy_snack", <item:nears:glowy_snack>, [<item:minecraft:glow_berries>, <item:nears:near>, bowl]);

// Rabbit Stew
craftingTable.addShapeless("rabbit_stew", <item:minecraft:rabbit_stew>, [<item:minecraft:baked_potato>, <item:minecraft:cooked_rabbit>, bowl, <item:minecraft:carrot>, mushroom]);

// Mushroom Stew
craftingTable.addShapeless("mushroom_stew", <item:minecraft:mushroom_stew>, [bowl, mushroom, mushroom]);

// Beetroot Soup
craftingTable.addShapeless("beetroot_soup", <item:minecraft:beetroot_soup>, [bowl, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>]);

print("qol.zs loaded");