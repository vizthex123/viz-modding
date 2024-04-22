# Adds Quality of Life recipes because I am a hopeless addict
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

val stick = <tag:items:balm:wooden_rods>;
val empty = <item:minecraft:air>;

// Crying Obsidian -> Obsidian
blastFurnace.addRecipe("blast_crying_obsidian", <item:minecraft:obsidian>, <item:minecraft:crying_obsidian>, 4.0, 100);
blastFurnace.addRecipe("blast_blue_crying_obsidian", <item:minecraft:obsidian>, <item:betternether:blue_crying_obsidian>, 8.0, 100);

// Logs -> Sticks
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Saplings -> Sticks
craftingTable.addShapeless("saplings_to_sticks", <item:minecraft:stick>, [<tag:items:minecraft:saplings>]);

// Bark -> Sticks
craftingTable.addShapeless("bark_to_sticks", <item:minecraft:stick>*2, [<tag:items:vanilla:bark>]);

// Cobwebs -> Webs
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Tiny (Char)coal -> Torches
val tiny_coal = <item:tinycoal:tinycoal>;
val tiny_charcoal = <item:tinycoal:tinycharcoal>;

craftingTable.addShaped("tiny_torch", <item:minecraft:torch>, 
    [[tiny_charcoal|tiny_coal, tiny_charcoal|tiny_coal],
    [stick, empty]]);

// Tiny (Char)coal -> (Char)coal
craftingTable.addShapeless("combine_tiny_coal", <item:minecraft:coal>, [tiny_coal, tiny_coal, tiny_coal, tiny_coal, tiny_coal, tiny_coal, tiny_coal, tiny_coal]);

craftingTable.addShapeless("combine_tiny_charcoal", <item:minecraft:charcoal>, [tiny_charcoal, tiny_charcoal, tiny_charcoal, tiny_charcoal, tiny_charcoal, tiny_charcoal, tiny_charcoal, tiny_charcoal]);

// Slimeballs from Echo and Amethyst Shards
craftingTable.addShapeless("shards_to_slimeballs", <item:minecraft:slime_ball>*8, [<item:kubejs:biomass>|<item:kubejs:meaty_clump>, <item:minecraft:echo_shard>, <item:minecraft:amethyst_shard>]);

// Convert Glow Ink Sacs into regular ones
craftingTable.addShapeless("glow_sac_to_ink_sac", <item:minecraft:ink_sac>*2, [<item:minecraft:glow_ink_sac>, <item:minecraft:glow_ink_sac>]);

// Upgrade the Baby Backpack to a Frayed one
craftingTable.addShaped("baby_backpack_upgrade", <item:inmis:frayed_backpack>, 
    [[empty, <item:minecraft:leather>, empty],
    [<item:minecraft:leather>, <item:inmis:baby_backpack>, <item:minecraft:leather>],
    [empty, <item:minecraft:leather>, empty]]);

// Upgrade the Blazing Backpack to a Withered one
craftingTable.addShaped("blazing_backpack_upgrade", <item:inmis:withered_backpack>, 
    [[empty, <item:minecraft:nether_star>, empty],
    [<tag:items:minecraft:soul_fire_base_blocks>, <item:inmis:blazing_backpack>, <tag:items:minecraft:soul_fire_base_blocks>],
    [empty, <tag:items:minecraft:soul_fire_base_blocks>, empty]]);



// Cheaper Chains
craftingTable.remove(<item:minecraft:chain>);
craftingTable.remove(<item:charm:gold_chain>);
craftingTable.remove(<item:pfm:iron_chain>);

craftingTable.addShaped("chain", <item:minecraft:chain>, 
    [[<tag:items:balm:iron_nuggets>],
    [<tag:items:balm:iron_nuggets>],
    [<tag:items:balm:iron_nuggets>]]);

craftingTable.addShaped("iron_chain", <item:pfm:iron_chain>*2, 
    [[<tag:items:balm:iron_nuggets>, <tag:items:balm:iron_nuggets>],
    [<tag:items:balm:iron_nuggets>, <tag:items:balm:iron_nuggets>],
    [<tag:items:balm:iron_nuggets>, <tag:items:balm:iron_nuggets>]]);

craftingTable.addShapeless("iron_chain_combine", <item:pfm:iron_chain>, [<item:minecraft:chain>, <item:minecraft:chain>]);

craftingTable.addShaped("gold_chain", <item:charm:gold_chain>, 
    [[<tag:items:balm:gold_nuggets>],
    [<tag:items:balm:gold_nuggets>],
    [<tag:items:balm:gold_nuggets>]]);

craftingTable.addShaped("cincinnasite_chain_cheap", <item:betternether:cincinnasite_chain>, 
    [[<item:betternether:cincinnasite_ingot>]]);

craftingTable.addShaped("thallasium_chain", <item:betterend:thallasium_chain>, 
    [[<item:betterend:thallasium_nugget>],
    [<item:betterend:thallasium_nugget>],
    [<item:betterend:thallasium_nugget>]]);

craftingTable.addShaped("terminite_chain", <item:betterend:terminite_chain>, 
    [[<item:betterend:terminite_nugget>],
    [<item:betterend:terminite_nugget>],
    [<item:betterend:terminite_nugget>]]);



print("qol.zs loaded");