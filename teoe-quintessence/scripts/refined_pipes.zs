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

# Remove fluid & energy pipes
craftingTable.remove(<item:refinedpipes:basic_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:improved_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:advanced_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:elite_fluid_pipe>);
craftingTable.remove(<item:refinedpipes:ultimate_fluid_pipe>);

craftingTable.remove(<item:refinedpipes:basic_energy_pipe>);
craftingTable.remove(<item:refinedpipes:improved_energy_pipe>);
craftingTable.remove(<item:refinedpipes:advanced_energy_pipe>);
craftingTable.remove(<item:refinedpipes:elite_energy_pipe>);
craftingTable.remove(<item:refinedpipes:ultimate_energy_pipe>);

# Hide non-item Pipes
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


# Basic Pipe tag (quest)
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_item_pipe>);
<tag:items:teoe:basic_pipe>.add(<item:refinedpipes:basic_extractor_attachment>);
<tag:items:teoe:basic_pipe>.add(<item:thermal:energy_duct>);
<tag:items:teoe:basic_pipe>.add(<item:thermal:fluid_duct_windowed>);
<tag:items:teoe:basic_pipe>.add(<item:thermal:fluid_duct>);

val zinc = <item:create:zinc_ingot>;

// Craft the basic extractor with Zinc
craftingTable.addShaped("basic_extractor_zinc", <item:refinedpipes:basic_extractor_attachment>,
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [zinc, zinc, zinc],
    [zinc, <item:minecraft:piston>, zinc]]);


# Upgrade Item Pipes
val basic = <item:refinedpipes:basic_item_pipe>;
val improved = <item:refinedpipes:improved_item_pipe>;
val advanced = <item:refinedpipes:advanced_item_pipe>;

val gold = <item:minecraft:gold_ingot>;
val diamond = <item:minecraft:diamond>;

// Basic Item Pipes with Zinc
craftingTable.addShaped("basic_item_zinc", basic*3,
    [[zinc, zinc, zinc],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [zinc, zinc, zinc]]);

// Basic -> Improved
craftingTable.addShaped("basic_item_upgrade", improved*6,
    [[basic, basic, basic],
    [gold, gold, gold],
    [basic, basic, basic]]);

// Improved -> Advanced
craftingTable.addShaped("improved_item_upgrade", advanced*6,
    [[improved, improved, improved],
    [<tag:items:ae2:all_nether_quartz>, diamond, <tag:items:ae2:all_nether_quartz>],
    [improved, improved, improved]]);

print("refined_pipes.zs loaded");