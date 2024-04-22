# Changes miscellanous recipes & whatnot

print("misc.zs loading...");

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

val amethyst = <item:minecraft:amethyst_shard>;
val echo = <item:minecraft:echo_shard>;
val gold = <item:minecraft:gold_ingot>;
val lapis = <item:minecraft:lapis_lazuli>;
val redstone = <item:minecraft:redstone>;

val wool = <tag:items:minecraft:wool>;

val empty = <item:minecraft:air>;

// Convert the Pancake Disc into Pancakes
craftingTable.addShapeless("pancake_disc_to_pancakes", <item:supplementaries:pancake>*2, [<item:supplementaries:pancake_disc>]);

// Turn Clay into Dripstone
craftingTable.addShaped("pointed_dripstone", <item:minecraft:pointed_dripstone>*2, 
    [[<item:minecraft:gravel>, <item:minecraft:clay_ball>, <item:minecraft:clay_ball>]]);

craftingTable.addShaped("dripstone", <item:minecraft:dripstone_block>*2, 
    [[<item:minecraft:granite>, <item:minecraft:clay>],
    [<item:minecraft:clay>, <item:minecraft:granite>]]);

// Balance the Ring of Attraction's recipe a tad
craftingTable.remove(<item:ring_of_attraction:ring_of_attraction>);
craftingTable.addShaped("echo_ring", <item:ring_of_attraction:ring_of_attraction>, 
    [[empty, lapis, redstone],
    [lapis, echo, lapis],
    [empty, lapis, empty]]);

craftingTable.addShaped("amethyst_ring", <item:ring_of_attraction:ring_of_attraction>, 
    [[redstone, redstone, redstone],
    [amethyst, amethyst, amethyst],
    [lapis, lapis, lapis]]);

// Change the Angel Ring's recipe
craftingTable.remove(<item:doomangelring:angelring>);
craftingTable.addShaped("angel_ring", <item:doomangelring:angelring>, 
    [[<item:minecraft:feather>, amethyst, <item:minecraft:feather>],
    [amethyst, <item:minecraft:elytra>, amethyst],
    [gold, gold, gold]]);

craftingTable.addShaped("angel_ring_echo", <item:doomangelring:angelring>, 
    [[<item:minecraft:feather>, echo, <item:minecraft:feather>],
    [gold, <item:minecraft:elytra>, gold],
    [gold, gold, gold]]);

// Change the recipe for Soul Berry Seeds
craftingTable.remove(<item:nears:soul_seeds>);
craftingTable.addShapeless("soul_seeds", <item:nears:soul_seeds>*2, [<item:nears:soul_berries>, <item:nears:soul_berries>]);

print("misc.zs loaded");