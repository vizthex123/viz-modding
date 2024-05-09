# Changes TConstruct recipes
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
furnace.remove(<item>);
furnace.addRecipe(<output>, <input>, XP[F]);

mods.tconstruct.Melting.addRecipe(<fluid> * AMOUNT (144 per ingot), <input>, TEMP);
mods.tconstruct.Casting.addTableRecipe(<output>, <fluid input> * amount, <input>, cast, false, 20);
above: true/false for consume cast, time in ticks to finish
*/
print("Loading tinkers.zs...");

// Alternate Ball of Moss recipe
recipes.addShapeless(<tconstruct:materials:18>*2, [<elementaristics:moss_everchanging>, <elementaristics:moss_everchanging>, <elementaristics:moss_everchanging>, <elementaristics:moss_everchanging>]);

// List of Smeltery Fuels
<minecraft:lava_bucket>.addTooltip(format.darkAqua("Can be used as Smeltery Fuel"));
<minecraft:lava_bucket>.addTooltip(format.darkAqua("Temperature: 1,300K"));

<forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}).addTooltip(format.darkAqua("Can be used as Smeltery Fuel"));
<forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}).addTooltip(format.darkAqua("Temperature: 4,000K"));
/*
<forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000}).addTooltip(format.darkAqua("Can be used as Smeltery Fuel"));
<forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000}).addTooltip(format.darkAqua("Temperature: 1,000K"));

// Add smeltery fuels
// Fiery Essence - 80 consumed, lasts for 30 seconds (temp should be 1,000)
mods.tconstruct.Fuel.registerFuel(<liquid:fiery_essence> * 80, 600);
*/
// Chainmail Armor
mods.tconstruct.Melting.addRecipe(<liquid:iron>*288, <minecraft:chainmail_helmet:*>, 650);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*504, <minecraft:chainmail_chestplate:*>, 675);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*432, <minecraft:chainmail_leggings:*>, 660);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*244, <minecraft:chainmail_boots:*>, 625);

// Anvils
mods.tconstruct.Melting.addRecipe(<liquid:iron>*3312, <minecraft:anvil:1>, 975);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*2160, <minecraft:anvil:2>, 935);

// All Minecarts
// Hopper one gives 2x since you need 2x the iron, but has a higher melting point
mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <botania:poolminecart>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <minecraft:tnt_minecart>, 485);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <minecraft:chest_minecart>, 495);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <minecraft:furnace_minecart>, 515);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*1440, <minecraft:hopper_minecart>, 800);

mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <forestry:cart.beehouse>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*720, <forestry:cart.beehouse:1>, 500);

// Aurorian items
#	mods.tconstruct.Melting.removeRecipe(<liquid:tamoltencerulean>*176, <theaurorian:cup>);

mods.tconstruct.Melting.addRecipe(<liquid:iron>*360, <theaurorian:knighthelmet:*>, 450);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*576, <theaurorian:knightchestplate:*>, 480);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*504, <theaurorian:knightleggings:*>, 465);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*288, <theaurorian:knightboots:*>,  425);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltencerulean>*324, <theaurorian:aurorianfurnacechimney>, 625);
#	mods.tconstruct.Melting.addRecipe(<liquid:tamoltencerulean>*176, <theaurorian:cup>, 125);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltencerulean>*16, <theaurorian:ceruleanarrow>, 50);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltencerulean>*432, <theaurorian:lockpicks>, 75);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*576, <theaurorian:moonshield>, 675);

mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*432, <theaurorian:moonstonepickaxe:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*144, <theaurorian:moonstoneshovel:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*288, <theaurorian:moonstonesword:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*432, <theaurorian:moonstoneaxe:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenmoonstone>*288, <theaurorian:moonstonehoe:*>);

mods.tconstruct.Melting.addRecipe(<liquid:tamoltenauroriansteel>*432, <theaurorian:auroriansteelpickaxe:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenauroriansteel>*144, <theaurorian:auroriansteelshovel:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenauroriansteel>*288, <theaurorian:auroriansteelsword:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenauroriansteel>*432, <theaurorian:auroriansteelaxe:*>);
mods.tconstruct.Melting.addRecipe(<liquid:tamoltenauroriansteel>*288, <theaurorian:auroriansteelhoe:*>);

// Coins
mods.tconstruct.Melting.addRecipe(<liquid:copper>*16, <ordinarycoins:coinbronze>);
mods.tconstruct.Melting.addRecipe(<liquid:silver>*16, <ordinarycoins:coinsilver>);
mods.tconstruct.Melting.addRecipe(<liquid:gold>*16, <ordinarycoins:coingold>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum>*16, <ordinarycoins:coinplatinum>);

// Misc
mods.tconstruct.Melting.addRecipe(<liquid:bronze>*144, <forestry:broken_bronze_pickaxe>, 250);
mods.tconstruct.Melting.addRecipe(<liquid:bronze>*72, <forestry:broken_bronze_shovel>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*432, <actuallyadditions:block_misc:9>, 700);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*72, <minecraft:flint_and_steel>, 100);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*432, <villagenames:codex>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*1944, <actuallyadditions:item_misc:16>, 1200);
mods.tconstruct.Melting.addRecipe(<liquid:iron>*864, <ironfurnaces:iron_furnace_idle>, 950);
mods.tconstruct.Melting.addRecipe(<liquid:gold>*864, <ironfurnaces:gold_furnace_idle>, 665);
mods.tconstruct.Melting.addRecipe(<liquid:gold>*80, <qualitytools:emerald_amulet>, 250);
mods.tconstruct.Melting.addRecipe(<liquid:gold>*48, <qualitytools:emerald_ring>, 125);

print("tinkers.zs loaded");