# Adds a category for ammo of various types

import mods.ResearchTable;

var ammo  = ResearchTable.addCategory(<foundry:roundjacketed>);


// Tipped Arrows
ResearchTable.builder("tipped", ammo)
  .setIcons(<minecraft:tipped_arrow>.withTag({Potion: "techguns:radregenerationpotion"}))
  .setTitle("Tipped Arrows")
  .setRequiredResearches("bow")
  .setDescription("Research ways to infuse arrows with potions.")
  .addCondition(<contenttweaker:datadisk_military>)
  .setRewardStages("tipped")
  .setRewardCommands("/say I can now dip my arrows in any form of potion")
  .setRewardItems(<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}))
  .setMaxCount(1)
  .build();

// Spectral Arrows
ResearchTable.builder("spectral", ammo)
  .setIcons(<minecraft:spectral_arrow>)
  .setTitle("Phase-Shifting Arrows")
  .setRequiredResearches("industrial_age")
  .setRequiredResearches("bow")
  .setDescription("Research a peculiar arrow that makes foes shine brightly.")
  .addCondition(<contenttweaker:datadisk_military>)
  .addCondition(<minecraft:glowstone_dust>)
  .setRewardStages("spectral")
  .setRewardCommands("/say I can now craft Spectral Arrows")
  .setRewardItems(<minecraft:glowstone>*2)
  .setMaxCount(1)
  .build();


// Elemental
ResearchTable.builder("elemental_ammo", ammo)
  .setIcons(<foundry:roundfire>)
  .setTitle("Elemental Ammunition")
  .setRequiredResearches("revolver")
  .setDescription("Research ways to add elemental effects to your ammunition. Lets you combust, poison, or freeze enemies.")
  .addCondition(<contenttweaker:datadisk_military>)
  .setRewardStages("elemental_ammo")
  .setRewardCommands("/say I can now craft Incendiary, Poison, and Snow rounds")
  .setRewardItems(<foundry:roundfire>)
  .setMaxCount(1)
  .build();


// Jacketed
ResearchTable.builder("jacketed_ammo", ammo)
  .setIcons(<foundry:roundjacketed>)
  .setTitle("Jacketed Ammunition")
  .setRequiredResearches("revolver")
  .setDescription("Research jacketed ammunition, which can travel furthur than standard ammo.")
  .addCondition(<contenttweaker:datadisk_military>*2)
  .setRewardStages("jacketed_ammo")
  .setRewardCommands("/say I can now craft Jacketed Rounds & its components")
  .setRewardItems(<foundry:roundjacketed>)
  .setMaxCount(1)
  .build();


// Armour-Piercing Rounds
ResearchTable.builder("ap_ammo", ammo)
  .setIcons(<foundry:roundap>)
  .setTitle("Armour-Piercing Rounds")
  .setRequiredResearches("revolver")
  .setRequiredResearches("industrial_age")
  .setDescription("Research ways to pierce through enemy armour.")
  .addCondition(<contenttweaker:datadisk_military>*4)
  .setRewardStages("ap_ammo")
  .setRewardCommands("/say I can now craft Armour Piercing rounds")
  .setRewardItems(<foundry:roundap>*2)
  .setMaxCount(1)
  .build();


// Armour-Piercing Shells
ResearchTable.builder("ap_ammo_2", ammo)
  .setIcons(<foundry:shellap>)
  .setTitle("Armour-Piercing Shells")
  .setRequiredResearches("shotgun")
  .setDescription("Research ways to pierce through enemy armour in a small area.")
  .addCondition(<contenttweaker:datadisk_military>*6)
  .setRewardStages("ap_ammo_2")
  .setRewardCommands("/say I can now craft Armour Piercing shells")
  .setRewardItems(<foundry:shellap>)
  .setMaxCount(1)
  .build();


// Lumium Rounds
ResearchTable.builder("advanced_ammo", ammo)
  .setIcons(<foundry:roundlumium>)
  .setTitle("Advanced Rounds")
  .setRequiredResearches("revolver")
  .setRequiredResearches("machine_age")
  .setDescription("Research powerful, high-calibur rounds.")
  .addCondition(<contenttweaker:datadisk_military>*8)
  .setRewardStages("advanced_ammo")
  .setRewardCommands("/say I can now craft Lumium Rounds")
  .setRewardItems(<foundry:roundlumium>)
  .setMaxCount(1)
  .build();


// Lumium Shells
ResearchTable.builder("advanced_ammo_2", ammo)
  .setIcons(<foundry:shelllumium>)
  .setTitle("Advanced Shells")
  .setRequiredResearches("revolver")
  .setRequiredResearches("machine_age")
  .setOptionalResearches(1, "advanced_ammo")
  .setDescription("Research powerful, high-calibur shells.")
  .addCondition(<contenttweaker:datadisk_military>*12)
  .setRewardStages("advanced_ammo_2")
  .setRewardCommands("/say I can now craft Lumium Shells")
  .setRewardItems(<foundry:shelllumium>)
  .setMaxCount(1)
  .build();