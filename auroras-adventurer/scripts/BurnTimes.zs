# Changes/adds burn times to items

print("Loading BurnTimes.zs...");

/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/
/*
// OreDict
// I can't believe I didn't realize I could use this sooner....
// It seems to be broken though? Weird....
furnace.setFuel(<ore:treeSapling>, 100);
furnace.setFuel(<ore:treeLeaves>, 150);
*/

// Remove time from RC's technical parts to prevent JEI spam (idk why they're even there in the first place)
furnace.setFuel(<reccomplex:inventory_generation_tag>, 0);
furnace.setFuel(<reccomplex:inventory_generation_single_tag>, 0);
furnace.setFuel(<reccomplex:inventory_generation_component_tag>, 0);
furnace.setFuel(<reccomplex:artifact_generation_tag>, 0);
furnace.setFuel(<reccomplex:book_generation_tag>, 0);

// Silentwood tools
furnace.setFuel(<theaurorian:silentwoodpickaxe:*>, 300);
furnace.setFuel(<theaurorian:silentwoodshovel:*>, 300);
furnace.setFuel(<theaurorian:silentwoodsword:*>, 300);
furnace.setFuel(<theaurorian:silentwoodhoe:*>, 300);
furnace.setFuel(<theaurorian:silentwoodaxe:*>, 300);

// Fix Aurorian Coal Blocks
furnace.setFuel(<theaurorian:auroriancoalblock>, 18000);

// Misc
furnace.setFuel(<theaurorian:silentwoodsapling>, 100);
furnace.setFuel(<minecraft:blaze_powder>, 480);
furnace.setFuel(<minecraft:fireworks>, 6400);
furnace.setFuel(<thermalfoundation:material:22>, 400);
furnace.setFuel(<actuallyadditions:block_misc:4>, 400);
furnace.setFuel(<netherex:thornstalk>, 150);
furnace.setFuel(<minecraft:armor_stand>, 100);
furnace.setFuel(<minecraft:fire_charge>, 750);





// TConstruct Items
// Shards are 1/3 of material's burn time, rounded down
furnace.setFuel(<tconstruct:wood_rail>, 500);
furnace.setFuel(<tconstruct:wood_rail_trapdoor>, 500);

furnace.setFuel(<tconstruct:shard>.withTag({Material: "cactus"}), 50);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "silentwood"}), 66);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "wood"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "firewood"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "livingwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "darkwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "fusewood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "bloodwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "ghostwood_plustic"}), 100);

print("BurnTimes.zs loaded");