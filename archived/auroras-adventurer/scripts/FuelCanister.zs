# Lists items accepted by the Fuel Canister
# Also lists their fuel value
// Basically only so I didn't spam renames_tooltips.zs lol
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

print("Loading FuelCanister.zs...");

// Hold SHIFT for info
<fuelcanister:empty_fuel_canister>.addTooltip("Hold SHIFT for accepted items");
<fuelcanister:fuel_canister:*>.addTooltip("Hold SHIFT for accepted items");

// Empty Canister
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Aeternalis Fuel - 512");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Alchemical Fuel Block - 288");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Block of Coal Coke - 160");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Mobius Fuel - 128");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Pyrotheum Dust - 120");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Lava Bucket - 100");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Aurorian Coal Block - 90");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Block of (Char)coal - 80");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Alchemical Coal - 32");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Coal Coke - 16");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Bitumen - 16");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Blaze Rod - 12");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Aurorian Coal - 9");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Weeping Willow Sap - 8");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Coal/Charcoal - 8");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Rosin/Tar - 4");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Tiny (Char)Coal - 1");
<fuelcanister:empty_fuel_canister>.addShiftTooltip("Aurorian Coal Nugget - 1");

// Filled Canister (any durability)
<fuelcanister:fuel_canister:*>.addShiftTooltip("Aeternalis Fuel - 512");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Alchemical Fuel Block - 288");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Block of Coal Coke - 160");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Mobius Fuel - 128");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Pyrotheum Dust - 120");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Lava Bucket - 100");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Aurorian Coal Block - 90");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Block of (Char)coal - 80");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Alchemical Coal - 32");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Coal Coke - 16");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Bitumen - 16");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Blaze Rod - 12");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Aurorian Coal - 9");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Weeping Willow Sap - 8");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Coal/Charcoal - 8");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Rosin/Tar - 4");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Tiny (Char)Coal - 1");
<fuelcanister:fuel_canister:*>.addShiftTooltip("Aurorian Coal Nugget - 1");

print("FuelCanister.zs loaded");