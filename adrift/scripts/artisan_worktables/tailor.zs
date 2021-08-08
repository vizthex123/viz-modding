# Adds recipes to the tailor worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("tailor.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

// Change beds to require a tailor's worktable
// Too lazy to make recipes for all of them, so I'll just keep the dyed ones.
recipes.removeShaped(<minecraft:bed:*>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansNeedle>, 30)
  .addOutput(<minecraft:bed>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("bed")
  .create();

// Woven Cotton
recipes.removeByRecipeName("harvestcraft:string_cropcotton");
RecipeBuilder.get("tailor")
  .setShapeless([<ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>])
  .addTool(<ore:artisansNeedle>, 3)
  .addOutput(<harvestcraft:wovencottonitem> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("woven_cotton")
  .create();

// Wool
recipes.remove(<minecraft:wool>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:string>, <ore:string>],
    [<ore:string>, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<minecraft:wool>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("wool")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>])
  .addTool(<ore:artisansNeedle>, 2)
  .addOutput(<minecraft:wool>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("wool_with_cotton")
  .create();

// Water Filter
RecipeBuilder.get("tailor")
  .setShaped([
    [<better_diving:fiber_mesh>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>],
    [<waterstrainer:net:1>, <waterstrainer:net:1>, <waterstrainer:net:1>],
    [<better_diving:fiber_mesh>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>]])
  .addTool(<ore:artisansNeedle>, 32)
  .addOutput(<contenttweaker:water_filter>*2)
  .addRequirement(FTGU.allOf(["adrift:technology/modular_machinery"]))
  .setName("water_filter")
  .create();

### Leather Armour
# Durability: 0.5x piece req, rounded down
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);

// Helmet
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 2)
  .addOutput(<minecraft:leather_helmet>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("leather_cap")
  .create();

// Chestplate
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, null, <ore:leather>],
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <ore:leather>, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<minecraft:leather_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("leather_tunic")
  .create();

// Leggings
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, null, <ore:leather>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 3)
  .addOutput(<minecraft:leather_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("leather_leggings")
  .create();

// Boots
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, null, <ore:leather>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 2)
  .addOutput(<minecraft:leather_boots>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("leather_boots")
  .create();


### Hardened Leather Armour
# Durability: 0.75x piece req, rounded down
recipes.remove(<harvestcraft:hardenedleatherhelmitem>);
recipes.remove(<harvestcraft:hardenedleatherchestitem>);
recipes.remove(<harvestcraft:hardenedleatherleggingsitem>);
recipes.remove(<harvestcraft:hardenedleatherbootsitem>);

// Helmet
RecipeBuilder.get("tailor")
  .setShaped([
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],
    [<ore:string>, null, <ore:string>]])
  .addTool(<ore:artisansNeedle>, 3)
  .addOutput(<harvestcraft:hardenedleatherhelmitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/hardened_leather"]))
  .setName("hardened_leather_helmet")
  .create();

// Chestplate
RecipeBuilder.get("tailor")
  .setShaped([
    [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>],
    [<ore:string>, <harvestcraft:hardenedleatheritem>, <ore:string>],
    [<harvestcraft:hardenedleatheritem>, <ore:string>, <harvestcraft:hardenedleatheritem>]])
  .addTool(<ore:artisansNeedle>, 6)
  .addOutput(<harvestcraft:hardenedleatherchestitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/hardened_leather"]))
  .setName("hardened_leather_chestplate")
  .create();

// Leggings
RecipeBuilder.get("tailor")
  .setShaped([
    [<harvestcraft:hardenedleatheritem>, <ore:string>, <harvestcraft:hardenedleatheritem>],
    [<ore:string>, null, <ore:string>],
    [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<harvestcraft:hardenedleatherleggingsitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/hardened_leather"]))
  .setName("hardened_leather_leggings")
  .create();

// Boots
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:string>, null, <ore:string>],
    [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]])
  .addTool(<ore:artisansNeedle>, 3)
  .addOutput(<harvestcraft:hardenedleatherbootsitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/hardened_leather"]))
  .setName("hardened_leather_boots")
  .create();


### Bone Armour
# Durability: 1.25x piece req, rounded down
recipes.remove(<bonecraft:bonehelmitem>);
recipes.remove(<bonecraft:bonechestitem>);
recipes.remove(<bonecraft:bonelegsitem>);
recipes.remove(<bonecraft:bonebootsitem>);

// Helmet
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, <ore:bone>, <ore:leather>],
    [<ore:bone>, null, <ore:bone>]])
  .addTool(<ore:artisansNeedle>, 6)
  .addOutput(<bonecraft:bonehelmitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("bone_helmet")
  .create();

// Chestplate
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:bone>, null, <ore:bone>],
    [<ore:bone>, <ore:leather>, <ore:bone>],
    [<ore:leather>, <ore:bone>, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<bonecraft:bonechestitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("bone_chestplate")
  .create();

// Leggings
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:bone>, <ore:bone>, <ore:bone>],
    [<ore:leather>, null, <ore:leather>],
    [<ore:bone>, null, <ore:bone>]])
  .addTool(<ore:artisansNeedle>, 8)
  .addOutput(<bonecraft:bonelegsitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("bone_leggings")
  .create();

// Boots
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:bone>, null, <ore:bone>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<bonecraft:bonebootsitem>)
  .addRequirement(FTGU.allOf(["adrift:survival/tailor"]))
  .setName("bone_boots")
  .create();

