# Adds recipes to the Carpenter's Worktable

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.FTGU;

print("carpenter.zs loading...");

/*
https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Blank Upgrade (Backpacks)
recipes.remove(<improvedbackpacks:blank_upgrade>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<byg:stonestick>, <minecraft:leather>, <byg:stonestick>],
    [<improvedbackpacks:bound_leather>, <ore:logWood>, <improvedbackpacks:bound_leather>],
    [<byg:stonestick>, <minecraft:leather>, <byg:stonestick>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<improvedbackpacks:blank_upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry", "cyborg:survival/backpacks"]))
  .setName("blank_upgrade")
  .create();

// Wooden Storage Upgrade (Backpacks)
recipes.remove(<improvedbackpacks:upgrade>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<improvedbackpacks:tanned_leather>, <improvedbackpacks:bound_leather>, <improvedbackpacks:tanned_leather>],
    [<ore:logWood>, <improvedbackpacks:blank_upgrade>, <ore:logWood>],
    [null, <ore:logWood>, null]])
  .addTool(<ore:artisansHandsaw>, 18)
  .addOutput(<improvedbackpacks:upgrade>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry", "cyborg:survival/backpacks"]))
  .setName("wooden_upgrade")
  .create();

### Sawdust recipes
# 3 durability per tool, 4 for blocks, 5 for logs

# Wooden Tools
// Cutting Board
RecipeBuilder.get("carpenter")
  .setShapeless([<artisanworktables:artisans_cutting_board_wood:*>])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(<thermalfoundation:material:800> * 2)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_cutting_board")
  .create();

// Mortar
RecipeBuilder.get("carpenter")
  .setShapeless([<byg:woodenmortar>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<thermalfoundation:material:800> * 2)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.5)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_mortar")
  .create();

// Chest Transporter
RecipeBuilder.get("carpenter")
  .setShapeless([<chesttransporter:chesttransporter:*>])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(<thermalfoundation:material:800>)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.45)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_transporter")
  .create();

// Sickle
RecipeBuilder.get("carpenter")
  .setShapeless([<projectred-exploration:wooden_sickle:*>])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(<thermalfoundation:material:800> * 2)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.35)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_sickle")
  .create();
  
// Shears
RecipeBuilder.get("carpenter")
  .setShapeless([<thermalfoundation:tool.shears_wood:*>])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(<thermalfoundation:material:800>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_shears")
  .create();

// Wooden Spike
RecipeBuilder.get("carpenter")
  .setShapeless([<extrautils2:spike_wood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 4)
  .setExtraOutputOne(<thermalfoundation:material:800> * 2, 0.75)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_spike")
  .create();

// Big Wooden Button
RecipeBuilder.get("carpenter")
  .setShapeless([<openblocks:big_button_wood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 3)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_big_button")
  .create();

// Sign
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:sign>])
  .addTool(<ore:artisansHandsaw>, 3)
  .addOutput(<thermalfoundation:material:800> * 3)
  .setExtraOutputOne(<thermalfoundation:material:800> * 2, 0.75)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.6)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_sign")
  .create();

// Wooden Hopper
RecipeBuilder.get("carpenter")
  .setShapeless([<wopper:wopper>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 3)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_hopper")
  .create();

// Basic Worktable
RecipeBuilder.get("carpenter")
  .setShapeless([<artisanworktables:worktable:5>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 4)
  .setExtraOutputOne(<thermalfoundation:material:800> * 4, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_worktable")
  .create();

// Basic Workstation
RecipeBuilder.get("carpenter")
  .setShapeless([<artisanworktables:workstation:5>])
  .addTool(<ore:artisansHandsaw>, 6)
  .addOutput(<thermalfoundation:material:800> * 6)
  .setExtraOutputOne(<thermalfoundation:material:800> * 4, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_workstation")
  .create();

// Doors
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:doorWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800>)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_door")
  .create();

// Trapdoors
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:trapdoorWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800>)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_trapdoor")
  .create();

// Fence Gates
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:fenceGateWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 2)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_fence_gate")
  .create();

// Fences
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:fenceWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800>)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.55)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_fence")
  .create();

// Stairs
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:stairWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800> * 3)
  .setExtraOutputOne(<thermalfoundation:material:800>*2, 0.65)
  .setExtraOutputTwo(<thermalfoundation:material:800>, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_stairs")
  .create();

// Pressure Plate
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:pressurePlateWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800>)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_pressure_plate")
  .create();

// Button
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:buttonWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<thermalfoundation:material:800>)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_button")
  .create();


# Logs
# 5 Planks & Durability per
# 75% chance to get 1 Sawdust

// Oak
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_oak_log")
  .create();

// Spruce
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:1>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:1> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_spruce_log")
  .create();

// Birch
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:2>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:2> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_birch_log")
  .create();

// Jungle
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:3>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:3> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_jungle_log")
  .create();
 
 // Acacia
 RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log2>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:4> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_acacia_log")
  .create();

// Dark Oak
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log2:1>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:planks:5> * 5)
  .setExtraOutputOne(<thermalfoundation:material:800>, 0.75)
  .addRequirement(FTGU.allOf(["cyborg:crafting/carpentry"]))
  .setName("saw_dark_oak_log")
  .create();

print("carpenter.zs loaded");