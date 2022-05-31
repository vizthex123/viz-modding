# Adds research for the various technological ages

import mods.ResearchTable;

var ages = ResearchTable.addCategory(<advancedrocketry:monitoringstation>);

# Stone Age
ResearchTable.builder("stone_age", ages)
  .setIcons(<minecraft:stone>)
  .setTitle("Stone Age")
  .setDescription("Research how to craft basic Stone Tools, basic alloy machinery, primitive storage blocks, and rudimentary item movement. Unlocks more advanced research.")
  .addCondition(<ore:logWood>*4)
  .addCondition(<extrautils2:compressedcobblestone>*1)
  .setRewardStages("stone_age")
  .setRewardCommands("/say I've figured out how to utilize Stone to craft a variety of tools & appliances")
  .setRewardItems(<minecraft:experience_bottle>)
  .setMaxCount(1)
  .build();


# Bronze Age
ResearchTable.builder("bronze_age", ages)
  .setIcons(<forestry:ingot_bronze>)
  .setTitle("Bronze Age")
  .setRequiredResearches("stone_age")
  .setDescription("Research how to make and utilize Bronze. This alloy can be used to craft more advanced tools, as well as a few basic mechanisms.")
  .addCondition(<contenttweaker:datadisk_stone>*4)
  .addCondition(<ore:oreCopper>*2)
  .addCondition(<ore:oreTin>*1)
  .setRewardStages("bronze_age")
  .setRewardCommands("/say I've found a way to smelt Tin and Copper together to make a durable alloy")
  .setRewardItems(<minecraft:experience_bottle>*2)
  .setMaxCount(1)
  .build();


# Iron Age
ResearchTable.builder("iron_age", ages)
  .setIcons(<minecraft:iron_ingot>)
  .setTitle("Iron Age")
  .setRequiredResearches("bronze_age")
  .setDescription("Research ways to craft and utilize Iron. This strong metal can be utilized in basic electrical machinery, durable tools, and improved item transport systems.")
  .addCondition(<contenttweaker:datadisk_bronze>*4)
  .addCondition(<contenttweaker:datadisk_stone>*8)
  .setRewardStages("iron_age")
  .setRewardCommands("/say I've found a way to process this ''Iron'' I keep finding")
  .setRewardItems(<minecraft:experience_bottle>*4)
  .setMaxCount(1)
  .build();


# Industrial Age
ResearchTable.builder("industrial_age", ages)
  .setIcons(<mekanism:machineblock:3>)
  .setTitle("Industrial Age")
  .setRequiredResearches("iron_age")
  .setDescription("Research basic machinery, steel processing, steel tool production, basic electricity-run flight, and more efficient power production.")
  .addCondition(<contenttweaker:datadisk_iron>*4)
  .addCondition(<contenttweaker:datadisk_bronze>*8)
  .addCondition(<contenttweaker:datadisk_stone>*32)
  .setRewardStages("industrial_age")
  .setRewardCommands("/say I've found a way to make improved machinery")
  .setRewardItems(<minecraft:experience_bottle>*8, <mekanism:speedupgrade>)
  .setMaxCount(1)
  .build();


# Machine Age
ResearchTable.builder("machine_age", ages)
  .setIcons(<thermalexpansion:frame>)
  .setTitle("Machine Age")
  .setRequiredResearches("industrial_age")
  .setRequiredResearches("advanced_circuitry")
  .setDescription("Research more advanced machinery, steel processing, more advanced crafting systems, and basic electricity-powered flight.")
  .addCondition(<contenttweaker:datadisk_industrial>*4)
  .addCondition(<contenttweaker:datadisk_iron>*8)
  .addCondition(<contenttweaker:datadisk_bronze>*12)
  .setRewardStages("machine_age")
  .setRewardCommands("/say I've found a way to further improve my machinery")
  .setRewardItems(<minecraft:experience_bottle>*12)
  .setMaxCount(1)
  .build();


# Information Age
ResearchTable.builder("information_age", ages)
  .setIcons(<refinedstorage:controller>)
  .setTitle("Information Age")
  .setRequiredResearches("machine_age")
  .setDescription("Look into basic ways to compress, transmit, and store data; as well as converting matter to energy.")
  .addCondition(<contenttweaker:datadisk_machine>*4)
  .addCondition(<contenttweaker:datadisk_industrial>*8)
  .addCondition(<fluid:alien_goo>*2000)
  .setRewardStages("information_age")
  .setRewardCommands("/say I've discovered how to convert matter to energy, and vice versa")
  .setRewardItems(<minecraft:experience_bottle>*16, <refinedstorage:processor_binding>*4)
  .setMaxCount(1)
  .build();


# Atomic Age
ResearchTable.builder("atomic_age", ages)
  .setIcons(<mekanismgenerators:reactor>)
  .setTitle("Atomic Age")
  .setRequiredResearches("information_age")
  .setDescription("Research ways to harness atomic fusion for your own means. Allows you to harness AI to power your mining operations.")
  .addCondition(<contenttweaker:datadisk_information>*4)
  .addCondition(<contenttweaker:datadisk_machine>*12)
  .addCondition(<fluid:research>*8000)
  .setRewardStages("atomic_age")
  .setRewardCommands("/say I can now harness the power of the atom to create the most advanced machinery known to man")
  .setRewardItems(<minecraft:experience_bottle>*32, <bigreactors:oreyellorite>*4)
  .setMaxCount(1)
  .build();


# Space Age
ResearchTable.builder("space_age", ages)
  .setIcons(<advancedrocketry:monitoringstation>)
  .setTitle("Space Age")
  .setRequiredResearches("atomic_age")
  .setDescription("Research how to launch rockets into space. This will allow you to explore & exploit other worlds to improve industry.")
  .addCondition(<contenttweaker:datadisk_atomic>*8)
  .addCondition(<contenttweaker:datadisk_information>*12)
  .addCondition(<contenttweaker:datadisk_machine>*24)
  .addCondition(<fluid:research>*16000)
  .addCondition(<fluid:alien_goo>*8000)
  .setRewardStages("space_age")
  .setRewardCommands("/say I have now mastered space travel. But what do I do with it?")
  .setRewardItems(<minecraft:experience_bottle>*64)
  .setMaxCount(1)
  .build();