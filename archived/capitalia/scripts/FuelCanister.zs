# Adds tooltips to Fuel Canisters, and changes their recipes
/*
<item>.addShiftTooltip("Tooltip");
*/

// Recipes
recipes.remove(<fuelcanister:empty_fuel_canister>);
recipes.addShaped(<fuelcanister:empty_fuel_canister>, [[null, <ore:plankWood>, <ore:ingotBronze>],
                                 				          [<ore:plankWood>, null, <ore:ingotBronze>],
                              				          [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]]);

recipes.addShaped(<fuelcanister:empty_fuel_canister>, [[null, <ore:plankWood>, <minecraft:iron_ingot>],
                                 				          [<ore:plankWood>, null, <minecraft:iron_ingot>],
                              				          [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

// Hold SHIFT for info
<fuelcanister:empty_fuel_canister>.addTooltip("Hold SHIFT for accepted items");
<fuelcanister:fuel_canister:*>.addTooltip("Hold SHIFT for accepted items");

// Empty Canister
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Block of Coal Coke - 160");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Pyrotheum Dust - 120");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Lava Bucket - 100");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Block of (Char)coal - 80");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Thermite - 30");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Bituminous Peat - 21");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Carbon Brick - 20");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Red Coal - 18");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Coal Coke - 16");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Bitumen - 16");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Blaze Rod - 12");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Peat - 10");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("(Char)coal - 8");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Rosin/Tar - 4");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Fuel Pellet - 1");


// Filled Canister
<fuelcanister:fuel_canister:*>.addShiftTooltip("Block of Coal Coke - 160");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Pyrotheum Dust - 120");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Lava Bucket - 100");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Block of (Char)coal - 80");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Thermite - 30");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Bituminous Peat - 21");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Carbon Brick - 20");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Red Coal - 18");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Coal Coke - 16");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Bitumen - 16");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Blaze Rod - 12");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Peat - 10");
<fuelcanister:fuel_canister:*>.addShiftTooltip("(Char)coal - 8");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Rosin/Tar - 4");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Fuel Pellet - 1");