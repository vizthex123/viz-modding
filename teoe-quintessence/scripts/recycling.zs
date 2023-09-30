# Adds recipes to recycle various things
print("recycling.zs loading...");
/*
furnace.removeByName("name");

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);
*/

// Recycle Candles
furnace.addRecipe("recycle_candles", <item:minecraft:honeycomb>, <tag:items:minecraft:candles>, 0.5, 200);
 
 // Recycle Waystones
<recipetype:thermal:pulverizer>.addRecipe("pulverize_waystone", [<item:create:powdered_obsidian>*4, <item:create:powdered_obsidian>*2 % 50, <item:waystones:warp_dust>*2],  <tag:items:teoe:waystones>, 0, 4000);
<recipetype:create:crushing>.addRecipe("crush_waystone",  [<item:create:powdered_obsidian>*4, <item:create:powdered_obsidian>*2 % 50, <item:waystones:warp_dust>*2],  <tag:items:teoe:waystones>, 6);

# Smelt items into Scrap
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

val small_scrap = <item:kubejs:small_iron_scrap>;
val scrap = <item:kubejs:iron_scrap>;
val nugget = <item:minecraft:iron_nugget>;

furnace.addRecipe("recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:teoe:meltable_copper>.asIIngredient().anyDamage(), 0, 200);
blastFurnace.addRecipe("blast_recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:teoe:meltable_copper>.asIIngredient().anyDamage(), 0, 100);

furnace.addRecipe("recycle_small_iron_item", nugget, <tag:items:teoe:meltable_iron_small>.asIIngredient().anyDamage(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_small_iron_item", nugget, <tag:items:teoe:meltable_iron_small>.asIIngredient().anyDamage(), 0.1, 100);

furnace.addRecipe("recycle_iron_item", small_scrap, <tag:items:teoe:meltable_iron>.asIIngredient().anyDamage(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_iron_item", small_scrap, <tag:items:teoe:meltable_iron>.asIIngredient().anyDamage(), 0.1, 100);

furnace.addRecipe("recycle_big_iron_item", scrap, <tag:items:teoe:meltable_iron_big>.asIIngredient().anyDamage(), 0.2, 200);
blastFurnace.addRecipe("blast_recycle_big_iron_item", scrap, <tag:items:teoe:meltable_iron_big>.asIIngredient().anyDamage(), 0.2, 100);

furnace.addRecipe("recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:teoe:meltable_gold>.asIIngredient().anyDamage(), 0.3, 200);
blastFurnace.addRecipe("blast_recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:teoe:meltable_gold>.asIIngredient().anyDamage(), 0.3, 100);

blastFurnace.addRecipe("blast_recycle_diamond_item", <item:kubejs:small_diamond_scrap>, <tag:items:teoe:meltable_diamond>.asIIngredient().anyDamage(), 0.5, 100);

blastFurnace.addRecipe("blast_recycle_netherite_item", <item:minecraft:netherite_scrap>, <tag:items:teoe:meltable_netherite>.asIIngredient().anyDamage(), 1.0, 100);


# Modded items
furnace.addRecipe("recycle_rose_gold_item", <item:kubejs:small_copper_scrap>, <tag:items:teoe:meltable_rose_gold>.asIIngredient().anyDamage(), 0.75, 200);
blastFurnace.addRecipe("blast_recycle_rose_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:teoe:meltable_rose_gold>.asIIngredient().anyDamage(), 0.75, 100);

blastFurnace.addRecipe("blast_recycle_platinum_item", <item:kubejs:small_platinum_scrap>, <tag:items:teoe:meltable_platinum>.asIIngredient().anyDamage(), 1.0, 100);

blastFurnace.addRecipe("blast_recycle_lumium_item", <item:kubejs:small_lumium_scrap>, <tag:items:teoe:meltable_lumium>.asIIngredient(), 2.0, 100);


	# Twilight Forest item
furnace.addRecipe("recycle_ironwood_item", <item:kubejs:small_ironwood_scrap>, <tag:items:teoe:meltable_ironwood>.asIIngredient().anyDamage(), 1.5, 200);
blastFurnace.addRecipe("blast_recycle_ironwood_item", <item:kubejs:small_ironwood_scrap>, <tag:items:teoe:meltable_ironwood>.asIIngredient().anyDamage(), 1.5, 100);

furnace.addRecipe("recycle_fiery_item", <item:kubejs:small_fiery_scrap>, <tag:items:teoe:meltable_fiery>.asIIngredient().anyDamage(), 2.0, 200);
blastFurnace.addRecipe("blast_recycle_fiery_item", <item:kubejs:small_fiery_scrap>, <tag:items:teoe:meltable_fiery>.asIIngredient().anyDamage(), 2.0, 100);

furnace.addRecipe("recycle_knightmetal_item", <item:kubejs:small_knightmetal_scrap>, <tag:items:teoe:meltable_knightmetal>.asIIngredient().anyDamage(), 3.0, 200);
blastFurnace.addRecipe("blast_recycle_knightmetal_item", <item:kubejs:small_knightmetal_scrap>, <tag:items:teoe:meltable_knightmetal>.asIIngredient().anyDamage(), 3.0, 100);

/*
# Smelt all Scrap & meltable items in a Redstone Furnace
<recipetype:thermal:furnace>.addRecipe("redstone_diamond_item", <item:kubejs:diamond_scrap>, <tag:items:teoe:meltable_diamond>.asIIngredient().anyDamage(), 0.5, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_netherite_item", <item:minecraft:netherite_scrap>, <tag:items:teoe:meltable_netherite>.asIIngredient().anyDamage(), 1.0, 2000);

<recipetype:thermal:furnace>.addRecipe("redstone_platinum_item", <item:kubejs:diamond_scrap>, <tag:items:teoe:meltable_platinum>.asIIngredient().anyDamage(), 1.0, 2000);

<recipetype:thermal:furnace>.addRecipe("redstone_lumium_item", <item:kubejs:diamond_scrap>, <tag:items:teoe:meltable_lumium>.asIIngredient(), 2.0, 2000);

<recipetype:thermal:furnace>.addRecipe("redstone_diamond_scrap", <item:minecraft:diamond>, <item:kubejs:diamond_scrap>, 0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_platinum_scrap", <item:ob_core:platinum_ingot>, <item:kubejs:platinum_scrap>, 0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_lumium_scrap", <item:thermal:lumium_ingot>, <item:kubejs:lumium_scrap>, 0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_fiery_scrap", <item:twilightforest:fiery_ingot>, <item:kubejs:fiery_scrap>, 0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_ironwood_scrap", <item:twilightforest:ironwood_ingot>, <item:kubejs:ironwood_scrap>, 0, 2000);
<recipetype:thermal:furnace>.addRecipe("redstone_knightmetal_scrap", <item:twilightforest:knightmetal_ingot>, <item:kubejs:knightmetal_scrap>, 0, 2000);
*/

# Process Prismarine items into Prismarine Shards & Crystals
furnace.addRecipe("recycle_prismarine_item", <item:minecraft:prismarine_crystals>, <tag:items:teoe:meltable_prismarine>.asIIngredient().anyDamage(), 2.0, 200);
blastFurnace.addRecipe("blast_recycle_prismarine_item", <item:minecraft:prismarine_shard>, <tag:items:teoe:meltable_prismarine>.asIIngredient().anyDamage(), 2.0, 100);

// Pulverize Naga Scale armour into Scales
<recipetype:thermal:pulverizer>.addRecipe("pulverize_naga_scale_armour", [<item:twilightforest:naga_scale>*2, <item:twilightforest:naga_scale> % 50], <item:twilightforest:naga_chestplate>|<item:twilightforest:naga_leggings>, 0, 4000);
<recipetype:create:crushing>.addRecipe("crush_naga_scale_armour",  [<item:twilightforest:naga_scale>*3, <item:twilightforest:naga_scale> % 50], <item:twilightforest:naga_chestplate>|<item:twilightforest:naga_leggings>, 6);

// Saw Arctic Armour into Arctic Fur
<recipetype:thermal:sawmill>.addRecipe("saw_arctic_armour", [<item:twilightforest:arctic_fur>*2, <item:twilightforest:arctic_fur> % 50], <item:twilightforest:arctic_helmet>|<item:twilightforest:arctic_chestplate>|<item:twilightforest:arctic_leggings>|<item:twilightforest:arctic_boots>, 4000);
<recipetype:create:cutting>.addRecipe("cut_arctic_armour", <item:twilightforest:arctic_fur>*3, <item:twilightforest:arctic_helmet>|<item:twilightforest:arctic_chestplate>|<item:twilightforest:arctic_leggings>|<item:twilightforest:arctic_boots>, 6);

// Saw Alpha Yeti Armour into Alpha Yeti Fur
<recipetype:thermal:sawmill>.addRecipe("saw_yeti_armour", [<item:twilightforest:alpha_yeti_fur>*2, <item:twilightforest:alpha_yeti_fur> % 50], <item:twilightforest:yeti_helmet>|<item:twilightforest:yeti_chestplate>|<item:twilightforest:yeti_leggings>|<item:twilightforest:yeti_boots>, 4000);
<recipetype:create:cutting>.addRecipe("cut_yeti_armour", <item:twilightforest:arctic_fur>*3, <item:twilightforest:yeti_helmet>|<item:twilightforest:yeti_chestplate>|<item:twilightforest:yeti_leggings>|<item:twilightforest:yeti_boots>, 6);


print("recycling.zs loaded");