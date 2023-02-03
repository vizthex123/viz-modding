# Adds upgrade recipes to Refined Pipes
print("refined_pipes.zs loading...");

/*
craftingTable.addShaped("name", <item:output>,
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);
craftingTable.remove(<item>);
craftingTable.removeByName("name");
*/

# Craft basic pipes with Zinc
// Item
craftingTable.addShaped("basic_item_zinc", <item:refinedpipes:basic_item_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Fluid
craftingTable.addShaped("basic_fluid_zinc", <item:refinedpipes:basic_fluid_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:slimeballs>, <tag:items:forge:glass>, <tag:items:forge:slimeballs>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

	// Fluid (Honeycomb)
craftingTable.addShaped("basic_fluid_zinc_honeycomb", <item:refinedpipes:basic_fluid_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<item:minecraft:honeycomb>, <tag:items:forge:glass>, <item:minecraft:honeycomb>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Energy
craftingTable.addShaped("basic_energy_zinc", <item:refinedpipes:basic_energy_pipe>*3,
    [[<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<tag:items:forge:glass>, <item:minecraft:redstone_block>, <tag:items:forge:glass>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>]]);

// Extractor
craftingTable.addShaped("basic_extractor_zinc", <item:refinedpipes:basic_extractor_attachment>,
    [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:create:zinc_ingot>, <item:create:zinc_ingot>, <item:create:zinc_ingot>],
    [<item:create:zinc_ingot>, <item:minecraft:piston>, <item:create:zinc_ingot>]]);



# Item Pipes
// Basic > Improved
craftingTable.addShaped("basic_item_upgrade", <item:refinedpipes:improved_item_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>, <item:refinedpipes:basic_item_pipe>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);

// Improved > Advanced
craftingTable.addShaped("improved_item_upgrade", <item:refinedpipes:advanced_item_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>],
    [<item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>, <item:refinedpipes:improved_item_pipe>],
    [<item:minecraft:air>, <item:minecraft:quartz>, <item:minecraft:air>]]);



# Fluid Pipes
// Basic > Improved
craftingTable.addShaped("basic_fluid_upgrade", <item:refinedpipes:improved_fluid_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>, <item:refinedpipes:basic_fluid_pipe>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);

// Improved > Advanced
craftingTable.addShaped("improved_fluid_upgrade", <item:refinedpipes:advanced_fluid_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>],
    [<item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>, <item:refinedpipes:improved_fluid_pipe>],
    [<item:minecraft:air>, <item:minecraft:quartz>, <item:minecraft:air>]]);

// Advanced > Elite
craftingTable.addShaped("advanced_fluid_upgrade", <item:refinedpipes:elite_fluid_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:blaze_rod>, <item:minecraft:air>],
    [<item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>, <item:refinedpipes:advanced_fluid_pipe>],
    [<item:minecraft:air>, <item:minecraft:emerald>, <item:minecraft:air>]]);

// Elite > Ultimate
craftingTable.addShaped("elite_fluid_upgrade", <item:refinedpipes:ultimate_fluid_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:prismarine_shard>, <item:minecraft:air>],
    [<item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>, <item:refinedpipes:elite_fluid_pipe>],
    [<item:minecraft:air>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:air>]]);



# Energy Pipes
// Basic > Improved
craftingTable.addShaped("basic_energy_upgrade", <item:refinedpipes:improved_energy_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);

// Improved > Advanced
craftingTable.addShaped("improved_energy_upgrade", <item:refinedpipes:advanced_energy_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>],
    [<item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>, <item:refinedpipes:improved_energy_pipe>],
    [<item:minecraft:air>, <item:minecraft:quartz>, <item:minecraft:air>]]);

// Advanced > Elite
craftingTable.addShaped("advanced_energy_upgrade", <item:refinedpipes:elite_energy_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:blaze_rod>, <item:minecraft:air>],
    [<item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>, <item:refinedpipes:advanced_energy_pipe>],
    [<item:minecraft:air>, <item:minecraft:emerald>, <item:minecraft:air>]]);

// Elite > Ultimate
craftingTable.addShaped("elite_energy_upgrade", <item:refinedpipes:ultimate_energy_pipe>*3,
    [[<item:minecraft:air>, <item:minecraft:prismarine_shard>, <item:minecraft:air>],
    [<item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>, <item:refinedpipes:elite_energy_pipe>],
    [<item:minecraft:air>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:air>]]);

# Extractors are by the mod

print("refined_pipes.zs loaded");