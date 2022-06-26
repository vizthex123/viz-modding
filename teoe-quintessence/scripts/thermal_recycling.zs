# Adds recycling recipes to the Induciton Smelter from Thermal Expansion

import crafttweaker.api.tag.MCTag;

print("thermal_recycling.zs loading...");

# Horse Armours
// Iron
<recipetype:thermal:smelter>.addRecipe("smelt_iron_horse_armour", [<item:minecraft:iron_ingot>*3 % 75], [<item:minecraft:iron_horse_armor>], 10, 3000);

// Gold
<recipetype:thermal:smelter>.addRecipe("smelt_gold_horse_armour", [<item:minecraft:gold_ingot>*3 % 75], [<item:minecraft:golden_horse_armor>], 20, 3500);

// Diamond
<recipetype:thermal:smelter>.addRecipe("smelt_diamond_horse_armour", [<item:minecraft:diamond>*3 % 75], [<item:minecraft:diamond_horse_armor>], 30, 4000);

// Ametrine
<recipetype:thermal:smelter>.addRecipe("smelt_ametrine_horse_armour", [<item:byg:ametrine_gems>*3 % 75], [<item:byg:ametrine_horse_armor>], 30, 6000);

// Pendorite
<recipetype:thermal:smelter>.addRecipe("smelt_pendorite_horse_armour", [<item:byg:pendorite_ingot>*3 % 75], [<item:byg:ametrine_horse_armor>], 30, 8000);
############################################################

# Bell
<recipetype:thermal:smelter>.addRecipe("smelt_bell", [<item:minecraft:gold_ingot>*2 % 100], [<item:minecraft:bell>], 10, 2000);

# Clock
<recipetype:thermal:smelter>.addRecipe("smelt_clock", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:gold_nugget>*6 % 50], [<item:minecraft:clock>], 0, 2000);

# Compass
<recipetype:thermal:smelter>.addRecipe("smelt_compass", [<item:minecraft:iron_ingot>*2 % 100, <item:minecraft:iron_nugget>*6 % 50], [<item:minecraft:compass>], 0, 2000);

# Spyglass
<recipetype:thermal:smelter>.addRecipe("smelt_spyglass", [<item:minecraft:copper_ingot> % 100, <item:minecraft:amethyst_shard> % 50], [<item:minecraft:spyglass>], 0, 2000);

# Flint & Steel
<recipetype:thermal:smelter>.addRecipe("smelt_fas", [<item:minecraft:iron_nugget>*6 % 100], [<item:minecraft:flint_and_steel>.anyDamage()], 0, 1000);

# Rose Gold Armour
<recipetype:thermal:smelter>.addRecipe("smelt_rose_helmet", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_helmet>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_chestplate", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_chestplate>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_leggings", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_leggings>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_rose_boots", [<item:minecraft:gold_ingot> % 100, <item:minecraft:copper_ingot> % 50], [<item:additionaladditions:rose_gold_boots>.anyDamage()], 0, 2000);

# Chainmail Armour
<recipetype:thermal:smelter>.addRecipe("smelt_chain_helmet", [<item:minecraft:iron_ingot> % 100, <item:minecraft:iron_ingot> % 50], [<item:minecraft:chainmail_helmet>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_chestplate", [<item:minecraft:iron_ingot>*2 % 100], [<item:minecraft:chainmail_chestplate>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_leggings", [<item:minecraft:iron_ingot> % 100, <item:minecraft:iron_ingot> % 75], [<item:minecraft:chainmail_leggings>.anyDamage()], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("smelt_chain_boots", [<item:minecraft:iron_ingot> % 100], [<item:minecraft:chainmail_boots>.anyDamage()], 0, 2000);

# Depth Meters
<recipetype:thermal:smelter>.addRecipe("smelt_depth_meter", [<item:minecraft:copper_ingot>*4 % 75, <item:thermal:copper_nugget>*7 % 65, <item:minecraft:redstone> % 50], [<item:additionaladditions:depth_meter>], 0, 4000);

# Gold Ring
<recipetype:thermal:smelter>.addRecipe("smelt_gold_ring", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:gold_nugget>*6 % 75], [<item:additionaladditions:gold_ring>], 0, 4000);

# Iron Ring
<recipetype:thermal:smelter>.addRecipe("smelt_iron_ring", [<item:minecraft:iron_ingot>*2 % 100, <item:minecraft:iron_nugget>*2 % 100], [<item:enigmaticlegacy:iron_ring>], 0, 4000);

# Exquisite Ring
<recipetype:thermal:smelter>.addRecipe("smelt_fancy_gold_ring", [<item:minecraft:gold_ingot>*2 % 100, <item:minecraft:gold_nugget>*2 % 100, <item:minecraft:iron_ingot>*2 % 50, <item:minecraft:iron_nugget>*2 % 50], [<item:enigmaticlegacy:gem_ring>], 0, 6000);

# Magnetic Ring
<recipetype:thermal:smelter>.addRecipe("smelt_magnet_ring", [<item:minecraft:gold_ingot> % 75, <item:minecraft:iron_ingot>*4 % 100, <item:minecraft:diamond> % 25, <item:minecraft:redstone> % 70], [<item:enigmaticlegacy:magnet_ring>], 0, 8000);

# Recycle Spent Filters
<recipetype:thermal:smelter>.addRecipe("recycle_filters", [<item:deepresonance:filter_material> % 50], [<item:deepresonance:spent_filter_material>, <item:kubejs:lime>], 0, 8000);


print("thermal_recycling.zs loaded");