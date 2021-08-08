# Adds recipes for my custom items
print("recipes.zs loading...");
/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");

<recipetype:create:compacting>.addRecipe("recipeName", "heat", <item:output>, [<item:inputs>], [<fluid:inputs>], time);

do item:minecraft:air for empty spaces
*/

# Add a recipe for the Bottle of Vitamins


# Slime crystals
blastFurnace.addRecipe("pink_slime_crystal", <item:contenttweaker:pink_slime_crystal>, <item:industrialforegoing:pink_slime>, 2.5, 400);
blastFurnace.addRecipe("blood_crystal", <item:contenttweaker:blood_crystal>, <item:tconstruct:blood_slime_ball>, 5.0, 500);

craftingTable.addShapeless("blood_to_green", <item:tconstruct:earth_slime_crystal>*2, [<item:contenttweaker:blood_crystal>]);
craftingTable.addShapeless("pink_to_green", <item:tconstruct:earth_slime_crystal>*5, [<item:contenttweaker:pink_slime_crystal>]);

# Lapis Sheets
<recipetype:create:pressing>.addRecipe("lapis_sheet", [<item:contenttweaker:lapis_sheet>*2], <item:minecraft:lapis_block>);

# Uranium fuel items
val uranium = <item:powah:uraninite>;
# val ublock = <item:powah:uraninite_block>;
val impure = <item:electrodynamics:impuredustvanadium>;
val pure = <item:electrodynamics:dustvanadium>;

// Pellet
craftingTable.addShapeless("uranium_pellet", <item:contenttweaker:uranium_pellet>, [<tag:items:minecraft:coals>, uranium, uranium]);

<recipetype:create:compacting>.addRecipe("uranium_pellet_compact", "none", <item:contenttweaker:uranium_pellet>, [<tag:items:minecraft:coals>, uranium, uranium], [], 200);

// Drop
craftingTable.addShaped("uranium_drop", <item:contenttweaker:uranium_drop>*2, 
    [[uranium, uranium, uranium],
    [uranium, <item:minecraft:redstone>, uranium],
    [uranium, uranium, uranium]]);

craftingTable.addShapeless("uranium_drop_combine", <item:contenttweaker:uranium_drop>, [<tag:items:minecraft:coals>, <item:minecraft:redstone>, <item:contenttweaker:uranium_pellet>, <item:contenttweaker:uranium_pellet>]);

<recipetype:create:compacting>.addRecipe("uranium_drop_compact", "none", <item:contenttweaker:uranium_drop>, [<tag:items:minecraft:coals>, <item:minecraft:redstone>, <item:contenttweaker:uranium_pellet>*2], [], 200);

// Canister
craftingTable.addShapeless("uranium_canister_combine", <item:contenttweaker:uranium_canister>, [<item:tconstruct:copper_can>, <item:contenttweaker:uranium_drop>, <item:contenttweaker:uranium_drop>]);

<recipetype:create:compacting>.addRecipe("uranium_canister_compact", "none", <item:contenttweaker:uranium_canister>, [<item:tconstruct:copper_can>, <item:contenttweaker:uranium_drop>*2], [], 200);

// Rod
craftingTable.addShaped("uranium_rod", <item:contenttweaker:uranium_rod>,
[[<item:powah:capacitor_basic>, <item:minecraft:air>, <item:powah:capacitor_basic>],
[<item:contenttweaker:uranium_canister>, <item:minecraft:air>, <item:contenttweaker:uranium_canister>],
[<item:powah:capacitor_basic>, <item:minecraft:air>, <item:powah:capacitor_basic>]]);

<recipetype:create:compacting>.addRecipe("uranium_rod_compact", "none", <item:contenttweaker:uranium_rod>, [<item:contenttweaker:uranium_canister>*2, <item:powah:capacitor_basic>*4], [], 300);

// Fuel Core
<recipetype:create:mechanical_crafting>.addRecipe("uranium_core_impure", <item:contenttweaker:uranium_fuel_core>,
[[impure, <item:minecraft:air>, impure],
[<item:contenttweaker:uranium_rod>, <item:minecraft:air>, <item:contenttweaker:uranium_rod>],
[impure, <item:minecraft:air>, impure]]);

<recipetype:create:mechanical_crafting>.addRecipe("uranium_core_pure", <item:contenttweaker:uranium_fuel_core>,
[[<item:contenttweaker:uranium_rod>, pure, <item:contenttweaker:uranium_rod>]]);

# Wrapped Fuel Core recipes
// Craft
<recipetype:create:compacting>.addRecipe("wrapped_core_kelp", "none", <item:contenttweaker:wrapped_fuel_core>, [<item:contenttweaker:uranium_fuel_core>*4, <item:minecraft:dried_kelp>*8], [], 200);

<recipetype:create:compacting>.addRecipe("wrapped_core_string", "none", <item:contenttweaker:wrapped_fuel_core>, [<item:contenttweaker:uranium_fuel_core>*4, <tag:items:forge:string>*4], [], 400);

// Decraft
<recipetype:create:mechanical_crafting>.addRecipe("decraft_wrapped_core", <item:contenttweaker:uranium_fuel_core>*4,
[[<item:contenttweaker:wrapped_fuel_core>]]);


print("recipes.zs loaded");