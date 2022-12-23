# Adds coin values to items

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.tooltip.ITooltipFunction;

print("3-values.zs loading...");

### Tags
/*
<tag>.add(<item>);
*/

<tag:items:cie:25cr>.add(<item:minecraft:quartz>);
<tag:items:cie:25cr>.add(<item:minecraft:lapis_lazuli>);
<tag:items:cie:25cr>.add(<item:minecraft:prismarine_shard>);
<tag:items:cie:25cr>.add(<item:minecraft:prismarine_crystals>);
<tag:items:cie:25cr>.add(<item:bluepower:red_alloy_ingot>);

<tag:items:cie:100cr>.add(<item:ae2:certus_quartz_crystal>);
<tag:items:cie:100cr>.add(<item:bluepower:battery>);
<tag:items:cie:100cr>.add(<item:bluepower:tungsten_carbide>);
<tag:items:cie:100cr>.add(<item:create:experience_nugget>);

<tag:items:cie:150cr>.add(<item:bluepower:amethyst_gem>);
<tag:items:cie:150cr>.add(<item:bluepower:sapphire_gem>);
<tag:items:cie:150cr>.add(<item:bluepower:green_sapphire_gem>);
<tag:items:cie:150cr>.add(<item:bluepower:ruby_gem>);
<tag:items:cie:150cr>.add(<item:bluepower:purple_alloy_ingot>);

<tag:items:cie:250cr>.add(<item:minecraft:echo_shard>);
<tag:items:cie:250cr>.add(<item:ae2:charged_certus_quartz_crystal>);
<tag:items:cie:250cr>.add(<item:bluepower:motor>);

<tag:items:cie:500cr>.add(<item:spirit:soul_steel_ingot>);

<tag:items:cie:1000cr>.add(<item:minecraft:emerald>);
<tag:items:cie:1000cr>.add(<item:minecraft:sculk_sensor>);
<tag:items:cie:1000cr>.add(<item:experienceobelisk:raw_experience_bucket>);

<tag:items:cie:5000cr>.add(<item:minecraft:diamond>);
<tag:items:cie:5000cr>.add(<item:minecraft:sculk_shrieker>);
<tag:items:cie:5000cr>.add(<item:byg:ametrine_gems>);

<tag:items:cie:10000cr>.add(<item:minecraft:sculk_catalyst>);
<tag:items:cie:10000cr>.add(<item:minecraft:netherite_ingot>);
<tag:items:cie:10000cr>.add(<item:byg:pendorite_ingot>);

/*
craftingTable.addShapeless("recipeName", <output>, [<item:kubejs:seller>, <inputs>]);
*/

/*
Coin Values:
Copper 1
Iron 10
Gold 100
Emerald 1,000
Diamond 10k
Netherite 100k
*/

### Ingots
# Flux Rates:
# 10 RF per Credit
# 1/4 Rate per Credit

val copper = <item:lightmanscurrency:coin_copper>;
val iron = <item:lightmanscurrency:coin_iron>;
val gold = <item:lightmanscurrency:coin_gold>;
val emerald = <item:lightmanscurrency:coin_emerald>;
val diamond = <item:lightmanscurrency:coin_diamond>;
val netherite = <item:lightmanscurrency:coin_netherite>;

// Brass (5 CR)
mods.extendedcrafting.FluxCrafting.addShapeless("sell_brass", copper*5,
	[<item:kubejs:seller>, <tag:items:forge:ingots/brass>], 50, 1);

// Blue Alloy (50 CR)
mods.extendedcrafting.FluxCrafting.addShapeless("sell_blue_alloy", iron*5,
	[<item:kubejs:seller>, <item:bluepower:blue_alloy_ingot>], 500, 12);

// Purple Alloy (150 CR)
mods.extendedcrafting.FluxCrafting.addShapeless("sell_blue_alloy", iron*15,
	[<item:kubejs:seller>, <item:bluepower:purple_alloy_ingot>], 1500, 37);

// Netherite (10,000 CR)
mods.extendedcrafting.FluxCrafting.addShapeless("sell_netherite", diamond,
	[<item:kubejs:seller>, <item:minecraft:netherite_ingot>], 100000, 2500);

// Pendorite (10,000 CR)
mods.extendedcrafting.FluxCrafting.addShapeless("sell_pendorite", diamond,
	[<item:kubejs:seller>, <item:minecraft:netherite_ingot>], 100000, 2500);


### Gems
# Flux Rates:
# 100 RF per Credit
# 1/2 Rate per Credit

// Done with tags:
// Lapis Lazuli: 25 CR
// Nether Quartz: 25 CR
// Prismarine: 25 CR
// Prismarine Crystals: 25 CR
// Certus Quartz: 100 CR
// Project Red Gems: 150 CR
// Charged Certus Quartz: 250 CR
// Emerald: 1,000 CR
// Diamond: 5,000 CR
// Ametrine: 5,000 CR

// Amethyst Shard: 35 CR
mods.extendedcrafting.FluxCrafting.addShapeless("sell_amethyst", copper*25,
	[<item:kubejs:seller>, <item:minecraft:amethyst_shard>], 2000, 15);

// Fluix: 350 CR
mods.extendedcrafting.FluxCrafting.addShapeless("sell_flux", iron*35,
	[<item:kubejs:seller>, <item:ae2:fluix_crystal>], 3500, 35);


#### Blue Power
# Flux Rates:
# 100 RF per Credit
# 1/2 Rate per Credit
# Except when the value is too low, so I just slap in an arbitrary number

// Copper Wire: 1 Credit
mods.extendedcrafting.FluxCrafting.addShapeless("sell_copper_wire", copper,
	[<item:kubejs:seller>, <item:bluepower:copper_wire>], 1000, 1);

