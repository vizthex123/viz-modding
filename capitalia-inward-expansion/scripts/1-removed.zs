# Removes recipes
import mods.jeitweaker.Jei;

print("1-removed.zs loading...");

/*
furnace.remove(<item>);
furnace.removeByName("name");

craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# Smelt gear into nuggets
furnace.removeByName("quark:tools/smelting/trowel_to_iron_nugget");
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");

# Duplicate comparator recipe
craftingTable.removeByName("ae2:misc/vanilla_comparator");

# Remove leftover recipes for Solar Flux's panels
craftingTable.removeByName("solarflux:sp_1");
craftingTable.removeByName("solarflux:sp_2");
craftingTable.removeByName("solarflux:sp_3");
craftingTable.removeByName("solarflux:sp_4");
craftingTable.removeByName("solarflux:sp_5");
craftingTable.removeByName("solarflux:sp_6");
craftingTable.removeByName("solarflux:sp_7");
craftingTable.removeByName("solarflux:sp_8");

# Slimeballs from Suspicious Substance
craftingTable.removeByName("food_enhancements:slime_balls");

# Smelting Irradium
furnace.removeByName("enlightened_end:smelt_raw_irradium");

# Dimensional Shards recipe
craftingTable.remove(<item:rftoolsbase:dimensionalshard>);

# Remove the missing tag recipe from Enlightened
craftingTable.removeByName("enlightened_end:cerulean_planks");

# Bluepower's Nuggets
<tag:items:forge:nuggets/zinc>.remove(<item:bluepower:zinc_nugget>);
<tag:items:forge:nuggets/brass>.remove(<item:bluepower:brass_nugget>);
<tag:items:forge:nuggets/copper>.remove(<item:bluepower:copper_nugget>);

# Create Deco's Netherite Nugget
craftingTable.remove(<item:createdeco:netherite_nugget>);
<tag:items:forge:nuggets/netherite>.remove(<item:createdeco:netherite_nugget>);
craftingTable.removeByName("createdeco:netherite_ingot");

# Duplicate egg smelting recipes
# Smelting gives boiled, smoking gives fried
furnace.removeByName("additionaladditions:fried_egg");
smoker.removeByName("food_enhancements:fried_egg");

# Swords from WS Tweaks
craftingTable.remove(<item:wstweaks:lava_blade>);
craftingTable.remove(<item:wstweaks:blaze_blade>);

# Coin Minter
craftingTable.remove(<item:lightmanscurrency:coinmint>);
Jei.hideIngredient(<item:lightmanscurrency:coinmint>);

print("1-removed.zs loaded");