# Studded Armour
# Durability: 1.5x piece req, rounded down (e.g. 7 for helmet)
# For chain link recipe, it uses 2x piece req
recipes.remove(<clmodcev:studded_cap>);
recipes.remove(<clmodcev:studded_tunic>);
recipes.remove(<clmodcev:studded_leggings>);
recipes.remove(<clmodcev:studded_boots>);

// Helmet
RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:chainmail_helmet:*>, <minecraft:leather_helmet:*>])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<clmodcev:studded_cap>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_helmet_combine")
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<clmodcev:chain_link>, <ore:leather>, <clmodcev:chain_link>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<clmodcev:studded_cap>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_helmet")
  .create();

// Chestplate
RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:chainmail_chestplate:*>, <minecraft:leather_chestplate:*>])
  .addTool(<ore:artisansNeedle>, 12)
  .addOutput(<clmodcev:studded_tunic>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_tunic_combine")
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, null, <ore:leather>],
    [<clmodcev:chain_link>, <ore:leather>, <clmodcev:chain_link>],
    [<ore:leather>, <clmodcev:chain_link>, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<clmodcev:studded_tunic>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_tunic")
  .create();

// Leggings
RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:chainmail_leggings:*>, <minecraft:leather_leggings:*>])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<clmodcev:studded_leggings>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_leggings_combine")
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:leather>, <clmodcev:chain_link>, <ore:leather>],
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 14)
  .addOutput(<clmodcev:studded_leggings>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_leggings")
  .create();

// Boots
RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:chainmail_boots:*>, <minecraft:leather_boots:*>])
  .addTool(<ore:artisansNeedle>, 6)
  .addOutput(<clmodcev:studded_boots>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_boots_combine")
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>],
    [<ore:leather>, null, <ore:leather>]])
  .addTool(<ore:artisansNeedle>, 8)
  .addOutput(<clmodcev:studded_boots>)
  .addRequirement(FTGU.anyOf(["adrift:smithing/chainmail", "adrift:survival/studded_armour"]))
  .setName("studded_boots")
  .create();

### New recipes for Chainmail armour
# Durability: 0.5x piece req
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);

// Helmet
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<clmodcev:chain_link>, <clmodcev:chain_link>, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>]])
  .addTool(<ore:artisansPliers>, 2)
  .addOutput(<minecraft:chainmail_helmet>)
  .addRequirement(FTGU.allOf(["adrift:smithing/chainmail"]))
  .setName("chainmail_helmet")
  .create();

// Chestplate
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, <clmodcev:chain_link>, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, <clmodcev:chain_link>, <clmodcev:chain_link>]])
  .addTool(<ore:artisansPliers>, 4)
  .addOutput(<minecraft:chainmail_chestplate>)
  .addRequirement(FTGU.allOf(["adrift:smithing/chainmail"]))
  .setName("chainmail_chestplate")
  .create();

