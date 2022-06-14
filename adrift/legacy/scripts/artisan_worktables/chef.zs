# Adds recipes to the Chef's worktable/station/shop

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("chef.zs loading...");
/*
Regular table recipes & tooltips & such are in artisan_worktables.zs

https://artisan-worktables.readthedocs.io/en/latest/recipes/gettingstarted/
https://artisan-worktables.readthedocs.io/en/latest/recipes/tools/
https://artisan-worktables.readthedocs.io/en/latest/recipes/basic/
*/

### Boosted Fish Fillet recipes
# Old ones remain, but these are better
# Each one uses 5 Cutting Board durability

# Vanilla Fish
# Uses 2 durability
// Fish
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:fish>|<minecraft:cod>])
  .addTool(<ore:artisansCuttingBoard>, 2)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.05)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_fish")
  .create();

// Salmon
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:fish:1>|<minecraft:salmon>])
  .addTool(<ore:artisansCuttingBoard>, 2)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.5)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_salmon")
  .create();

// Clownfish
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:fish:2>|<minecraft:clownfish>])
  .addTool(<ore:artisansCuttingBoard>, 2)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<aquaculture:food:3>, 0.75)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_clownfish")
  .create();

// Pufferfish
RecipeBuilder.get("chef")
  .setShapeless([<minecraft:fish:3>|<minecraft:pufferfish>])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<aquaculture:food:3> * 3)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_pufferfish")
  .create();


# Modded Fish
// Goldfish
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:37>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<minecraft:gold_nugget>, 1.0)
  .setExtraOutputTwo(<minecraft:gold_nugget>*2, 0.5)
  .setExtraOutputTwo(<minecraft:gold_nugget>, 0.25)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_goldfish")
  .create();

// Blowfish
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:8>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 3)
  .setExtraOutputOne(<aquaculture:food:3> * 2, 0.5)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_blowfish")
  .create();

// Carp
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:7>|<harvestcraft:carprawitem>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 5)
  .setExtraOutputOne(<contenttweaker:fish_oil> * 3, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_carp")
  .create();

// Catfish
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:6>|<harvestcraft:catfishrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 6)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_catfish")
  .create();

// Brown Trout
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:5>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 4)
  .setExtraOutputOne(<aquaculture:food:3>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_brown_trout")
  .create();

// Muskellunge
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:4>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 5)
  .setExtraOutputOne(<contenttweaker:fish_oil> * 2, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_muskellunge")
  .create();

// Bass
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:3>|<harvestcraft:bassrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 4)
  .addOutput(<aquaculture:food:3> * 4)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.75)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_bass")
  .create();

// Gar
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:2>])
  .addTool(<ore:artisansCuttingBoard>, 6)
  .addOutput(<aquaculture:food:3> * 4)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_gar")
  .create();

// Syndontis
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:34>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<aquaculture:food:3>, 0.5)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_syndontis")
  .create();

// Bagrid
// Sadly not an off-brand wizard :c
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:33>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 3)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_badgrid")
  .create();

// Boulti
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:32>])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.45)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_boulti")
  .create();

// Capitaine
// Picard?
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:31>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 5)
  .setExtraOutputOne(<aquaculture:food:3>, 0.5)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 0.35)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_capitaine")
  .create();

// Blackfish
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:30>])
  .addTool(<ore:artisansCuttingBoard>, 4)
  .addOutput(<aquaculture:food:3> * 3)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_blackfish")
  .create();

// Rainbow Trout
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:29>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 6)
  .setExtraOutputOne(<contenttweaker:fish_oil> * 2, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_rainbow_trout")
  .create();

// Halibut
// Arrow is a half-reference to the Halibut Cannon from the Calamity Mod
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:27>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 8)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.85)
  .setExtraOutputTwo(<minecraft:arrow>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_halibut")
  .create();

// Herring
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:26>|<harvestcraft:herringrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.25)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_herring")
  .create();

// Polluck
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:25>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_polluck")
  .create();

// Perch
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:1>|<harvestcraft:perchrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 1)
  .addOutput(<aquaculture:food:3> * 2)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_perch")
  .create();

// Cod
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:24>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 7)
  .setExtraOutputOne(<aquaculture:food:3>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_cod")
  .create();

// Tambaqui
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:22>])
  .addTool(<ore:artisansCuttingBoard>, 1)
  .addOutput(<aquaculture:food:3> * 5)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.75)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_tambaqui")
  .create();

