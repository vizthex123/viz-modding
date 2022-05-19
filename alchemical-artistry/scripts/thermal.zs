# Adds recipes to Thermal "Series'" stuff

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;

print("thermal.zs loading...");

// Make the Gearworking Die from any gears
// Not sure why this isn't the default tbh...
<recipetype:minecraft:crafting>.removeRecipe(<item:thermal:press_gear_die>);
craftingTable.addShaped("gear_press_unused", <item:thermal:press_gear_die>, 
    [[<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>],
    [<item:thermal:invar_plate>, <tag:items:forge:gears>, <item:thermal:invar_plate>],
    [<item:minecraft:air>, <item:thermal:invar_plate>, <item:minecraft:air>]]);

// Sawdust > Paper
craftingTable.addShaped("paper_sawdust", <item:minecraft:paper>, 
    [[<item:thermal:sawdust>, <item:thermal:sawdust>, <item:thermal:sawdust>]]);

// Recycle Doused Torches (both kinds)
<recipetype:thermal:pulverizer>.addRecipe("recycle_doused_torch", [<item:dwarfcoal:dwarf_charcoal>*4 % 50, <item:dwarfcoal:dwarf_coal>*4 % 50], <item:valhelsia_structures:doused_torch>, 0, 500);

<recipetype:thermal:pulverizer>.addRecipe("recycle_doused_soul_torch", [<item:dwarfcoal:dwarf_charcoal>*4 % 100, <item:dwarfcoal:dwarf_coal>*4 % 100], <item:valhelsia_structures:doused_soul_torch>, 0, 500);

// Turn Planks into Sawdust
// Not quite sure why this isn't done by default...
<recipetype:thermal:pulverizer>.addRecipe("sawdust_planks", [<item:thermal:sawdust>*2 % 100], <tag:items:minecraft:planks>, 0, 1000);

// Turn Crying Obsidian into Obsidian
<recipetype:thermal:pulverizer>.addRecipe("obsidian", [<item:minecraft:obsidian>, <item:minecraft:lapis_lazuli>*2 % 75, <item:minecraft:lapis_lazuli> % 50], <item:minecraft:crying_obsidian>, 0, 4000);

// Make Black Dye out of Coal & Charcoal
<recipetype:thermal:smelter>.addRecipe("black_dye", [<item:minecraft:black_dye>*2 % 100, <item:minecraft:black_dye> % 50], [<item:minecraft:coal>*4, <item:minecraft:charcoal>*4], 0, 6000);

<recipetype:thermal:smelter>.addRecipe("black_dye_block", [<item:minecraft:black_dye>*3 % 100, <item:minecraft:black_dye>*3 % 30, <item:minecraft:black_dye> % 50, <item:minecraft:black_dye> % 25], [<item:minecraft:coal_block>|<item:thermal:charcoal_block>, <tag:items:forge:dyes>, <tag:items:forge:dyes>], 0, 8000);

// Make Black Iron out of Iron Ore
<recipetype:thermal:smelter>.addRecipe("black_iron", [<item:extendedcrafting:black_iron_ingot>*2 % 100], [<item:minecraft:iron_ore>, <item:minecraft:black_dye>], 0, 4000);

// Add alternate recipes for Luminessence
<recipetype:thermal:smelter>.addRecipe("luminessence_jelly", [<item:extendedcrafting:luminessence>], [<item:mowziesmobs:glowing_jelly>, <item:minecraft:redstone>, <item:minecraft:gunpowder>|<item:minecraft:glowstone_dust>], 0, 4000);

<recipetype:thermal:smelter>.addRecipe("luminessence_dusts", [<item:extendedcrafting:luminessence> % 50], [<item:thermal:sulfur>*4, <item:minecraft:redstone>|<item:minecraft:gunpowder>|<item:minecraft:glowstone_dust>, <item:thermal:niter>*2], 0, 6000);