// Leggings
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<clmodcev:chain_link>, <clmodcev:chain_link>, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>]])
  .addTool(<ore:artisansPliers>, 3)
  .addOutput(<minecraft:chainmail_leggings>)
  .addRequirement(FTGU.allOf(["adrift:smithing/chainmail"]))
  .setName("chainmail_leggings")
  .create();

// Boots
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>],
    [<clmodcev:chain_link>, null, <clmodcev:chain_link>]])
  .addTool(<ore:artisansPliers>, 2)
  .addOutput(<minecraft:chainmail_boots>)
  .addRequirement(FTGU.allOf(["adrift:smithing/chainmail"]))
  .setName("chainmail_boots")
  .create();


# Repair Better Diving gear
# Reinforced gear takes 2x the durability
// Diving Masks
RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:diving_mask:*>, <ore:blockGlass>])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<better_diving:diving_mask>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_diving_mask")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:diving_mask:*>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<better_diving:diving_mask>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_diving_mask_fiber_mesh")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:rebreather:*>, <ore:titanium>])
  .addTool(<ore:artisansNeedle>, 5)
  .addOutput(<better_diving:rebreather>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_rebreather")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:rebreather:*>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<better_diving:rebreather>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_rebreather_fiber")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:reinforced_diving_mask:*>, <ore:gemDiamond>|<ore:titanium>])
  .addTool(<ore:artisansNeedle>, 10)
  .addOutput(<better_diving:reinforced_diving_mask>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_reinforced_diving_mask")
  .create();


// Oxygen Tanks
RecipeBuilder.get("blacksmith")
  .setShapeless([<better_diving:standard_o2_tank:*>, <ore:titanium>])
  .addTool(<ore:artisansSpanner>, 3)
  .addOutput(<better_diving:standard_o2_tank>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_oxygen_tank")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<better_diving:high_capacity_o2_tank:*>, <ore:titanium>|<ore:silver>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansSpanner>, 6)
  .addOutput(<better_diving:high_capacity_o2_tank>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_high_capacity_oxygen_tank")
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<better_diving:reinforced_o2_tank:*>, <ore:gemDiamond>|<ore:titanium>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansSpanner>, 12)
  .addOutput(<better_diving:reinforced_o2_tank>)
  .create();


// Wetsuit Leggings
RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:wetsuit_leggings:*>, <ore:titanium>])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<better_diving:wetsuit_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_wetsuit")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:wetsuit_leggings:*>, <ore:itemSilicon>, <ore:itemSilicon>])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<better_diving:wetsuit_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_wetsuit_silicon")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:improved_wetsuit_leggings:*>, <ore:titanium>])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<better_diving:improved_wetsuit_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_improved_wetsuit")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:improved_wetsuit_leggings:*>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansNeedle>, 7)
  .addOutput(<better_diving:improved_wetsuit_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_improved_wetsuit_fiber_mesh")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:reinforced_wetsuit_leggings:*>, <ore:gemDiamond>|<ore:titanium>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansNeedle>, 14)
  .addOutput(<better_diving:reinforced_wetsuit_leggings>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_reinforced_wetsuit")
  .create();


// Fins
RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:fins:*>, <ore:itemSilicon>])
  .addTool(<ore:artisansNeedle>, 2)
  .addOutput(<better_diving:fins>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_fins")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:ultra_glide_fins:*>, <ore:titanium>, <ore:silver>])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<better_diving:ultra_glide_fins>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_ultra_glide_fins")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:ultra_glide_fins:*>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<better_diving:ultra_glide_fins>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_ultra_glide_fins_fiber_mesh")
  .create();

RecipeBuilder.get("tailor")
  .setShapeless([<better_diving:reinforced_fins>, <ore:gemDiamond>, <ore:titanium>])
  .addTool(<ore:artisansNeedle>, 8)
  .addOutput(<better_diving:reinforced_fins>)
  .addRequirement(FTGU.allOf(["adrift:survival/repair"]))
  .setName("repair_reinforced_fins")
  .create();


print("tailor.zs loaded");