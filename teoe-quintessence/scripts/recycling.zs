# Adds recipes to recycle various things
print("recycling.zs loading...");
/*
furnace.removeByName("name");
furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

// Recycle Candles
furnace.addRecipe("recycle_candles", <item:minecraft:honeycomb>, <tag:items:minecraft:candles>, 0.5, 200);

# Smelt items into Scrap
furnace.removeByName("minecraft:iron_nugget_from_smelting");
furnace.removeByName("minecraft:gold_nugget_from_smelting");
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");

var nugget = <item:minecraft:iron_nugget>;

furnace.addRecipe("recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:teoe:meltable_copper>.asIIngredient().anyDamage(), 0, 200);
blastFurnace.addRecipe("blast_recycle_copper_item", <item:kubejs:small_copper_scrap>, <tag:items:teoe:meltable_copper>.asIIngredient().anyDamage(), 0, 100);

furnace.addRecipe("recycle_metal_item", <item:kubejs:small_iron_scrap>, <tag:items:teoe:meltable_metal>.asIIngredient().anyDamage(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_metal_item", <item:kubejs:small_iron_scrap>, <tag:items:teoe:meltable_metal>.asIIngredient().anyDamage(), 0.1, 100);

furnace.addRecipe("recycle_small_metal_item", nugget, <tag:items:teoe:meltable_metal_small>.asIIngredient(), 0.1, 200);
blastFurnace.addRecipe("blast_recycle_small_metal_item", nugget, <tag:items:teoe:meltable_metal_small>.asIIngredient(), 0.1, 100);

furnace.addRecipe("recycle_big_metal_item", <item:kubejs:iron_scrap>, <tag:items:teoe:meltable_metal_big>.asIIngredient().anyDamage(), 0.2, 200);
blastFurnace.addRecipe("blast_recycle_big_metal_item", <item:kubejs:iron_scrap>, <tag:items:teoe:meltable_metal_big>.asIIngredient().anyDamage(), 0.2, 100);

furnace.addRecipe("recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:teoe:meltable_gold>.asIIngredient().anyDamage(), 0.3, 200);
blastFurnace.addRecipe("blast_recycle_gold_item", <item:kubejs:small_gold_scrap>, <tag:items:teoe:meltable_gold>.asIIngredient().anyDamage(), 0.3, 100);

blastFurnace.addRecipe("blast_recycle_diamond_item", <item:kubejs:small_diamond_scrap>, <tag:items:teoe:meltable_diamond>.asIIngredient().anyDamage(), 0.5, 150);
blastFurnace.addRecipe("blast_recycle_netherite_item", <item:minecraft:netherite_scrap>, <tag:items:teoe:meltable_netherite>.asIIngredient().anyDamage(), 1.0, 200);

blastFurnace.addRecipe("blast_recycle_lumium_item", <item:kubejs:small_lumium_scrap>, <tag:items:teoe:meltable_lumium>.asIIngredient(), 2.0, 400);


# Recycle Twilight Forest item
furnace.addRecipe("recycle_ironwood_item", <item:kubejs:small_ironwood_scrap>, <tag:items:teoe:meltable_ironwood>.asIIngredient().anyDamage(), 1.5, 200);
blastFurnace.addRecipe("blast_recycle_ironwood_item", <item:kubejs:small_ironwood_scrap>, <tag:items:teoe:meltable_ironwood>.asIIngredient().anyDamage(), 1.5, 100);

furnace.addRecipe("recycle_fiery_item", <item:kubejs:small_fiery_scrap>, <tag:items:teoe:meltable_fiery>.asIIngredient().anyDamage(), 2.0, 200);
blastFurnace.addRecipe("blast_recycle_fiery_item", <item:kubejs:small_fiery_scrap>, <tag:items:teoe:meltable_fiery>.asIIngredient().anyDamage(), 2.0, 100);

furnace.addRecipe("recycle_knightmetal_item", <item:kubejs:small_knightmetal_scrap>, <tag:items:teoe:meltable_knightmetal>.asIIngredient().anyDamage(), 3.0, 200);
blastFurnace.addRecipe("blast_recycle_knightmetal_item", <item:kubejs:small_knightmetal_scrap>, <tag:items:teoe:meltable_knightmetal>.asIIngredient().anyDamage(), 3.0, 100);

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