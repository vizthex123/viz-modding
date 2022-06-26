# Adds recipes to Tinker's Construct
print("tinker.zs loading...");
/*
craftingTable.addShapeless("name", <item:output>, [<item>]);
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");

<recipetype:tconstruct:melting>.addMeltingRecipe(name as string, input as IIngredient, output as IFluidStack, temperature as int, time as int, @Optional byproduct as IFluidStack[])
*/

# Replace the slimeballs in the book recipe with Glue
craftingTable.removeByName("tconstruct:tables/book_substitute");
craftingTable.addShapeless("glue_book", <item:minecraft:book>, [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>, <item:kubejs:glue>, <item:tconstruct:pattern>, <item:tconstruct:pattern>]);


/*
// Melt Gold Rings into Gold
<recipetype:tconstruct:melting>.addMeltingRecipe("melt_gold_ring", <item:additionaladditions:gold_ring>, <fluid:tconstruct:molten_gold>*400, 700, 5);
*/
/*
// Melt Crying Obsidian into Obsidian
<recipetype:tconstruct:melting>.addMeltingRecipe("melt_crying_obsidian", <item:minecraft:obsidian>, <fluid:tconstruct:obsidian>*1000, 1200, 35);
*/

print("tinker.zs loaded");