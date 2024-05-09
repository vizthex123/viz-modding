# Adds Quality of Life recipes because I am a hopeless addict
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
/*
val stick = <tag:items:forge:rods/wooden>;
val empty = <item:minecraft:air>;

// Gravel -> Flint
craftingTable.addShapeless("gravel_to_flint", <item:minecraft:flint>, [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]);

// Crying Obsidian -> Obsidian
blastFurnace.addRecipe("blast_crying_obsidian", <item:minecraft:obsidian>, <item:minecraft:crying_obsidian>, 4.0, 100);

// Saplings -> Sticks
craftingTable.addShapeless("saplings_to_sticks", <item:minecraft:stick>, [<tag:items:minecraft:saplings>]);

// Bark -> Sticks
craftingTable.addShapeless("bark_to_sticks", <item:minecraft:stick>*2, [<tag:items:forge:bark>]);

// Cobwebs -> Webs
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Tiny (Char)coal -> Torches
craftingTable.addShaped("tiny_torch", <item:minecraft:torch>, 
    [[<tag:items:forge:nuggets/coal>, <tag:items:forge:nuggets/coal>],
    [stick, empty]]);

// Slimeballs from Echo and Amethyst Shards
craftingTable.addShapeless("shards_to_slimeballs", <item:minecraft:slime_ball>*16, [<item:alexscaves:fertilizer>, <item:minecraft:echo_shard>, <item:minecraft:amethyst_shard>]);

// Add more uses for Glow Ink Sacs
// Dye recipe is in dyes.zs
craftingTable.addShapeless("glow_sac_to_ink_sac", <item:minecraft:ink_sac>*2, [<item:minecraft:glow_ink_sac>, <item:minecraft:glow_ink_sac>]);

// Cheaper chains
val iron_nugget = <tag:items:forge:nuggets/iron>;
craftingTable.remove(<item:minecraft:chain>);
craftingTable.addShaped("chain", <item:minecraft:chain>, 
    [[iron_nugget],
    [iron_nugget],
    [iron_nugget]]);
*/
print("qol.zs loaded");