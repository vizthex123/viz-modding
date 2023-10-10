# Adds coin values to items
#priority 9

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.tooltip.ITooltipFunction;

print("values.zs loading...");

### Value Tags ###
/*
<tag>.add(<item>);
*/
/*
val c1 = <tag:items:credits:1>;
val c5 = <tag:items:credits:5>;
*/
val c10 = <tag:items:credits:10>;
val c15 = <tag:items:credits:15>;
val c25 = <tag:items:credits:25>;
val c30 = <tag:items:credits:30>;
val c35 = <tag:items:credits:35>;
val c50 = <tag:items:credits:50>;
# val c60 = <tag:items:credits:60>;
val c75 = <tag:items:credits:75>;
val c100 = <tag:items:credits:100>;
val c115 = <tag:items:credits:115>;
val c150 = <tag:items:credits:150>;
val c200 = <tag:items:credits:200>;
val c250 = <tag:items:credits:250>;
val c300 = <tag:items:credits:300>;
val c350 = <tag:items:credits:350>;
val c400 = <tag:items:credits:400>;
val c500 = <tag:items:credits:500>;
val c750 = <tag:items:credits:750>;
val c1000 = <tag:items:credits:1000>;
val c2500 = <tag:items:credits:2500>;
val c5000 = <tag:items:credits:5000>;
val c10k = <tag:items:credits:10000>;
val c20k = <tag:items:credits:20000>;
# val c50k = <tag:items:credits:50000>;
# val c100k = <tag:items:credits:100000>;


# Buckets
<<<<<<< Updated upstream
# Will be removed once proper fluid support is added
c100.add(<item:experienceobelisk:cognitium_bucket>);
c500.add(<item:createdieselgenerators:ethanol_bucket>);
c1000.add(<item:createdieselgenerators:biodiesel_bucket>);
c1000.add(<item:enlightened_end:ooze_fluid_bucket>);
=======
# Will be removed once tag support is added
c100.add(<item:experienceobelisk:cognitium_bucket>);
c500.add(<item:createdieselgenerators:ethanol_bucket>);
c1000.add(<item:createdieselgenerators:biodiesel_bucket>);
c2500.add(<item:enlightened_end:ooze_fluid_bucket>);
>>>>>>> Stashed changes
c2500.add(<item:sculkybits:sculk_bucket>);



c10.add(<item:minecraft:copper_ingot>);
c10.add(<item:minecraft:sculk>);

c15.add(<tag:items:forge:ingots/zinc>);
c15.add(<item:bluepower:copper_wire>);

c25.add(<item:minecraft:iron_ingot>); // Bars are ~2.5
c25.add(<item:minecraft:redstone>);
c25.add(<item:minecraft:lapis_lazuli>);
c25.add(<item:minecraft:prismarine_shard>);
c25.add(<item:minecraft:prismarine_crystals>); // Equal to Lapis due to the Haunting recipe
c25.add(<item:bluepower:red_alloy_ingot>);

c30.add(<item:bluepower:iron_wire>);

c35.add(<tag:items:forge:ingots/brass>);
c35.add(<item:bluepower:teslatite_dust>);


c50.add(<item:minecraft:quartz>);
c50.add(<item:bluepower:blue_alloy_ingot>);
c50.add(<item:bluepower:red_doped_wafer>);
c50.add(<item:enlightened_end:depleted_irradium_bar>);


c75.add(<item:bluepower:blue_doped_wafer>);


c100.add(<tag:items:cie:corundum>);
c100.add(<item:minecraft:gold_ingot>);
c100.add(<item:ae2:certus_quartz_crystal>);
c100.add(<item:bluepower:copper_coil>);
c100.add(<item:create_new_age:thorium>);
c100.add(<item:powah:steel_energized>);
c100.add(<item:quark:blank_rune>);


c115.add(<item:ae2:charged_certus_quartz_crystal>);


c150.add(<tag:items:forge:gems/amethyst>);
c150.add(<item:minecraft:phantom_membrane>);
c150.add(<item:bluepower:sapphire_gem>);
c150.add(<item:bluepower:green_sapphire_gem>);
c150.add(<item:bluepower:ruby_gem>);
c150.add(<item:bluepower:infused_teslatite_dust>);


<<<<<<< Updated upstream
c200.add(<item:minecraft:end_crystal>);
c200.add(<item:bluepower:purple_alloy_ingot>);
c200.add(<item:nourished_nether:necronium_ingot>);


=======
c200.add(<item:nourished_nether:necronium_ingot>);


c250.add(<item:minecraft:end_crystal>);
>>>>>>> Stashed changes
c250.add(<item:minecraft:echo_shard>);
c250.add(<item:bluepower:battery>);
c250.add(<item:enlightened_end:helium_jar>);
c250.add(<item:enlightened_end:xenon_jar>);
c250.add(<item:powah:uraninite>);

