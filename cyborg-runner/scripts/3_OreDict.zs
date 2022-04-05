# Adds OreDict entries to various items
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

print("3_OreDict.zs loading...");

// Arrows
val arrow = <ore:arrow>;

arrow.add(<simplyarrows:arrow_flint>);
arrow.add(<simplyarrows:arrow_bone>);
arrow.add(<simplyarrows:arrow_iron>);
arrow.add(<simplyarrows:arrow_flame>);
arrow.add(<simplyarrows:arrow_tnt>);


// Seeds
val seed = <ore:listAllseed>;

seed.add(<minecraft:wheat_seeds>);
seed.add(<minecraft:pumpkin_seeds>);
seed.add(<minecraft:melon_seeds>);
seed.add(<minecraft:beetroot_seeds>);
seed.add(<xlfoodmod:rice_seeds>);
seed.add(<xlfoodmod:pepper_seeds>);
seed.add(<xlfoodmod:corn_seeds>);
seed.add(<xlfoodmod:cucumber_seeds>);
seed.add(<xlfoodmod:lettuce_seeds>);
seed.add(<xlfoodmod:tomato_seeds>);
seed.add(<xlfoodmod:strawberry_seeds>);

// Fruits
// Mostly for basic cooking research
val fruit = <ore:listAllfruit>;

fruit.add(<byg:strawberry>);
fruit.add(<xlfoodmod:strawberry>);
fruit.add(<byg:baobabfruit>);
fruit.add(<byg:greenapple>);
fruit.add(<byg:silver_apple>);
fruit.add(<minecraft:apple>);
fruit.add(<minecraft:golden_apple>);
fruit.add(<minecraft:golden_apple:1>);


// Advanced Pie
// For the Special Cooking quest
val pie = <ore:advPie>;

pie.add(<xlfoodmod:apple_pie>);
pie.add(<xlfoodmod:cheese_pie>);
pie.add(<xlfoodmod:chicken_pot_pie>);
pie.add(<xlfoodmod:chocolate_pie>);
pie.add(<xlfoodmod:bacon_pie>);
pie.add(<xlfoodmod:fish_pie>);


// Vegetables
// Mainly for the chicken pot pie recipe
val veg = <ore:listAllvegetable>;

veg.add(<minecraft:carrot>);
veg.add(<minecraft:beetroot>);
veg.add(<xlfoodmod:cucumber>);
veg.add(<xlfoodmod:lettuce>);
veg.add(<xlfoodmod:onion>);
veg.add(<xlfoodmod:tomato>);
veg.add(<xlfoodmod:raw_corn>);

// Raw Meat
val rmeat = <ore:listAllmeatraw>;

rmeat.add(<minecraft:porkchop>);
rmeat.add(<minecraft:fish>);
rmeat.add(<minecraft:fish:1>);
rmeat.add(<minecraft:beef>);
rmeat.add(<minecraft:chicken>);
rmeat.add(<minecraft:rabbit>);
rmeat.add(<minecraft:mutton>);
rmeat.add(<glacidus:raw_porcali_meat>);
rmeat.add(<natura:edibles>);


// Cooked Meat
val cmeat = <ore:listAllmeatcooked>;

cmeat.add(<minecraft:cooked_beef>);
cmeat.add(<minecraft:cooked_porkchop>);
cmeat.add(<minecraft:cooked_fish>);
cmeat.add(<minecraft:cooked_fish:1>);
cmeat.add(<byg:cookedflesh>);
cmeat.add(<byg:cookedpufferfish>);
cmeat.add(<byg:cookedtropicalfish>);
cmeat.add(<minecraft:cooked_chicken>);
cmeat.add(<minecraft:cooked_rabbit>);
cmeat.add(<minecraft:cooked_mutton>);
cmeat.add(<natura:edibles:1>);
cmeat.add(<glacidus:grilled_porcali_meat>);
cmeat.add(<xlfoodmod:cooked_chicken_wing>);


// Berries as dye
<ore:dyeRed>.add(<natura:edibles:2>);
<ore:dyeBlue>.add(<natura:edibles:3>);
<ore:dyeBlack>.add(<natura:edibles:4>);
<ore:dyeOrange>.add(<natura:edibles:5>);
<ore:dyeLime>.add(<natura:edibles:6>);
<ore:dyeGray>.add(<natura:edibles:7>);
<ore:dyeCyan>.add(<natura:edibles:8>);
<ore:dyeGreen>.add(<natura:edibles:9>);



// Remove the chest entry for Shulker Boxes
<ore:chest>.remove(<minecraft:white_shulker_box>);
<ore:chest>.remove(<minecraft:orange_shulker_box>);
<ore:chest>.remove(<minecraft:magenta_shulker_box>);
<ore:chest>.remove(<minecraft:light_blue_shulker_box>);
<ore:chest>.remove(<minecraft:yellow_shulker_box>);
<ore:chest>.remove(<minecraft:lime_shulker_box>);
<ore:chest>.remove(<minecraft:pink_shulker_box>);
<ore:chest>.remove(<minecraft:gray_shulker_box>);
<ore:chest>.remove(<minecraft:silver_shulker_box>);
<ore:chest>.remove(<minecraft:cyan_shulker_box>);
<ore:chest>.remove(<minecraft:purple_shulker_box>);
<ore:chest>.remove(<minecraft:blue_shulker_box>);
<ore:chest>.remove(<minecraft:brown_shulker_box>);
<ore:chest>.remove(<minecraft:green_shulker_box>);
<ore:chest>.remove(<minecraft:red_shulker_box>);
<ore:chest>.remove(<minecraft:black_shulker_box>);


// Add Chest & Chest Wood to various blocks
val chest = <ore:chest>;
val chestw = <ore:chestWood>;

chest.add(<extrautils2:largishchest>);
chest.add(<glacidus:underground_chest>);
chest.add(<ironchest:iron_chest:3>);
chest.add(<ironchest:iron_chest>);

chestw.add(<extrautils2:largishchest>);
chestw.add(<glacidus:underground_chest>);


// Misc
/*
<ore:dustSalt>.add(<alchemistry:mineral_salt>);
<ore:itemSalt>.add(<alchemistry:mineral_salt>);
*/
<ore:workbench>.add(<sct:stone_crafting_table>);
<ore:slimeball>.add(<thermalfoundation:material:832>);
<ore:slimeball>.add(<thermalfoundation:material:833>);
<ore:stickWood>.add(<byg:stonestick>);
<ore:dyeGreen>.add(<contenttweaker:slime_green>);
<ore:dyeLime>.add(<contenttweaker:slime_green>);
<ore:string>.add(<natura:materials:7>);
<ore:listAllgrain>.add(<minecraft:wheat>);
<ore:cropStrawberry>.add(<byg:strawberry>);
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);
<ore:dirt>.add(<glacidus:lumicia_dirt>);



print("3_OreDict.zs loaded");