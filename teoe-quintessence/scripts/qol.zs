# Adds Quality of Life recipes

import crafttweaker.api.tag.MCTag;

print("qol.zs loading...");

/*
craftingTable.remove(<item>);
craftingTable.removeByName("name");

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

blastFurnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);

furnace.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int);
*/

// Glow Sac -> Ink Sac (and dye)
craftingTable.addShapeless("cyan_dye", <item:minecraft:cyan_dye>, [<item:minecraft:glow_ink_sac>]);
craftingTable.addShapeless("ink_sac", <item:minecraft:ink_sac>*2, [<item:minecraft:glow_ink_sac>, <item:minecraft:glow_ink_sac>]);

// Make Beetroot Soup cheaper
craftingTable.remove(<item:minecraft:beetroot_soup>);
craftingTable.addShapeless("beetroot_soup", <item:minecraft:beetroot_soup>, [<item:minecraft:bowl>, <item:minecraft:beetroot>, <item:minecraft:beetroot>, <item:minecraft:beetroot>]);

// Normal leather bundle
craftingTable.addShaped("leather_bundle", <item:minecraft:bundle>, 
    [[<item:minecraft:string>, <item:minecraft:leather>, <item:minecraft:string>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]]);

// Fuel Canister with Zinc
craftingTable.addShaped("fuel_canister_zinc", <item:fuel_canister:fuel_canister>, 
    [[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:minecraft:air>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// 8x Wool -> White Wool
craftingTable.addShaped("white_wool", <item:minecraft:white_wool>*8, 
    [[<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
    [<tag:items:minecraft:wool>, <item:minecraft:white_dye>, <tag:items:minecraft:wool>],
    [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>]]);

// Make Suspicious Stew use tags
craftingTable.remove(<item:minecraft:suspicious_stew>);
craftingTable.addShapeless("suspicious_stew", <item:minecraft:suspicious_stew>, [<tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>, <item:minecraft:bowl>, <tag:items:minecraft:flowers>]);

# Change torch recipes
craftingTable.removeByName("minecraft:torch");
craftingTable.removeByName("byg:torch_from_byg_coals");

craftingTable.addShaped("4x_torch", <item:minecraft:torch>*4, 
    [[<item:minecraft:charcoal>|<item:minecraft:coal>|<item:byg:lignite>|<item:thermal:bitumen>|<item:malum:blazing_quartz>],
    [<tag:items:balm:wooden_rods>]]);

craftingTable.addShaped("8x_torch", <item:minecraft:torch>*8, 
    [[<item:malum:arcane_charcoal>|<item:thermal:coal_coke>|<item:byg:anthracite>],
    [<tag:items:balm:wooden_rods>]]);

# Rope Changes
// Buffs the rope recipe to give 2 instead of 1 per craft
craftingTable.remove(<item:additionaladditions:rope>);
craftingTable.addShaped("rope", <item:additionaladditions:rope>*2,
    [[<tag:items:forge:string>],
    [<tag:items:forge:string>]]);

// Make the rope coils from quark give 6 instead of 3
craftingTable.remove(<item:quark:rope>);
craftingTable.addShaped("rope_coil", <item:quark:rope>*6,
    [[<tag:items:forge:string>, <tag:items:forge:string>],
    [<tag:items:forge:string>, <tag:items:forge:string>],
    [<tag:items:forge:string>, <tag:items:forge:string>]]);

// Convert Ropes into Rope Coils (and vice versa)
craftingTable.addShaped("rope_coiling", <item:quark:rope>,
    [[<item:additionaladditions:rope>, <item:additionaladditions:rope>],
    [<item:additionaladditions:rope>, <item:additionaladditions:rope>]]);

craftingTable.addShapeless("rope_uncoiling", <item:additionaladditions:rope>*4, [<item:quark:rope>]);

// Smelt coloured Glass Shards into regular ones
furnace.addRecipe("smelt_glass_shards", <item:quark:clear_shard>, <tag:items:quark:shards>, 0, 100);

// Smelt Dripleaves into Green Dye
furnace.addRecipe("dripleaf_dye", <item:minecraft:green_dye>*2, <item:minecraft:big_dripleaf>, 1.5, 200);
furnace.addRecipe("dripleaf_dye_small", <item:minecraft:green_dye>, <item:minecraft:small_dripleaf>, 2.0, 200);

// Convert webs into string
craftingTable.addShapeless("web_to_string", <item:minecraft:string>, [<item:minecraft:cobweb>]);

// Make 16 Sticks at once
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick>*16, 
    [[<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]]);

// Make Anvils out of Lead
craftingTable.addShaped("lead_anvil", <item:minecraft:anvil>, 
    [[<item:minecraft:air>, <tag:items:forge:storage_blocks/lead>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:ingots/lead>, <item:minecraft:air>],
    [<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>]]);


# Smelt Raw Ore Blocks into ingots
# Gives a bit less XP than smelting the 9 ores would
# This means that you'll get more XP from raw ores, but the blocks will go a bit faster

blastFurnace.addRecipe("raw_copper_block", <item:minecraft:copper_ingot>*9, <item:minecraft:raw_copper_block>, 5.0, 600);
blastFurnace.addRecipe("raw_iron_block", <item:minecraft:iron_ingot>*9, <item:minecraft:raw_iron_block>, 5.5, 600);
blastFurnace.addRecipe("raw_gold_block", <item:minecraft:gold_ingot>*9, <item:minecraft:raw_gold_block>, 7.5, 600);

blastFurnace.addRecipe("raw_tin_block", <item:thermal:tin_ingot>*9, <item:thermal:raw_tin_block>, 6.0, 600);
blastFurnace.addRecipe("raw_lead_block", <item:thermal:lead_ingot>*9, <item:thermal:raw_lead_block>, 6.0, 600);
blastFurnace.addRecipe("raw_silver_block", <item:thermal:silver_ingot>*9, <item:thermal:raw_silver_block>, 6.0, 600);
blastFurnace.addRecipe("raw_nickel_block", <item:thermal:nickel_ingot>*9, <item:thermal:raw_nickel_block>, 6.0, 600);

blastFurnace.addRecipe("raw_zinc_block", <item:create:zinc_ingot>*9, <item:create:raw_zinc_block>, 5.5, 600);

blastFurnace.addRecipe("raw_soulstone_block", <item:malum:processed_soulstone>*18, <item:malum:block_of_raw_soulstone>, 2.0, 600);
/*
# Induction Smelter versions
# Uses RF equal to 10x the raw block smelt time
# Gives the same outputs, but multiplied by 9. 50% chance for byproduct.
# Also gives 0.5 more XP
<recipetype:thermal:smelter>.addRecipe("smelt_raw_copper_block", [<item:minecraft:copper_ingot>*9, <item:minecraft:gold_nugget>*9 % 50], [<item:minecraft:raw_copper_block>], 5.5, 6000);
<recipetype:thermal:smelter>.addRecipe("smelt_raw_iron_block", [<item:minecraft:iron_ingot>*9, <item:thermal:nickel_nugget>*9 % 50], [<item:minecraft:raw_iron_block>], 6.0, 6000);
<recipetype:thermal:smelter>.addRecipe("smelt_raw_gold_block", [<item:minecraft:gold_ingot>*9, <item:thermal:copper_nugget>*9 % 50], [<item:minecraft:raw_gold_block>], 8.0, 6000);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_tin_block", [<item:minecraft:gold_ingot>*9, <item:thermal:apatite>*9 % 60], [<item:thermal:raw_tin_block>], 6.5, 6000);
<recipetype:thermal:smelter>.addRecipe("smelt_raw_lead_block", [<item:thermal:lead_ingot>*9, <item:thermal:silver_nugget>*9 % 50], [<item:thermal:raw_lead_block>], 6.5, 6000);
<recipetype:thermal:smelter>.addRecipe("smelt_raw_silver_block", [<item:thermal:silver_ingot>*9, <item:thermal:lead_nugget>*9 % 50], [<item:thermal:raw_silver_block>], 6.5, 6000);
<recipetype:thermal:smelter>.addRecipe("smelt_raw_nickel_block", [<item:create:zinc_ingot>*9, <item:thermal:copper_nugget>*9 % 50, <item:kubejs:iridium> % 15], [<item:thermal:raw_nickel_block>], 6.0, 6000);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_zinc_block", [<item:thermal:nickel_ingot>*9, <item:thermal:sulfur>*9 % 55], [<item:create:raw_zinc_block>], 6.5, 6000);


<recipetype:thermal:smelter>.addRecipe("smelt_raw_cobalt_block", [<item:tconstruct:cobalt_ingot>*9, <item:thermal:copper_nugget>*9 % 50, <item:thermal:nickel_nugget>*9 % 25], [<item:tconstruct:raw_cobalt_block>], 14, 6000);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_pendorite_block", [<item:byg:pendorite_scraps>*9, <item:minecraft:netherite_scrap>*9 % 50, <item:kubejs:iridium>*2, <item:kubejs:iridium> % 75], [<item:byg:raw_pendorite_block>], 6.5, 9000);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_platinum_block", [<item:ob_core:platinum_ingot>*9, <item:kubejs:iridium> % 25], [<item:ob_core:raw_platinum_block>], 30, 8000);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_soulstone_block", [<item:malum:processed_soulstone>*18, <item:malum:sacred_spirit>*3 % 50, <item:malum:arcane_spirit>*3 % 50], [<item:malum:block_of_raw_soulstone>], 2.5, 6000);


# Raw Ores that aren't done by the mods
# Also does the Crushed Ores
<recipetype:thermal:smelter>.addRecipe("smelt_crushed_cobalt", [<item:tconstruct:cobalt_ingot>], [<item:kubejs:crushed_cobalt>], 1.0, 1600);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_pendorite", [<item:byg:pendorite_scraps>, <item:minecraft:netherite_scrap> % 75, <item:kubejs:iridium> % 25], [<item:byg:raw_pendorite>], 0.7, 3600);
<recipetype:thermal:smelter>.addRecipe("smelt_crushed_pendorite", [<item:byg:pendorite_scraps>], [<item:kubejs:crushed_pendorite>], 0.4, 1800);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_platinum", [<item:ob_core:platinum_ingot>, <item:kubejs:iridium> % 75], [<item:byg:raw_pendorite>], 0.7, 3600);
<recipetype:thermal:smelter>.addRecipe("smelt_crushed_platinum", [<item:ob_core:platinum_ingot>], [<item:kubejs:crushed_platinum>], 1.5, 2400);

<recipetype:thermal:smelter>.addRecipe("smelt_raw_soulstone", [<item:malum:processed_soulstone>*2, <item:malum:sacred_spirit> % 50], [<item:malum:raw_soulstone>], 0.25, 3200);
<recipetype:thermal:smelter>.addRecipe("smelt_crushed_soulstone", [<item:malum:processed_soulstone>*2, <item:malum:arcane_spirit> % 50], [<item:malum:crushed_soulstone>], 0.25, 1600);
*/
print("qol.zs loaded");