// Iron Wire: 3 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_iron_wire", copper*3,
	[<item:kubejs:seller>, <item:bluepower:iron_wire>], 1500, 3);

// Copper Coil: 30 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_copper_coil", iron*3,
	[<item:kubejs:seller>, <item:bluepower:copper_coil>], 3000, 15);

// Blue Doped Wafer: 75 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_blue_wafer", copper*75,
	[<item:kubejs:seller>, <item:bluepower:blue_doped_wafer>], 7500, 37);

// Red Doped Wafer: 50 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_red_wafer", iron*5,
	[<item:kubejs:seller>, <item:bluepower:red_doped_wafer>], 5000, 25);

// Done with tags
// Motor: 250 Credits
// Battery: 100 Credits


### Sculk Items
# Flux Rates:
# 100 RF per Credit
# 1/10 Rate per Credit

// Sculk: 10 CR
mods.extendedcrafting.FluxCrafting.addShapeless("sell_sculk", iron,
	[<item:kubejs:seller>, <item:minecraft:sculk>], 1000, 1);

// Sculk Vein: 5 CR
mods.extendedcrafting.FluxCrafting.addShapeless("sell_sculk_vein", copper*5,
	[<item:kubejs:seller>, <item:minecraft:sculk_vein>], 500, 1);


// Done with tags:
// Echo Shard: 250 CR
// Sculk Sensor: 1,000 CR
// Sculk Shreiker: 5,000 CR
// Sculk Catalyst: 10,000 CR


### Item Tags

// Item Value: 25 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_25cr", copper*25,
	[<item:kubejs:seller>, <tag:items:cie:25cr>], 500, 15);

// Item Value: 100 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_100cr", gold,
	[<item:kubejs:seller>, <tag:items:cie:100cr>], 1000, 25);

// Item Value: 150 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_150cr", iron*15,
	[<item:kubejs:seller>, <tag:items:cie:150cr>], 1500, 37);

// Item Value: 250 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_250cr", iron*25,
	[<item:kubejs:seller>, <tag:items:cie:250cr>], 2500, 62);

// Item Value: 500 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_500cr", gold*5,
	[<item:kubejs:seller>, <tag:items:cie:500cr>], 5000, 125);

	// Music Discs
mods.extendedcrafting.FluxCrafting.addShapeless("sell_music_discs", gold*5,
	[<item:kubejs:seller>, <tag:items:minecraft:music_discs>], 5000, 125);

// Item Value: 1,000 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_1000cr", emerald,
	[<item:kubejs:seller>, <tag:items:cie:1000cr>], 10000, 250);

// Item Value: 5,000 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_5000cr", emerald*5,
	[<item:kubejs:seller>, <tag:items:cie:5000cr>], 50000, 500);

// Item Value: 10,000 Credits
mods.extendedcrafting.FluxCrafting.addShapeless("sell_10000cr", diamond,
	[<item:kubejs:seller>, <tag:items:cie:10000cr>], 100000, 1000);


### Tooltips ###

val black = "\u00A70";
val value = "\u00A76"; // Gold
val gray = "\u00A77";
val dark_gray = "\u00A78";
val blue = "\u00A79";
val dark_blue = "\u00A71";
val green = "\u00A7a";
val dark_green = "\u00A72";
val aqua = "\u00A7b";
val dark_aqua = "\u00A73";
val red = "\u00A7c";
val dark_red = "\u00A74";
val purple = "\u00A7d";
val dark_purple = "\u00A75";
val yellow = "\u00A7e";
val white = "\u00A7f";

val obf = "\u00A7k";
val bold = "\u00A7l";
val strike = "\u00A7m";
val under = "\u00A7n";
val ital = "\u00A7o";
val clf = "\u00A7r";

/*
<item>.addTooltip("tip");
*/

<item:minecraft:sculk>.addTooltip(value + "Worth 10 Credits");
<item:minecraft:sculk_vein>.addTooltip(value + "Worth 5 Credits");

<item:bluepower:brass_ingot>.addTooltip(value + "Worth 5 Credits");
<item:create:brass_ingot>.addTooltip(value + "Worth 5 Credits");

<item:bluepower:blue_alloy_ingot>.addTooltip(value + "Worth 50 Credits");



<item:bluepower:copper_wire>.addTooltip(value + "Worth 1 Credit");
<item:bluepower:iron_wire>.addTooltip(value + "Worth 3 Credits");
<item:bluepower:copper_coil>.addTooltip(value + "Worth 30 Credits");
<item:bluepower:red_doped_wafer>.addTooltip(value + "Worth 50 Credits");
<item:bluepower:blue_doped_wafer>.addTooltip(value + "Worth 75 Credits");

<item:ae2:fluix_crystal>.addTooltip(value + "Worth 350 Credits");

<tag:items:cie:25cr>.asIIngredient().addTooltip(value + "Worth 25 Credits");
<tag:items:cie:100cr>.asIIngredient().addTooltip(value + "Worth 100 Credits");
<tag:items:cie:150cr>.asIIngredient().addTooltip(value + "Worth 150 Credits");
<tag:items:cie:250cr>.asIIngredient().addTooltip(value + "Worth 250 Credits");
<tag:items:cie:500cr>.asIIngredient().addTooltip(value + "Worth 500 Credits");
<tag:items:cie:1000cr>.asIIngredient().addTooltip(value + "Worth 1,000 Credits");
<tag:items:cie:5000cr>.asIIngredient().addTooltip(value + "Worth 5,000 Credits");
<tag:items:cie:10000cr>.asIIngredient().addTooltip(value + "Worth 10,000 Credits");

<tag:items:minecraft:music_discs>.asIIngredient().addTooltip(value + "Worth 500 Credits");

print("3-values.zs loaded");