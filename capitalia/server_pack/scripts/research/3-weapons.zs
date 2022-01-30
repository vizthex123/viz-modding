# For all of the various weapons & ammo

import mods.ResearchTable;

var weapons = ResearchTable.addCategory(<minecraft:bow>);


// Bow(s)
ResearchTable.builder("bow", weapons)
  .setIcons(<minecraft:bow>)
  .setTitle("Primitive Weapon Research")
  .setDescription("Research a primitive ranged weapon. Allows you to research more advanced weaponry.")
  .addCondition(<contenttweaker:datadisk_stone>)
  .addCondition(<minecraft:flint>*2)
  .setRewardStages("bow")
  .setRewardCommands("/say You've found a way to craft a basic bow, and ammo for it.")
  .setRewardItems(<minecraft:arrow>*8)
  .setMaxCount(1)
  .build();


// Hand Cannon
ResearchTable.builder("stone_gun", weapons)
  .setIcons(<techguns:handcannon>)
  .setTitle("Primitive Handgun Research")
  .setRequiredResearches("stone_age")
  .setRequiredResearches("bow")
  .setDescription("Research a weapon made out of stone")
  .addCondition(<contenttweaker:datadisk_stone>)
  .setRewardStages("stone_gun")
  .setRewardCommands("/say You've found a way to make a basic stone gun")
  .setRewardItems(<techguns:itemshared>*2)
  .setMaxCount(1)
  .build();


// Revolver Research
ResearchTable.builder("revolver", weapons)
  .setIcons(<foundry:revolver>)
  .setTitle("Basic Handgun Research")
  .setRequiredResearches("iron_age")
  .setRequiredResearches("bow")
  .setDescription("Research a more powerful ranged weapon")
  .addCondition(<contenttweaker:datadisk_military>*2)
  .setRewardStages("revolver")
  .setRewardCommands("/say You've discovered a new form of ranged weaponry, much better than bows")
  .setRewardItems(<foundry:mold:21>)
  .setMaxCount(1)
  .build();


// Golden Revolver
ResearchTable.builder("golden_revolver", weapons)
  .setIcons(<techguns:goldenrevolver>)
  .setTitle("Improved Handgun Research")
  .setRequiredResearches("revolver")
  .setRequiredResearches("bow")
  .setDescription("Research a more powerful ranged weapon")
  .addCondition(<contenttweaker:datadisk_military>*4)
  .setRewardStages("golden_revolver")
  .setRewardCommands("/say You can now upgrade your revolver")
  .setRewardItems(<techguns:itemshared:1>)
  .setMaxCount(1)
  .build();


// Pistol research
ResearchTable.builder("pistol", weapons)
  .setIcons(<techguns:pistol>)
  .setTitle("Pistol Research")
  .setRequiredResearches("industrial_age")
  .setOptionalResearches(1, "golden_revolver")
  .setRequiredResearches("bow")
  .setDescription("Research how to make pistols, and ammo for it")
  .addCondition(<contenttweaker:datadisk_military>*12)
  .setRewardStages("pistol")
  .setRewardCommands("/say You can now craft pistols, and ammo for them")
  .setRewardItems(<techguns:itemshared:1>*2)
  .setMaxCount(1)
  .build();


// Shotgun Research
ResearchTable.builder("shotgun", weapons)
  .setIcons(<foundry:shotgun>)
  .setTitle("Basic Shotgun Research")
  .setRequiredResearches("industrial_age")
  .setRequiredResearches("bow")
  .setDescription("Research a high-damage, low-range weapon")
  .addCondition(<contenttweaker:datadisk_military>*4)
  .setRewardStages("shotgun")
  .setRewardCommands("/say You can now make shotguns, its parts, and its ammo")
  .setRewardItems(<foundry:mold:25>)
  .setMaxCount(1)
  .build();