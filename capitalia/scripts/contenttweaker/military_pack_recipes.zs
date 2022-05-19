# Adds recipes to Military Data Packets since they use a lot of different items
print("military_pack_recipes.zs loading...");
/*
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
mods.extendedcrafting.CompressionCrafting.addRecipe(<output>, <input>, inputCount, <catalyst>, rfCost, rfRate);
*/

recipes.addShapeless(<contenttweaker:datadisk_military>, [<ore:arrow>, <ore:arrow>, <ore:arrow>, <ore:arrow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*2, [<foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*3, [<foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*4, [<foundry:roundap>, <foundry:roundap>, <foundry:roundap>, <foundry:roundap>]);

// TechGuns
// Stone Bullet
recipes.addShapeless(<contenttweaker:datadisk_military>, [<techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>, <techguns:itemshared>]);

### Rounds ###
// Pistol
recipes.addShapeless(<contenttweaker:datadisk_military>*2, [<techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>]);
	// Magazine
recipes.addShapeless(<contenttweaker:datadisk_military>*8, [<techguns:itemshared:11>]);
	// Incendiary
recipes.addShapeless(<contenttweaker:datadisk_military>*6, [<techguns:itemshared:109>]);
	// Incendiary Magazine
recipes.addShapeless(<contenttweaker:datadisk_military>*12, [<techguns:itemshared:113>]);

// Shotgun
recipes.addShapeless(<contenttweaker:datadisk_military>*3, [<techguns:itemshared:2>, <techguns:itemshared:2>, <techguns:itemshared:2>, <techguns:itemshared:2>, <techguns:itemshared:2>]);
	// Incendiary
recipes.addShapeless(<contenttweaker:datadisk_military>*4, [<techguns:itemshared:106>, <techguns:itemshared:106>]);

// Rifle
recipes.addShapeless(<contenttweaker:datadisk_military>*6, [<techguns:itemshared:3>, <techguns:itemshared:3>, <techguns:itemshared:3>, <techguns:itemshared:3>]);
	// Incendiary
recipes.addShapeless(<contenttweaker:datadisk_military>*6, [<techguns:itemshared:110>, <techguns:itemshared:110>]);

// Sniper
recipes.addShapeless(<contenttweaker:datadisk_military>*6, [<techguns:itemshared:4>, <techguns:itemshared:4>, <techguns:itemshared:4>, <techguns:itemshared:4>]);
	// Incendiary
recipes.addShapeless(<contenttweaker:datadisk_military>*6, [<techguns:itemshared:108>, <techguns:itemshared:108>]);
	// Explosive
recipes.addShapeless(<contenttweaker:datadisk_military>*8, [<techguns:itemshared:144>, <techguns:itemshared:144>]);


# Basic Crafing Recipes
// Advanced Rounds
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*8, [<techguns:itemshared:6>, <techguns:itemshared:6>, <techguns:itemshared:6>, <techguns:itemshared:6>]);

### Magazine Recipes ###

// SMG
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*4, [<techguns:itemshared:9>]);
	// Incendiary
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*12, [<techguns:itemshared:112>]);

// Assault Rifle
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*12, [<techguns:itemshared:13>]);
	// Incendiary
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*20, [<techguns:itemshared:115>]);

// LMG
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*20, [<techguns:itemshared:15>]);
	// Incendiary
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*32, [<techguns:itemshared:116>]);

// Minigun Ammo Drum
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*20, [<techguns:itemshared:17>]);
	// Incendiary
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*32, [<techguns:itemshared:114>]);

// Advanced
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*36, [<techguns:itemshared:21>]);

// AS50
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*12, [<techguns:itemshared:19>]);
	// Incendiary
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*20, [<techguns:itemshared:107>]);
	// Explosive
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_military>*32, [<techguns:itemshared:143>]);




print("military_pack_recipes.zs loaded");