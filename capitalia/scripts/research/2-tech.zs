# For all the extra technology research that doesn't fit into 1-ages.zs

import mods.ResearchTable;

var tech = ResearchTable.addCategory(<bigreactors:reactorcontroller>);

// Advanced Circuitry
ResearchTable.builder("advanced_circuitry", tech)
  .setIcons(<mekanism:controlcircuit:1>)
  .setTitle("Advanced Circuitry")
  .setRequiredResearches("industrial_age")
  .setDescription("Research how to create more advanced circuitry. This allows you to create more advanced machinery, and is the basis of space travel. Required to reach the Machine Age.")
  .addCondition(<contenttweaker:datadisk_industrial>*1)
  .addCondition(<ore:circuitBasic>*12)
  .setRewardStages("advanced_circuitry")
  .setRewardCommands("/say I can now solder more advanced circuits.")
  .setRewardItems(<mekanism:controlcircuit:1>*1)
  .setMaxCount(1)
  .build();


// Oil Processing
ResearchTable.builder("oil", tech)
  .setIcons(<buildcraftfactory:pump>)
  .setTitle("Oil Processing")
  .setRequiredResearches("industrial_age")
  .setDescription("Research ways to obtain and utilize Oil for powergen, and other purposes.")
  .addCondition(<fluid:research>*500)
  .setRewardStages("oil")
  .setRewardCommands("/say I can now pump and process oil and other fluids.")
  .setRewardItems(<buildcraftfactory:tank>*1)
  .setMaxCount(1)
  .build();


// Wireless Power
ResearchTable.builder("wireless_power", tech)
  .setIcons(<fluxnetworks:fluxpoint>)
  .setTitle("Wireless Power Transmission")
  .setRequiredResearches("machine_age")
  .setDescription("Research ways to harness advanced technology to transmit power wirelessly.")
  .addCondition(<fluid:alien_goo>*500)
  .setRewardStages("wireless_power")
  .setRewardCommands("/say I can now transmit electricity wirelessly")
  .setRewardItems(<fluxnetworks:fluxstorage>*1)
  .setMaxCount(1)
  .build();


// Basic Reactors (Big Reactors)
ResearchTable.builder("basic_reactor", tech)
  .setIcons(<bigreactors:reactorcontroller>)
  .setTitle("Basic Reactors")
  .setRequiredResearches("machine_age")
  .setRequiredResearches("advanced_circuitry")
  .setDescription("Research ways to utilize Yellorium to create energy by using atomic fission.")
  .addCondition(<contenttweaker:datadisk_machine>*4)
  .addCondition(<contenttweaker:datadisk_industrial>*8)
  .addCondition(<fluid:research>*2000)
  .setRewardStages("basic_reactor")
  .setRewardCommands("/say I can now create a basic fission reactor")
  .setRewardItems(<superores:super_yellorite>*2)
  .setMaxCount(1)
  .build();


// Advanced Matter-Energy Conversion (AE2 research)
// Information Age unlocks Refined Storage
ResearchTable.builder("ae2", tech)
  .setIcons(<appliedenergistics2:controller>)
  .setTitle("Advanced Matter-Energy Conversion")
  .setRequiredResearches("information_age")
  .setDescription("Research more efficient ways to compress, transmit, and store data; as well as automate crafting using advanced matter-energy conversion technology. This process will require extraterrestrial intelligence to research.")
  .addCondition(<contenttweaker:datadisk_information>*4)
  .addCondition(<fluid:alien_goo>*1000)
  .setRewardStages("ae2")
  .setRewardCommands("/say I've improved upon your discovery of matter-energy conversion.")
  .setRewardItems(<appliedenergistics2:storage_cell_4k>.withTag({"@0": 16, ic: 16, it: 1 as short, "#0": {Craft: 0 as byte, Cnt: 16 as long, id: "minecraft:experience_bottle", Count: 1 as byte, Damage: 0 as short, Req: 0 as long}}))
  .setMaxCount(1)
  .build();