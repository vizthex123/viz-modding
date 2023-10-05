# Changes recipes that are restricted to certain Ages
print("ages.zs loading...");
/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

smithing.addRecipe("recipe_name", <output>, <item>, <item2>);

smithing.removeByName("name");
*/

val brass = <tag:items:forge:ingots/brass>;

# Brass Blast Furnace
craftingTable.remove(<item:minecraft:blast_furnace>);
craftingTable.addShaped("brass_furnace", <item:minecraft:blast_furnace>,
    [[brass, brass, brass],
    [brass, <tag:items:cie:furnace>, brass],
    [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);

print("ages.zs loaded");