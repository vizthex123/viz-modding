# Recipes for all my custom items
print("recipes.zs loading...");

// Data Disk recipes
// Starts at Iron since you need to power the machine
recipes.addShapeless(<contenttweaker:datadisk_military>, [<ore:arrow>, <ore:arrow>, <ore:arrow>, <ore:arrow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*2, [<foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>, <foundry:roundnormal>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*3, [<foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>, <foundry:roundhollow>]);
recipes.addShapeless(<contenttweaker:datadisk_military>*4, [<foundry:roundap>, <foundry:roundap>, <foundry:roundap>, <foundry:roundap>]);


recipes.addShapeless(<contenttweaker:datadisk_stone>, [<extrautils2:compressedcobblestone>, <ore:cobblestone>]);
recipes.addShapeless(<contenttweaker:datadisk_stone>, [<contenttweaker:datadisk_stone_unref>, <contenttweaker:datadisk_stone_unref>]);
recipes.addShapeless(<contenttweaker:datadisk_stone_unref>, [<minecraft:stone:1>|<minecraft:stone:3>|<minecraft:stone:5>, <minecraft:stone:1>|<minecraft:stone:3>|<minecraft:stone:5>, <minecraft:stone:1>|<minecraft:stone:3>|<minecraft:stone:5>, <minecraft:stone:1>|<minecraft:stone:3>|<minecraft:stone:5>, <minecraft:stone:1>|<minecraft:stone:3>|<minecraft:stone:5>]);

recipes.addShapeless(<contenttweaker:datadisk_bronze>, [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]);
recipes.addShapeless(<contenttweaker:datadisk_iron>, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_industrial_unref>, [<ore:ingotSteel>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_machine_unref>*2, [<mekanism:basicblock:8>, <mekanism:reinforcedalloy>, <mekanism:reinforcedalloy>]);
mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_information_unref>*2, [<ore:ingotCarbon>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>, <refinedstorage:processor:4>, <refinedstorage:processor:3>]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <contenttweaker:datadisk_atomic>*4, [<contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:proton>, <contenttweaker:neutron>, <contenttweaker:electron>, <contenttweaker:electron>, <contenttweaker:electron>, <contenttweaker:electron>]);


mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_industrial>, <contenttweaker:datadisk_industrial_unref>, 8, <extendedcrafting:material:8>, 5000, 50);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_machine>, <contenttweaker:datadisk_machine_unref>, 16, <extendedcrafting:material:9>, 10000, 100);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:datadisk_information>, <contenttweaker:datadisk_information_unref>, 16, <extendedcrafting:material:10>, 50000, 500);


mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:neutron>*6, <projectred-core:resource_item:342>, 12, <mekanism:atomicalloy>, 80000, 1225);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:proton>*4, <magneticraft:crafting:4>, 8, <projectred-core:resource_item:104>, 100000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<contenttweaker:electron>*4, <magneticraft:crafting:4>, 8, <projectred-core:resource_item:103>, 120000, 2400);

print("recipes.zs loaded");