// Electric Eel
// See, it's electric... so you can get wires! Funny, I know.
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:21>])
  .addTool(<ore:artisansCuttingBoard>, 7)
  .addOutput(<aquaculture:food:3> * 5)
  .setExtraOutputOne(<better_diving:wiring_kit>, 0.1)
  .setExtraOutputTwo(<contenttweaker:advanced_wiring_kit>, 0.01)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_electric_eel")
  .create();

// Pirahna
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:20>])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<minecraft:flint>, 0.3)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_pirahna")
  .create();

// Swordfish
// This one is pretty self-explanatory tbh
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:12>])
  .addTool(<ore:artisansCuttingBoard>, 7)
  .addOutput(<aquaculture:food:3> * 9)
  .setExtraOutputOne(<minecraft:stone_sword>, 0.1)
  .setExtraOutputTwo(<minecraft:iron_sword>, 0.1)
  .setExtraOutputThree(<minecraft:golden_sword>, 0.1)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_swordfish")
  .create();

// Tuna
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:11>|<harvestcraft:tunarawitem>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 6)
  .setExtraOutputOne(<contenttweaker:fish_oil> * 2, 0.65)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_tuna")
  .create();

// Salmon
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:10>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 6)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_aqua_salmon")
  .create();

// Pink Salmon
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:28>])
  .addTool(<ore:artisansCuttingBoard>, 5)
  .addOutput(<aquaculture:food:3> * 6)
  .setExtraOutputOne(<contenttweaker:fish_oil>, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_pink_salmon")
  .create();

// Red Grouper
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:9>|<harvestcraft:grouperrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 1)
  .addOutput(<aquaculture:food:3> * 6)
  .setExtraOutputOne(<aquaculture:food:3> * 2, 0.5)
  .setExtraOutputTwo(<contenttweaker:fish_oil>, 0.4)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_grouper")
  .create();

// Bluegill
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish>])
  .addTool(<ore:artisansCuttingBoard>, 3)
  .addOutput(<aquaculture:food:3> * 2)
  .setExtraOutputOne(<aquaculture:food:3>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("fillet_bluegill")
  .create();



## Big Fish
// Calamari from Squid
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:15>])
  .addTool(<ore:artisansKnife>, 15)
  .addOutput(<harvestcraft:calamarirawitem> * 5)
  .setExtraOutputOne(<aquaculture:food:2> * 3, 0.5)
  .setExtraOutputTwo(<harvestcraft:calamarirawitem>*3, 0.5)
  .setExtraOutputThree(<minecraft:dye> * 3, 0.75)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("calamari")
  .create();

// Arapima
recipes.removeByRecipeName("aquaculture:filet_18");
recipes.addShapeless(<aquaculture:food:2>*4, [<aquaculture:fish:23>]);
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:23>])
  .addTool(<ore:artisansKnife>, 15)
  .addOutput(<aquaculture:food:2> * 6)
  .setExtraOutputOne(<contenttweaker:fish_oil> * 5, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("large_fillet_arapima")
  .create();

// Shark
recipes.removeByRecipeName("aquaculture:filet_14");
recipes.addShapeless(<aquaculture:food:2>*3, [<aquaculture:fish:13>]);
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:13>])
  .addTool(<ore:artisansKnife>, 20)
  .addOutput(<aquaculture:food:2> * 6)
  .setExtraOutputOne(<aquaculture:food:3> * 5, 1.0)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("large_fillet_shark")
  .create();

// Whale
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:14>])
  .addTool(<ore:artisansKnife>, 30)
  .addOutput(<aquaculture:food:2> * 8)
  .setExtraOutputOne(<aquaculture:food:2> * 4, 0.5)
  .setExtraOutputTwo(<aquaculture:food:2> * 2, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/furnace"]))
  .setName("large_fillet_whale")
  .create();


# Jellyfish
RecipeBuilder.get("chef")
  .setShapeless([<aquaculture:fish:16>|<harvestcraft:jellyfishrawitem>])
  .addTool(<ore:artisansCuttingBoard>, 2)
  .addOutput(<minecraft:slime_ball> * 2)
  .setExtraOutputOne(<minecraft:slime_ball>, 0.5)
  .addRequirement(FTGU.allOf(["adrift:survival/advanced_cooking"]))
  .setName("jellyfish_to_slimeballs")
  .create();

print("chef.zs loaded");