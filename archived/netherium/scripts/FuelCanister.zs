import crafttweaker.api.item.tooltip.ITooltipFunction;
print("FuelCanister.zs loading...");

# Adds tooltips about the accepted items for fuel canisters
val aqua = "\u00A7b";

/*
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("tip");
*/

// Accepted Fuels
<item:fuel_canister:fuel_canister>.anyDamage().addTooltip(aqua + "List of accepted fuels (hold shift):" + aqua + "\nEach one fills equal to its burn time");

<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Bucket of Blazing Blood");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Lava Bucket");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Block of Anthracite");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Block of (Char)coal");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Block of Lignite");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Blaze Rod");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Anthracite");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("(Char)coal");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Lignite");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Blaze Powder");
<item:fuel_canister:fuel_canister>.anyDamage().addShiftTooltip("Mini (Char)coal");


print("FuelCanister.zs loaded");