# Adds recipes that use the Molecular Rearranger
# Also adds regular conversion recipes

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("rearranger.zs loading...");

val rearranger = <contenttweaker:molecular_rearranger>;

# Molecular Rearranger recipes
# If you add up the numbers of each element, it's 69 (lol)
RecipeBuilder.get("engineer")
  .setShaped([
    [<alchemistry:element:1>, null, <alchemistry:element:4>],
    [null, <ore:circuitBasic>, null],
    [<alchemistry:element:14>, null, <alchemistry:element:50>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(rearranger * 16)
  .setExtraOutputOne(rearranger*4, 0.5)
  .setExtraOutputTwo(rearranger*8, 0.25)
  .setExtraOutputTwo(rearranger*16, 0.12)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("molecular_rearranger")
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<alchemistry:element:1>, null, <alchemistry:element:4>],
    [<contenttweaker:melon_circuit>, <contenttweaker:melon_circuit>, <contenttweaker:melon_circuit>],
    [<alchemistry:element:14>, null, <alchemistry:element:50>]])
  .addTool(<ore:artisansSolderer>, 200)
  .addOutput(rearranger)
  .setExtraOutputOne(rearranger, 0.75)
  .setExtraOutputTwo(rearranger, 0.5)
  .setExtraOutputThree(rearranger, 0.25)
  .addRequirement(FTGU.allOf(["cyborg:crafting/engineering"]))
  .setName("molecular_rearranger_credits")
  .create();



// Melon Blocks -> Pumpkins
recipes.addShapeless("melon_to_pumpkin", <minecraft:pumpkin>, [rearranger, <minecraft:melon_block>]);

// Melons -> Sugar Canes/Salt
recipes.addShapeless("melon_to_salt", <xlfoodmod:salt>, [<byg:woodenmortar>.reuse(), <minecraft:melon>]);
recipes.addShapeless("melon_to_sugar_cane", <minecraft:reeds>*4, [rearranger, <minecraft:melon>, <minecraft:melon>]);

// Pumpkins -> Salt
recipes.addShapeless("pumpkin_to_salt", <xlfoodmod:salt>*3, [<byg:woodenmortar>.reuse(), <minecraft:pumpkin>]);

// 2x any Vegetables -> Salt
recipes.addShapeless("vegetables_to_salt", <xlfoodmod:salt>, [<byg:woodenmortar>.reuse(), <ore:listAllvegetable>, <ore:listAllvegetable>]);

// 3x any Fruit -> Salt
recipes.addShapeless("fruit_to_salt", <xlfoodmod:salt>, [<byg:woodenmortar>.reuse(), <ore:listAllfruit>, <ore:listAllfruit>, <ore:listAllfruit>]);

// Bone -> 4x Bone Meal
recipes.addShapeless("bone_meal", <minecraft:dye:15>*4, [<byg:woodenmortar>.reuse(), <minecraft:bone>]);

// Remove terracotta & concrete colouring
recipes.addShapeless("remove_terracotta_colour", <minecraft:hardened_clay>, [rearranger, <minecraft:stained_hardened_clay:*>]);

RecipeBuilder.get("basic")
  .setShapeless([rearranger, <minecraft:concrete:*>])
  .addOutput(<minecraft:gravel> * 2)
  .setExtraOutputOne(<minecraft:gravel> * 2, 0.5)
  .setExtraOutputTwo(<minecraft:sand> * 2, 1.0)
  .setExtraOutputThree(<minecraft:sand> * 2, 0.5)
  .addRequirement(FTGU.allOf(["cyborg:crafting/basic"]))
  .setName("decraft_concrete")
  .create();

// Swap mushroom types
recipes.addShapeless("mushroom_conversion_red", <minecraft:red_mushroom>*5, [rearranger, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>]);
recipes.addShapeless("mushroom_conversion_brown", <minecraft:brown_mushroom>*5, [rearranger, <minecraft:red_mushroom>, <minecraft:red_mushroom>, <minecraft:red_mushroom>, <minecraft:red_mushroom>, <minecraft:red_mushroom>]);

// Convert Slimeballs into vanilla ones
recipes.addShapeless("slimeball_conversion", <minecraft:slime_ball>*3, [rearranger, <ore:slimeball>, <ore:slimeball>, <ore:slimeball>]);

// Convert Slime Blocks into Leather
recipes.addShapeless("slime_conversion", <minecraft:leather>*3, [rearranger, <minecraft:slime>]);

// Convert Glacium into Water or Cryotheum
recipes.addShapeless("glacium_conversion_water", <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), [rearranger, <glacidus:underground_water_bucket>, <ceramics:clay_bucket>|<ceramics:unfired_clay>]);

recipes.addShapeless("glacium_conversion_water_clay", <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), [rearranger, <glacidus:underground_water_bucket>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]);

recipes.addShapeless("glacium_conversion", <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), [rearranger, <glacidus:glacium_bucket>, <minecraft:bucket>]);

recipes.addShapeless("glacium_conversion_iron", <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), [rearranger, <glacidus:glacium_bucket>, <minecraft:iron_ingot>|<thermalfoundation:material>, <minecraft:iron_ingot>|<thermalfoundation:material>, <minecraft:iron_ingot>|<thermalfoundation:material>]);

// Craft Cursed & Enchanted Hearts
recipes.addShaped(<scalinghealth:difficultychanger>, [[<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <contenttweaker:molecular_rearranger>, <scalinghealth:heartdust>],
                                      [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]]);

recipes.addShaped(<scalinghealth:difficultychanger:1>, [[null, <scalinghealth:heartdust>, null],
                                      [<scalinghealth:heartdust>, <contenttweaker:molecular_rearranger>, <scalinghealth:heartdust>],
                                      [null, <scalinghealth:heartdust>, null]]);

print("rearranger.zs loaded");