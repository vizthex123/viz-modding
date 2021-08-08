# Adds recipes for Tech Guns' machines, or changes recipes for its items
/*
mods.thermalexpansion.Centrifuge.addRecipeMob(IEntityDefinition entity, WeightedItemStack[] outputs, @Nullable ILiquidStack fluid, int energy, int xp);
*/

print("TechGuns.zs loading...");

// Process Cyberdemons in a Centrifugal Seperator
mods.thermalexpansion.Centrifuge.addRecipeMob(<entity:techguns:cyberdemon>, [<techguns:itemshared:69>*2%75, <thermalfoundation:material:771>%50, <techguns:netherblaster>%10], <fluid:experience>*250, 6000, 100);

print("TechGuns.zs loaded");