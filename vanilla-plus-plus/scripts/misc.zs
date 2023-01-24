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
    [[<item:minecraft:feather>, gold, <item:minecraft:feather>],
    [echo, <item:minecraft:elytra>, echo],
    [gold, gold, gold]]);

print("misc.zs loaded");