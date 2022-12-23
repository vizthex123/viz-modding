# Removes recipes

print("1-removed.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# Coin Minter
craftingTable.remove(<item:lightmanscurrency:coinmint>);

# Smelting Uraninite
furnace.removeByName("powah:smelting/uraninite_from_raw");

# Duplicate egg smelting recipes
furnace.removeByName("additionaladditions:fried_egg");
smoker.removeByName("food_enhancements:fried_egg");

# Duplicate item recipes
craftingTable.removeByName("minecraft:comparator");

print("1-removed.zs loaded");