c300.add(<item:create:polished_rose_quartz>);

c350.add(<item:ae2:fluix_dust>);
c350.add(<item:ae2:fluix_crystal>);
c350.add(<item:bluepower:tungsten_carbide>);


c400.add(<item:minecraft:goat_horn>);
c400.add(<item:bluepower:motor>);


c500.add(<tag:items:minecraft:music_discs>);
c500.add(<item:minecraft:crying_obsidian>);
c500.add(<item:create_new_age:corium>);
c500.add(<item:create_new_age:solid_corium>);
c500.add(<item:create_new_age:radioactive_thorium>);
c500.add(<item:enlightened_end:irradium_bar>);
c500.add(<item:enlightened_end:malachite>);
c500.add(<item:spirit:soul_steel_ingot>);

c750.add(<item:enlightened_end:glacium>);
c750.add(<item:create_new_age:nuclear_fuel>);

c1000.add(<item:minecraft:golden_apple>);
c1000.add(<item:minecraft:emerald>);
c1000.add(<item:minecraft:sculk_sensor>);
c1000.add(<item:enlightened_end:bismuth_ingot>);

c2500.add(<item:enlightened_end:adamantite_ingot>);
c2500.add(<item:deep_dark_regrowth:etherium_gem>);
c2500.add(<item:deep_dark_regrowth:ethereum_coin>);

c5000.add(<item:minecraft:diamond>);
c5000.add(<item:minecraft:heart_of_the_sea>);
c5000.add(<item:rftoolsbase:dimensionalshard>);

c10k.add(<item:minecraft:enchanted_golden_apple>);
c10k.add(<item:minecraft:netherite_ingot>);
c10k.add(<item:minecraft:sculk_catalyst>);
c10k.add(<item:enlightened_end:starsteel_ingot>);

c20k.add(<item:extendedcrafting:crystaltine_ingot>);



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
/*
<tag:items:credits:1>.asIIngredient().addTooltip(value + "Worth 1 Credits");
<tag:items:credits:5>.asIIngredient().addTooltip(value + "Worth 5 Credits");
*/
c10.asIIngredient().addTooltip(value + "Worth 10 Credits");
c15.asIIngredient().addTooltip(value + "Worth 15 Credits");
c25.asIIngredient().addTooltip(value + "Worth 25 Credits");
c30.asIIngredient().addTooltip(value + "Worth 30 Credits");
c35.asIIngredient().addTooltip(value + "Worth 35 Credits");
c50.asIIngredient().addTooltip(value + "Worth 50 Credits");
# c60.asIIngredient().addTooltip(value + "Worth 60 Credits");
c75.asIIngredient().addTooltip(value + "Worth 75 Credits");
c100.asIIngredient().addTooltip(value + "Worth 100 Credits");
c115.asIIngredient().addTooltip(value + "Worth 115 Credits");
c150.asIIngredient().addTooltip(value + "Worth 150 Credits");
c200.asIIngredient().addTooltip(value + "Worth 200 Credits");
c250.asIIngredient().addTooltip(value + "Worth 250 Credits");
c300.asIIngredient().addTooltip(value + "Worth 300 Credits");
c350.asIIngredient().addTooltip(value + "Worth 350 Credits");
c400.asIIngredient().addTooltip(value + "Worth 400 Credits");
c500.asIIngredient().addTooltip(value + "Worth 500 Credits");
c750.asIIngredient().addTooltip(value + "Worth 750 Credits");
c1000.asIIngredient().addTooltip(value + "Worth 1,000 Credits");
c2500.asIIngredient().addTooltip(value + "Worth 2,500 Credits");
c5000.asIIngredient().addTooltip(value + "Worth 5,000 Credits");
c10k.asIIngredient().addTooltip(value + "Worth 10,000 Credits");
c20k.asIIngredient().addTooltip(value + "Worth 20,000 Credits");
# c50k.asIIngredient().addTooltip(value + "Worth 50,000 Credits");
# c100k.asIIngredient().addTooltip(value + "Worth 100,000 Credits");


<item:kubejs:prestige_chit>.addShiftTooltip(value + "Worth 25,000 Credits");
<item:kubejs:prestige_scrip>.addShiftTooltip(value + "Worth 100,000 Credits");
<<<<<<< Updated upstream
<item:kubejs:worldbreaker_drill>.addShiftTooltip(value + "Worth 500,000 Credits");
=======
<item:kubejs:worldbreaker_drill>.addShiftTooltip(value + "Worth 100,000 Credits");
>>>>>>> Stashed changes

print("values.zs loaded");