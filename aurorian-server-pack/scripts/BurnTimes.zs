# Changes/adds burn times to items

print("Loading BurnTimes.zs...");

/*
furnace.setFuel(<item>, burntime*);
* 200 time = 1 item smelted
*/

// Torches
furnace.setFuel(<theaurorian:silentwoodtorch>, 450);
furnace.setFuel(<thebetweenlands:sulfur_torch>, 400);
furnace.setFuel(<tconstruct:stone_torch>, 400);


// Silentwood tools
furnace.setFuel(<theaurorian:silentwoodpickaxe:*>, 300);
furnace.setFuel(<theaurorian:silentwoodshovel:*>, 300);
furnace.setFuel(<theaurorian:silentwoodsword:*>, 300);
furnace.setFuel(<theaurorian:silentwoodhoe:*>, 300);
furnace.setFuel(<theaurorian:silentwoodaxe:*>, 300);

// Fix Aurorian Coal Blocks & Silentwood
furnace.setFuel(<theaurorian:auroriancoalblock>, 18000);
furnace.setFuel(<theaurorian:silentwoodsapling>, 100);

// TConstruct Items
// Shards are 1/3 of material's burn time, rounded down
furnace.setFuel(<tconstruct:wood_rail>, 500);
furnace.setFuel(<tconstruct:wood_rail_trapdoor>, 500);

furnace.setFuel(<tconstruct:shard>.withTag({Material: "cactus"}), 50);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "wood"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "silentwood"}), 66);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "xu_magical_wood"}), 100);

/*
furnace.setFuel(<tconstruct:shard>.withTag({Material: "livingwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "darkwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "fusewood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "bloodwood_plustic"}), 100);
furnace.setFuel(<tconstruct:shard>.withTag({Material: "ghostwood_plustic"}), 100);
*/

print("BurnTimes.zs loaded");