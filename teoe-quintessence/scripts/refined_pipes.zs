# Adds upgrade recipes to Refined Pipes
import mods.jei.JEI;

print("refined_pipes.zs loading...");

/*
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# Basic Pipe tag (quest)
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_item_pipe>);
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_fluid_pipe>);
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_energy_pipe>);
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_extractor_attachment>);


// Extractor with Zinc
craftingTable.addShaped("basic_extractor_zinc", <item:refinedpipes:basic_extractor_attachment>,
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:minecraft:piston>, <item:create:zinc_ingot>]]);


# Upgrade Item Pipes
val basic = <item:refinedpipes:basic_item_pipe>;
val improved = <item:refinedpipes:improved_item_pipe>;
val advanced = <item:refinedpipes:advanced_item_pipe>;

// Basic Item Pipes with Zinc
craftingTable.addShaped("basic_item_zinc", basic*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Basic -> Improved
craftingTable.addShaped("basic_item_upgrade", improved*6,
    [[basic, basic, basic],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [basic, basic, basic]]);

// Improved -> Advanced
craftingTable.addShaped("improved_item_upgrade", advanced*6,
    [[improved, improved, improved],
    [<tag:items:ae2:all_nether_quartz>, <item:minecraft:diamond>, <tag:items:ae2:all_nether_quartz>],
    [improved, improved, improved]]);


# Remove non-item pipes
craftingTable.remove(<item:refinedpipes:basic_energy_pipe>);
craftingTable.remove(<item:refinedpipes:improved_energy_pipe>);
craftingTable.remove(<item:refinedpipes:advanced_energy_pipe>);
craftingTable.remove(<item:refinedpipes:elite_energy_pipe>);
craftingTable.remove(<item:refinedpipes:ultimate_energy_pipe>);

craftingTable.remove(<item:refinedpipes:basic_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:improved_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:advanced_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:elite_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:ultimate_fluid_pipe>);


# Recycle Pipes
<tag:items:teoe:meltable_iron>.add(<item:refinedpipes:basic_energy_pipe>);
<tag:items:teoe:meltable_iron>.add(<item:refinedpipes:basic_fluid_pipe>);

<tag:items:teoe:meltable_gold>.add(<item:refinedpipes:improved_energy_pipe>);
<tag:items:teoe:meltable_gold>.add(<item:refinedpipes:improved_fluid_pipe>);

<tag:items:teoe:meltable_diamond>.add(<item:refinedpipes:advanced_energy_pipe>);
<tag:items:teoe:meltable_diamond>.add(<item:refinedpipes:advanced_fluid_pipe>);

// Recipes
furnace.addRecipe("recycle_elite_pipes", <item:thermal:emerald_dust>, <item:refinedpipes:elite_energy_pipe>|<item:refinedpipes:elite_fluid_pipe>, 0.25, 200);
blastFurnace.addRecipe("blast_recycle_elite_pipes",<item:minecraft:blaze_powder>, <item:refinedpipes:elite_energy_pipe>|<item:refinedpipes:elite_fluid_pipe>, 0.25, 100);
<recipetype:thermal:smelter>.addRecipe("induction_recycle_elite_pipes", [<item:minecraft:emerald>*2, <item:minecraft:blaze_rod> % 25, <item:quark:dirty_shard>*3 % 75, <item:quark:dirty_shard> % 50], [<item:refinedpipes:elite_energy_pipe>|<item:refinedpipes:elite_fluid_pipe>], 0.5, 2000);

furnace.addRecipe("recycle_ultimate_pipes", <item:minecraft:prismarine_shard>, <item:refinedpipes:ultimate_energy_pipe>|<item:refinedpipes:ultimate_fluid_pipe>, 1.0, 200);
blastFurnace.addRecipe("blast_recycle_ultimate_pipes", <item:minecraft:popped_chorus_fruit>, <item:refinedpipes:ultimate_energy_pipe>|<item:refinedpipes:ultimate_fluid_pipe>, 1.0, 100);
<recipetype:thermal:smelter>.addRecipe("induction_recycle_ultimate_pipes", [<item:minecraft:prismarine_shard>*2, <item:minecraft:popped_chorus_fruit> % 25, <item:quark:dirty_shard>*3 % 75, <item:quark:dirty_shard> % 50], [<item:refinedpipes:ultimate_energy_pipe>|<item:refinedpipes:ultimate_fluid_pipe>], 2.0, 2000);


# Hide Pipes
mods.jei.JEI.hideIngredient(<item:refinedpipes:basic_fluid_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:improved_fluid_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:advanced_fluid_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:elite_fluid_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:ultimate_fluid_pipe>);

mods.jei.JEI.hideIngredient(<item:refinedpipes:basic_energy_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:improved_energy_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:advanced_energy_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:elite_energy_pipe>);
mods.jei.JEI.hideIngredient(<item:refinedpipes:ultimate_energy_pipe>);

print("refined_pipes.zs loaded");