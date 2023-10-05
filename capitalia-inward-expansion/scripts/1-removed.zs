# Removes recipes
import mods.jeitweaker.Jei;

print("1-removed.zs loading...");

/*
furnace.remove(<item>);
furnace.removeByName(<item>);

craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# Smelting Irradium
furnace.removeByName("enlightened_end:smelt_raw_irradium");

# Smelting Tungsten
furnace.removeByName("bluepower:furnace/tungsten_ingot_from_raw_tungsten");

# Dimensional Shards recipe
craftingTable.remove(<item:rftoolsbase:dimensionalshard>);

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
#Jei.hideCategory(<resource:lightmanscurrency:coinmint>);

print("1-removed.zs loaded");