// Make Red Sand out of Soul Sand/Soil
<recipetype:thermal:smelter>.addRecipe("soul_sand_to_sand", [<item:minecraft:red_sand> % 75], [<item:minecraft:soul_sand>*2], 0, 6000);
<recipetype:thermal:smelter>.addRecipe("soul_soil_to_sand", [<item:minecraft:dirt> % 75, <item:minecraft:red_sand> % 50], [<item:minecraft:soul_soil>*4], 0, 8000);
<recipetype:thermal:smelter>.addRecipe("soul_soil-sand_to_sand", [<item:minecraft:dirt> % 100, <item:minecraft:red_sand> % 65, <item:minecraft:sand> % 45], [<item:minecraft:soul_sand>, <item:minecraft:soul_soil>], 0, 12000);


// Recycle Rails (all kinds)
// Slag versions give slightly more resources, and/or use less items. Always give 5 extra XP.
<recipetype:thermal:smelter>.addRecipe("recycle_rails", [<item:minecraft:iron_ingot> % 100, <item:minecraft:iron_ingot> % 50], [<tag:items:forge:sand>, <item:minecraft:rail>*4], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_rails_slag", [<item:minecraft:iron_ingot>*2 % 100], [<item:thermal:slag>, <item:minecraft:rail>*4], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_powered_rails", [<item:minecraft:gold_ingot> % 100, <item:minecraft:redstone> % 50], [<tag:items:forge:sand>, <item:minecraft:powered_rail>*2], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_powered_rails_slag", [<item:minecraft:gold_ingot> % 100, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:powered_rail>], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_activator_rails", [<item:minecraft:iron_ingot> % 100, <item:minecraft:redstone> % 50], [<tag:items:forge:sand>, <item:minecraft:activator_rail>*2], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_activator_rails_slag", [<item:minecraft:iron_ingot> % 100, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:activator_rail>], 5, 4000);

<recipetype:thermal:smelter>.addRecipe("recycle_detector_rails", [<item:minecraft:iron_ingot> % 100, <item:minecraft:redstone> % 50], [<tag:items:forge:sand>, <item:minecraft:detector_rail>*2], 0, 4000);
<recipetype:thermal:smelter>.addRecipe("recycle_detector_rails_slag", [<item:minecraft:iron_ingot> % 100, <item:minecraft:redstone> % 100], [<item:thermal:slag>, <item:minecraft:detector_rail>], 5, 4000);


# Add Catalysts to the Pulverizer and Induction Smelter
// Pulverizer
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("quartz_dust", <item:thermal:quartz_dust>, 1.5, 1.75, 1.2, 0.5, 0.30);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_shard", <item:minecraft:prismarine_shard>, 1.45, 1.65, 1.25, 0.45, 0.40);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_crystal", <item:minecraft:prismarine_crystals>, 1.35, 2.85, 1.15, 0.5, 0.30);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("bioluminescent_scales", <item:oddwatermobs:bio_scales_floor>, 2.0, 2.75, 0.75, 0.6, 0.75);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("water_bucket", <item:minecraft:water_bucket>, 1.0, 1.0, 0.8, 1.0, 0.75);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("cut_diamond", <item:heartcanisters:cut_diamond>, 1.5, 1.25, 0.85, 0.75, 0.65);


// Induction Smelter
<recipetype:thermal:smelter_catalyst>.addCatalyst("fire_charge", <item:minecraft:fire_charge>, 1.4, 3.5, 0.3, 0.4, 0.55);
<recipetype:thermal:smelter_catalyst>.addCatalyst("lava_bucket", <item:minecraft:lava_bucket>, 1.0, 1.0, 0.75, 1.0, 0.35);



# Lapidary Dynamo Stuff
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:prismarine_crystals>);
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 75000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_crystals", <item:minecraft:prismarine_crystals>, 100000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard", <item:minecraft:prismarine_shard>, 50000);

<recipetype:thermal:lapidary_fuel>.addFuel("dimshard", <item:rftoolsbase:dimensionalshard>, 25000);
<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 60000);


print("thermal.zs loaded");