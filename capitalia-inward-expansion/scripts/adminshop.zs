# Changes stuff from Admin Shop
print("admin_shop.zs loading...");

/*
furnace.addRecipe("recipeName", <output>, <input>, xp, cooktime-10s default);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

smithing.addRecipe("recipe_name", <output>, <item>, <item2>);

smithing.removeByName("name");

<item:>.addTooltip("tip");
*/

val empty = <item:minecraft:air>;

val iron = <item:minecraft:iron_ingot>;
val tungsten = <item:bluepower:tungsten_carbide>;

val coin = <item:lightmanscurrency:coin_gold>;
val core = <item:lightmanscurrency:trading_core>;


# Seller recipes until tag & NBT support gets added to AdminShop

val seller = <item:kubejs:seller>;

val copper = <item:lightmanscurrency:coin_copper>;
val iron_coin = <item:lightmanscurrency:coin_iron>;
val gold = <item:lightmanscurrency:coin_gold>;
val emerald = <item:lightmanscurrency:coin_emerald>;
val diamond = <item:lightmanscurrency:coin_diamond>;
val netherite = <item:lightmanscurrency:coin_netherite>;
<<<<<<< Updated upstream
/*
// Music Discs
mods.extendedcrafting.TableCrafting.addShapeless("sell_music_discs", 1, gold*5, [seller, <tag:items:minecraft:music_discs>]);
*/
// Goat Horn from Pillager Outposts
mods.extendedcrafting.TableCrafting.addShapeless("sell_goat_horn", 1, gold*4, [seller, <item:minecraft:goat_horn>.withTag({instrument: "minecraft:ponder_goat_horn"})]);



=======

// Music Discs
mods.extendedcrafting.TableCrafting.addShapeless("sell_music_discs", 1, gold*5, [seller, <tag:items:minecraft:music_discs>]);

// Goat Horn from Pillager Outposts
mods.extendedcrafting.TableCrafting.addShapeless("sell_goat_horn", 1, gold*4, [seller, <item:minecraft:goat_horn>.withTag({instrument: "minecraft:ponder_goat_horn"})]);

>>>>>>> Stashed changes
# New Shop recipe
craftingTable.remove(<item:adminshop:shop>);
mods.extendedcrafting.TableCrafting.addShaped("shop", 1, <item:adminshop:shop>,
	[[empty, coin, empty], 
	[iron, core, iron], 
	[empty, iron, empty]]);

# New Seller recipe
craftingTable.remove(<item:adminshop:seller>);
craftingTable.addShaped("seller", <item:adminshop:seller>,
    [[empty, coin, empty],
    [<tag:items:forge:ingots/brass>, core, <tag:items:forge:ingots/brass>],
    [<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>]]);

# New Buyer recipes
craftingTable.remove(<item:adminshop:buyer_1>);
craftingTable.remove(<item:adminshop:buyer_2>);
craftingTable.remove(<item:adminshop:buyer_3>);

mods.extendedcrafting.TableCrafting.addShaped("buyer_t1", 1, <item:adminshop:buyer_1>,
    [[empty, coin, empty],
    [<tag:items:forge:ingots/brass>, core, <tag:items:forge:ingots/brass>],
    [empty, <tag:items:forge:ingots/brass>, empty]]);

mods.extendedcrafting.TableCrafting.addShaped("buyer_t2", 1, <item:adminshop:buyer_2>,
    [[empty, coin, empty],
    [iron, <item:adminshop:buyer_1>, iron],
    [empty, iron, empty]]);

mods.extendedcrafting.TableCrafting.addShaped("buyer_t3", 1, <item:adminshop:buyer_3>,
    [[coin, tungsten, coin],
    [tungsten, <item:adminshop:buyer_2>, tungsten],
    [coin, tungsten, coin]]);



### Permits ###
/*
Hazardous Materials - 1
Special Items - 2

Prestige - 4
Worldbreaker Drill Sale - 5
*/

// Tooltips
val aqua = "\u00A7b";
val blue = "\u00A79";
val green = "\u00A7a";
val dark_green = "\u00A72";
val purple = "\u00A7d";

val hazard_permit = <item:adminshop:permit>.withTag({key: 1 as int});
val special_permit = <item:adminshop:permit>.withTag({key: 2 as int});
val tech_permit = <item:adminshop:permit>.withTag({key: 3 as int});
val prestige_permit = <item:adminshop:permit>.withTag({key: 4 as int});
val drill_permit = <item:adminshop:permit>.withTag({key: 5 as int});
 
hazard_permit.addTooltip(green + "Sell: Hazardous Materials");
special_permit.addTooltip(blue + "Sell: Special Materials");
tech_permit.addTooltip(aqua + "Sell: High-Tech Materials");
prestige_permit.addTooltip(dark_green + "Sell: Prestige");
drill_permit.addTooltip(purple + "Sell: Worldbreaker Drill");



# Tags
# Can't add Ceramic Buckets since tags ignore NBT data.... ah well.

// Hazardous Materials (Tier 1)
// Used to unlock sell perms for them with a Challenge
val hazard = <tag:items:shop:hazardous_materials>;

hazard.add(<item:minecraft:echo_shard>);
hazard.add(<item:minecraft:sculk>);
hazard.add(<item:minecraft:sculk_sensor>);
hazard.add(<item:minecraft:sculk_catalyst>);
hazard.add(<item:create_new_age:thorium>);
hazard.add(<item:create_new_age:radioactive_thorium>);
hazard.add(<item:create_new_age:nuclear_fuel>);
hazard.add(<item:create_new_age:corium>);
hazard.add(<item:create_new_age:solid_corium>);
hazard.add(<item:powah:uraninite>);
hazard.add(<item:enlightened_end:irradium_bar>);
hazard.add(<item:enlightened_end:depleted_irradium_bar>);
hazard.add(<item:enlightened_end:raw_irradium_block>);
hazard.add(<item:enlightened_end:irradium_block>);

hazard.add(<item:createdieselgenerators:ethanol_bucket>);
hazard.add(<item:sculkybits:sculk_bucket>);



// Special Materials (Tier 2)
// Used to unlock sell perms for them with a Challenge
val special = <tag:items:shop:special_materials>;

special.add(<item:minecraft:crying_obsidian>);
special.add(<item:minecraft:end_crystal>);
special.add(<item:minecraft:phantom_membrane>);
special.add(<item:deep_dark_regrowth:etherium_gem>);
special.add(<item:deep_dark_regrowth:ethereum_coin>);

special.add(<item:enlightened_end:ooze_fluid_bucket>);
special.add(<item:experienceobelisk:cognitium_bucket>);


// High-Tech Materials (Tier 3)
// Used to unlock sell perms for them with a Challenge
val tech = <tag:items:shop:high_tech_materials>;

tech.add(<item:powah:steel_energized>);
tech.add(<item:extendedcrafting:crystaltine_ingot>);

print("admin_shop.zs loaded");