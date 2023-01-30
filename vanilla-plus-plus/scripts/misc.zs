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

var amethyst = <item:minecraft:amethyst_shard>;
var echo = <item:minecraft:echo_shard>;
var gold = <item:minecraft:gold_ingot>;
var lapis = <item:minecraft:lapis_lazuli>;
var redstone = <item:minecraft:redstone>;

var wool = <tag:items:minecraft:wool>;

// Balance the Ring of Attraction's recipe a tad
craftingTable.remove(<item:ring_of_attraction:ring_of_attraction>);
craftingTable.addShaped("echo_ring", <item:ring_of_attraction:ring_of_attraction>, 
    [[redstone, redstone, lapis],
    [redstone, echo, lapis],
    [redstone, lapis, lapis]]);

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

// Dye from Berries
craftingTable.addShapeless("brown_dye", <item:minecraft:brown_dye>, [<item:cinderscapes:bramble_berries>]);
craftingTable.addShapeless("cyan_dye", <item:minecraft:cyan_dye>, [<item:nears:soul_berries>]);
craftingTable.addShapeless("orange_dye", <item:minecraft:orange_dye>, [<item:minecraft:glow_berries>]);
craftingTable.addShapeless("red_dye", <item:minecraft:red_dye>, [<item:minecraft:sweet_berries>]);

// Change the recipe for Soul Berry Seeds
craftingTable.remove(<item:nears:soul_seeds>);
craftingTable.addShapeless("soul_seeds", <item:nears:soul_seeds>*2, [<item:nears:soul_berries>, <item:nears:soul_berries>]);

print("misc.zs loaded");