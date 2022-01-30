# Changes things for the Foundry mod
/*
recipes.remove(<>);
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);

mods.foundry.Melting.addRecipe(<liquid_output>, <input>, @Optional int melting_point, @Optional int speed);
- Default melting point is the liquid's temperature, default speed is 100
*/

print("foundry.zs loading...");

// Add Paxel Cast
mods.foundry.Casting.addMold(<contenttweaker:paxelmold>);

// Melting recipes
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*300, <minecraft:compass>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*100, <minecraft:flint_and_steel:*>, 900);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*500, <minecraft:minecart>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*300, <minecraft:bucket>);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*100, <minecraft:golden_rail>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*50, <minecraft:activator_rail>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*50, <minecraft:detector_rail>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*37, <minecraft:rail>);

mods.foundry.Melting.addRecipe(<liquid:liquidiron>*100, <minecraft:iron_sword:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*150, <minecraft:iron_pickaxe:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*50, <minecraft:iron_shovel:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*100, <minecraft:iron_hoe:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*150, <minecraft:iron_axe:*>);

mods.foundry.Melting.addRecipe(<liquid:liquidgold>*100, <minecraft:golden_sword:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*150, <minecraft:golden_pickaxe:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*50, <minecraft:golden_shovel:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*100, <minecraft:golden_hoe:*>);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*150, <minecraft:golden_axe:*>);

mods.foundry.Melting.addRecipe(<liquid:liquidgold>*600, <ironfurnaces:iron_furnace_idle>, 1850, 75);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*600, <ironfurnaces:gold_furnace_idle>, 1400, 50);

mods.foundry.Melting.addRecipe(<liquid:liquidgold>*100, <forestry:broken_bronze_pickaxe>, 1000, 65);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*25, <forestry:broken_bronze_shovel>, 1000, 65);

mods.foundry.Melting.addRecipe(<liquid:liquidgold>*200, <forestry:bronze_pickaxe>, 1000);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*50, <forestry:bronze_shovel>, 1000);






// Reduce copper to 800K
mods.foundry.Melting.removeRecipe(<ore:oreCopper>.firstItem);
mods.foundry.Melting.addRecipe(<liquid:liquidcopper>*150, <ore:oreCopper>, 800);

// Reduce Aluminum to 400K
mods.foundry.Melting.removeRecipe(<ore:oreAluminum>.firstItem);
mods.foundry.Melting.addRecipe(<liquid:liquidaluminium>*150, <ore:oreAluminum>, 400);

// Boost Lead to 1850K, and Silver to 2000K so you have to get a Standard crucible before being able to process them
mods.foundry.Melting.removeRecipe(<ore:oreLead>.firstItem);
mods.foundry.Melting.addRecipe(<liquid:liquidlead>*150, <ore:oreLead>, 1850);

mods.foundry.Melting.removeRecipe(<ore:oreSilver>.firstItem);
mods.foundry.Melting.addRecipe(<liquid:liquidsilver>*150, <ore:oreSilver>, 2000);


// Change Revolver components to use Iron
// Uses a bit more than with Steel, 4 ingots instead of 3.75 (because I hate having extras lol)
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:19>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:20>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:21>);

mods.foundry.Casting.addRecipe(<foundry:component:3>, <liquid:liquidiron>*150, <foundry:mold:19>, null, 100);
mods.foundry.Casting.addRecipe(<foundry:component:4>, <liquid:liquidiron>*100, <foundry:mold:20>, null, 75);
mods.foundry.Casting.addRecipe(<foundry:component:5>, <liquid:liquidiron>*150, <foundry:mold:21>, null, 150);

// Fixes their melting recipes
mods.foundry.Melting.removeRecipe(<foundry:component:3>);
mods.foundry.Melting.removeRecipe(<foundry:component:4>);
mods.foundry.Melting.removeRecipe(<foundry:component:5>);

mods.foundry.Melting.addRecipe(<liquid:liquidiron>*150, <foundry:component:3>, 1700);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*100, <foundry:component:4>, 1750);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*150, <foundry:component:5>, 2000);

// Change bullets to use 1/4 of an ingot (25 mB) per bullet
mods.foundry.Casting.removeRecipe(<liquid:liquidlead>, <foundry:mold:16>);
mods.foundry.Casting.removeRecipe(<liquid:liquidlead>, <foundry:mold:17>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:16>, <foundry:component:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:16>);
mods.foundry.Casting.removeRecipe(<liquid:liquidlumium>, <foundry:mold:16>);

mods.foundry.Casting.addRecipe(<foundry:component:7>, <liquid:liquidlead>*25, <foundry:mold:16>, null, 25);
mods.foundry.Casting.addRecipe(<foundry:component:8>, <liquid:liquidlead>*50, <foundry:mold:17>, null, 50);
mods.foundry.Casting.addRecipe(<foundry:component:9>, <liquid:liquidcopper>*25, <foundry:mold:16>, <foundry:component:7>, 20);
mods.foundry.Casting.addRecipe(<foundry:component:14>, <liquid:liquidsteel>*25, <foundry:mold:16>, null, 30);
mods.foundry.Casting.addRecipe(<foundry:component:19>, <liquid:liquidlumium>*25, <foundry:mold:16>, null, 10);

// Round Casing - 25 mB
mods.foundry.Casting.removeRecipe(<liquid:liquidbrass>, <foundry:mold:18>);

mods.foundry.Casting.addRecipe(<foundry:component:6>, <liquid:liquidbronze>*25, <foundry:mold:18>, null, 25);


// Change melting recipes for all of them
// Amounts are divided by the fluid cost of the recipe
mods.foundry.Melting.removeRecipe(<foundry:component:6>);
mods.foundry.Melting.removeRecipe(<foundry:component:7>);
mods.foundry.Melting.removeRecipe(<foundry:component:8>);
mods.foundry.Melting.removeRecipe(<foundry:component:9>);
mods.foundry.Melting.removeRecipe(<foundry:component:14>);
mods.foundry.Melting.removeRecipe(<foundry:component:19>);

mods.foundry.Melting.addRecipe(<liquid:liquidbronze>*25, <foundry:component:6>, 325);
mods.foundry.Melting.addRecipe(<liquid:liquidlead>*25, <foundry:component:7>, 460);
mods.foundry.Melting.addRecipe(<liquid:liquidlead>*50, <foundry:component:8>, 465);
mods.foundry.Melting.addRecipe(<liquid:liquidcopper>*25, <foundry:component:9>, 300);
mods.foundry.Melting.addRecipe(<liquid:liquidsteel>*25, <foundry:component:14>, 450);
mods.foundry.Melting.addRecipe(<liquid:liquidlumium>*25, <foundry:component:19>, 625);



// Change pellets to use 1/10 of an ingot (10 mB) per cast
mods.foundry.Casting.removeRecipe(<liquid:liquidlead>, <foundry:mold:22>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:22>);
mods.foundry.Casting.removeRecipe(<liquid:liquidlumium>, <foundry:mold:22>);

mods.foundry.Casting.addRecipe(<foundry:component:10>, <liquid:liquidlead>*10, <foundry:mold:22>, null, 25);
mods.foundry.Casting.addRecipe(<foundry:component:15>, <liquid:liquidsteel>*10, <foundry:mold:22>, null, 12);
mods.foundry.Casting.addRecipe(<foundry:component:20>, <liquid:liquidlumium>*10, <foundry:mold:22>, null, 6);

// Shell Casing - 50 mB
mods.foundry.Casting.removeRecipe(<liquid:liquidbrass>, <foundry:mold:23>);

mods.foundry.Casting.addRecipe(<foundry:component:11>, <liquid:liquidbronze>*50, <foundry:mold:23>, null, 50);


// Change melting recipes for all of them
// Amounts are divided by the fluid cost of the recipe
mods.foundry.Melting.removeRecipe(<foundry:component:10>);
mods.foundry.Melting.removeRecipe(<foundry:component:15>);
mods.foundry.Melting.removeRecipe(<foundry:component:20>);

mods.foundry.Melting.addRecipe(<liquid:liquidlead>*10, <foundry:component:10>, 300);
mods.foundry.Melting.addRecipe(<liquid:liquidsteel>*10, <foundry:component:15>, 325);
mods.foundry.Melting.addRecipe(<liquid:liquidlumium>*10, <foundry:component:20>, 400);

mods.foundry.Melting.removeRecipe(<foundry:component:11>);

mods.foundry.Melting.addRecipe(<liquid:liquidbronze>*50, <foundry:component:11>, 300);



// Basic Crucible
recipes.remove(<foundry:machine>);
recipes.addShaped(<foundry:machine>, [[<minecraft:brick>, <minecraft:furnace>, <minecraft:brick>],
                          			[<minecraft:brick>, <foundry:componentblock:3>, <minecraft:brick>],
                                		       	[<minecraft:brick>, <ore:plateBronze>, <minecraft:brick>]]);
mods.foundry.Melting.addRecipe(<liquid:liquidbronze>*500, <foundry:machine>, 1625);

// Standard Crucible
recipes.remove(<foundry:machine:8>);
recipes.addShaped(<foundry:machine:8>, [[<foundry:component:2>, <foundry:bronzecauldron>, <foundry:component:2>],
                               			   [<foundry:component:2>, <foundry:componentblock>, <foundry:component:2>],
                                  		       	   [<foundry:component:2>, <ore:plateIron>, <foundry:component:2>]]);
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*500, <foundry:machine:8>, 3000);

// Advanced Crucible
recipes.remove(<foundry:machine:7>);
recipes.addShaped(<foundry:machine:7>, [[<foundry:component:18>, <minecraft:cauldron>, <foundry:component:18>],
                               			   [<foundry:component:18>, <foundry:componentblock:2>, <foundry:component:18>],
                                  		       	   [<foundry:component:18>, <ore:plateSteel>, <foundry:component:18>]]);

// Inferno Clay recipe change
recipes.remove(<foundry:component:17>);
recipes.addShaped(<foundry:component:17>*8, [[<foundry:component:1>, <foundry:component:1>, <foundry:component:1>],
                                   			                [<foundry:component:1>, <minecraft:lava_bucket>, <foundry:component:1>],
                                  	  		                [<foundry:component:1>, <foundry:component:1>, <foundry:component:1>]]);

// Rods (LibVuples) Recipes
// Advanced & Alloy ones are in ExtendedCrafting.zs
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:6>);

mods.foundry.Casting.addRecipe(<libvulpes:productrod:1>*4, <liquid:liquidiron>*300, <foundry:mold:3>, null, 50);
mods.foundry.Casting.addRecipe(<libvulpes:productrod:4>*4, <liquid:liquidcopper>*300, <foundry:mold:3>, null, 50);
mods.foundry.Casting.addRecipe(<libvulpes:productrod:6>*4, <liquid:liquidsteel>*300, <foundry:mold:3>, null, 50);

// Iron Barrel (Tech Guns) recipe
recipes.remove(<techguns:itemshared:38>);
mods.foundry.Casting.addRecipe(<techguns:itemshared:38>, <liquid:liquidiron>*500, <foundry:mold:19>, <minecraft:iron_ingot>, 300);

// Alloy Furnace recipe fixer
// Because they have 47 recipes for the same stupid item and that's annoying & dumb.
// NOTE: Does not support the ore dictionary! (for {most} ingots at least) Idk why, it just hates working.
mods.foundry.AlloyFurnace.clear();

mods.foundry.AlloyFurnace.addRecipe(<foundry:refractoryglass>, <ore:blockGlass>, <minecraft:clay_ball>);
mods.foundry.AlloyFurnace.addRecipe(<foundry:refractoryglass>, <ore:sand>, <minecraft:clay_ball>*2);
mods.foundry.AlloyFurnace.addRecipe(<mekanism:ingot:2>*4, <mekanism:ingot:5>*3, <mekanism:ingot:6>);
mods.foundry.AlloyFurnace.addRecipe(<thermalfoundation:material:162>*3, <minecraft:iron_ingot>*2, <ore:ingotNickel>);
mods.foundry.AlloyFurnace.addRecipe(<thermalfoundation:material:161>*2, <minecraft:gold_ingot>*2, <magneticraft:ingots:12>*2);
mods.foundry.AlloyFurnace.addRecipe(<mekanism:ingot:4>, <advancedrocketry:misc:1>, <minecraft:iron_ingot>);
mods.foundry.AlloyFurnace.addRecipe(<mekanism:ingot:4>*2, <thermalfoundation:material:802>, <minecraft:iron_ingot>);
mods.foundry.AlloyFurnace.addRecipe(<thermalfoundation:glass:3>*2, <mekanism:otherdust:6>*4, <magneticraft:ingots:3>);


# Changes the way you craft tools & armour
# Lets you use the caster & molds to make the item for cheaper
// Casting Removal
/*
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:12>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:13>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:14>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:15>);

mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidiron>, <foundry:mold:11>);


mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:12>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:13>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:14>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:15>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:7>);

mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:11>);


mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:12>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:13>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:14>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:15>);

mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsteel>, <foundry:mold:11>);



mods.foundry.Casting.removeRecipe(<liquid:liquidnickel>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidinvar>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidtin>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsilver>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidelectrum>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminum>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidplatinum>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcupronickel>, <foundry:mold:7>);
mods.foundry.Casting.removeRecipe(<liquid:liquidgold>, <foundry:mold:7>);

mods.foundry.Casting.removeRecipe(<liquid:liquidnickel>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidinvar>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidtin>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsilver>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidelectrum>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminum>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidplatinum>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcupronickel>, <foundry:mold:8>);
mods.foundry.Casting.removeRecipe(<liquid:liquidgold>, <foundry:mold:8>);

mods.foundry.Casting.removeRecipe(<liquid:liquidnickel>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidinvar>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidtin>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsilver>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidelectrum>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminum>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidplatinum>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcupronickel>, <foundry:mold:9>);
mods.foundry.Casting.removeRecipe(<liquid:liquidgold>, <foundry:mold:9>);

mods.foundry.Casting.removeRecipe(<liquid:liquidnickel>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidinvar>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidtin>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsilver>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidelectrum>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminum>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidplatinum>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcupronickel>, <foundry:mold:10>);
mods.foundry.Casting.removeRecipe(<liquid:liquidgold>, <foundry:mold:10>);

mods.foundry.Casting.removeRecipe(<liquid:liquidnickel>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidinvar>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidtin>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidsilver>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidelectrum>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidaluminum>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidbronze>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcopper>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidplatinum>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidcupronickel>, <foundry:mold:11>);
mods.foundry.Casting.removeRecipe(<liquid:liquidgold>, <foundry:mold:11>);
*/

# Recipe Additions
// Bronze
mods.foundry.Casting.addRecipe(<mekanismtools:bronzepickaxe>, <liquid:liquidbronze>*200, <foundry:mold:7>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzeaxe>, <liquid:liquidbronze>*200, <foundry:mold:8>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzesword>, <liquid:liquidbronze>*100, <foundry:mold:9>, <minecraft:stick>);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzeshovel>, <liquid:liquidbronze>*50, <foundry:mold:10>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzehoe>, <liquid:liquidbronze>*100, <foundry:mold:11>, <minecraft:stick>*2);

mods.foundry.Casting.addRecipe(<mekanismtools:bronzehelmet>, <liquid:liquidbronze>*300, <foundry:mold:12>);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzechestplate>, <liquid:liquidbronze>*600, <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzeleggings>, <liquid:liquidbronze>*500, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<mekanismtools:bronzeboots>, <liquid:liquidbronze>*300, <foundry:mold:15>);


// Iron
mods.foundry.Casting.addRecipe(<minecraft:iron_pickaxe>, <liquid:liquidiron>*200, <foundry:mold:7>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<minecraft:iron_axe>, <liquid:liquidiron>*200, <foundry:mold:8>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<minecraft:iron_sword>, <liquid:liquidiron>*100, <foundry:mold:9>, <minecraft:stick>);
mods.foundry.Casting.addRecipe(<minecraft:iron_shovel>, <liquid:liquidiron>*50, <foundry:mold:10>, <minecraft:stick>*2);
mods.foundry.Casting.addRecipe(<minecraft:iron_hoe>, <liquid:liquidiron>*100, <foundry:mold:11>, <minecraft:stick>*2);

mods.foundry.Casting.addRecipe(<minecraft:iron_helmet>, <liquid:liquidiron>*500, <foundry:mold:12>);
mods.foundry.Casting.addRecipe(<minecraft:iron_chestplate>, <liquid:liquidiron>*800, <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<minecraft:iron_leggings>, <liquid:liquidiron>*700, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<minecraft:iron_boots>, <liquid:liquidiron>*400, <foundry:mold:15>);

// Steel
mods.foundry.Casting.addRecipe(<mekanismtools:steelpickaxe>, <liquid:liquidsteel>*200, <foundry:mold:7>, <minecraft:iron_ingot>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:steelaxe>, <liquid:liquidsteel>*200, <foundry:mold:8>, <minecraft:iron_ingot>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:steelsword>, <liquid:liquidsteel>*100, <foundry:mold:9>, <minecraft:iron_ingot>);
mods.foundry.Casting.addRecipe(<mekanismtools:steelshovel>, <liquid:liquidsteel>*50, <foundry:mold:10>, <minecraft:iron_ingot>*2);
mods.foundry.Casting.addRecipe(<mekanismtools:steelhoe>, <liquid:liquidsteel>*100, <foundry:mold:11>, <minecraft:iron_ingot>*2);

mods.foundry.Casting.addRecipe(<mekanismtools:steelhelmet>, <liquid:liquidsteel>*500, <foundry:mold:12>);
mods.foundry.Casting.addRecipe(<mekanismtools:steelchestplate>, <liquid:liquidsteel>*800, <foundry:mold:13>);
mods.foundry.Casting.addRecipe(<mekanismtools:steelleggings>, <liquid:liquidsteel>*700, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<mekanismtools:steelboots>, <liquid:liquidsteel>*400, <foundry:mold:15>);


// Paxels
// This formatting makes no sense. Stupid mold station with its stupid dumb CT format >:{
#	mods.foundry.MoldStation.addRecipe(<contenttweaker:paxelmold>, 1, 1, [4]);

mods.foundry.Casting.addRecipe(<mekanismtools:bronzepaxel>, <liquid:liquidbronze>*400, <contenttweaker:paxelmold>, <minecraft:stick>*2, 65);
mods.foundry.Casting.addRecipe(<mekanismtools:ironpaxel>, <liquid:liquidiron>*400, <contenttweaker:paxelmold>, <minecraft:stick>*2, 67);
mods.foundry.Casting.addRecipe(<mekanismtools:steelpaxel>, <liquid:liquidsteel>*400, <contenttweaker:paxelmold>, <minecraft:iron_ingot>*2, 70);

// Paxel Mold
// Because the stupid mold station hates me :c
recipes.addShaped(<contenttweaker:paxelmold>, [[<foundry:component:1>, <foundry:component:1>, null],
                               			                 [<foundry:component:1>, <foundry:component:1>, <foundry:component:1>],
                                     			                 [null, <foundry:component:1>, null]]);

# Renames & Tooltips
<foundry:mold:3>.displayName = "Metal Rod Mold";
<foundry:mold:17>.displayName = "Hollow-Point Bullet Mold";
<foundry:mold:19>.displayName = "Barrel Mold";

<foundry:machine:1>.removeTooltip("Casts items from liquid metal using mold");
<foundry:machine:1>.addTooltip("Casts items from liquid metals using molds");

<foundry:machine:1>.addTooltip(format.aqua("Can be melted back into Bronze"));
<foundry:machine:8>.addTooltip(format.aqua("Can be melted back into Iron"));

// Mold Tooltips
<foundry:mold>.addTooltip(format.gray("Uses 100 mB of liquid metal"));
<foundry:mold:1>.addTooltip(format.gray("Uses 100 mB of liquid metal"));
<foundry:mold:2>.addTooltip(format.gray("Uses 400 mB of liquid metal"));
<foundry:mold:3>.addTooltip(format.gray("Uses 50/100/300 mB of liquid metal"));
<foundry:mold:4>.addTooltip(format.gray("Uses 900 mB of liquid metal"));
<foundry:mold:4>.addTooltip(format.white("1,000 mB if liquid glass is used"));

<foundry:mold:7>.addTooltip(format.gray("Uses 300 mB of liquid metal"));
<foundry:mold:7>.addTooltip(format.white("Also needs 2 Sticks"));
<foundry:mold:8>.addTooltip(format.gray("Uses 300 mB of liquid metal"));
<foundry:mold:8>.addTooltip(format.white("Also needs 2 Sticks"));
<foundry:mold:9>.addTooltip(format.gray("Uses 200 mB of liquid metal"));
<foundry:mold:9>.addTooltip(format.white("Also needs 1 Stick"));
<foundry:mold:10>.addTooltip(format.gray("Uses 100 mB of liquid metal"));
<foundry:mold:10>.addTooltip(format.white("Also needs 2 Sticks"));
<foundry:mold:11>.addTooltip(format.gray("Uses 200 mB of liquid metal"));
<foundry:mold:11>.addTooltip(format.white("Also needs 2 Sticks"));

<foundry:mold:12>.addTooltip(format.gray("Uses 500 mB of liquid metal"));
<foundry:mold:13>.addTooltip(format.gray("Uses 800 mB of liquid metal"));
<foundry:mold:14>.addTooltip(format.gray("Uses 700 mB of liquid metal"));
<foundry:mold:15>.addTooltip(format.gray("Uses 400 mB of liquid metal"));

<foundry:mold:16>.addTooltip(format.gray("Uses 25 mB of liquid Lead, Steel, or Lumium"));
<foundry:mold:16>.addTooltip(format.gray("Uses 25 mB of Liquid Copper to make a Jacketed Bullet"));
<foundry:mold:17>.addTooltip(format.gray("Uses 50 mB of liquid lead"));
<foundry:mold:18>.addTooltip(format.gray("Uses 25 mB of liquid bronze"));

<foundry:mold:19>.addTooltip(format.gray("Uses 500 mB of liquid iron"));
<foundry:mold:19>.addTooltip(format.gray("Also needs an iron ingot"));
<foundry:mold:19>.addTooltip(format.white("Only needs 150 mB for gun barrels"));

<foundry:mold:20>.addTooltip(format.gray("Uses 100 mB of liquid iron"));
<foundry:mold:21>.addTooltip(format.gray("Uses 150 mB of liquid iron"));

<foundry:mold:22>.addTooltip(format.gray("Uses 10 mB of liquid Lead, Steel, or Lumium"));
<foundry:mold:23>.addTooltip(format.gray("Uses 50 mB of liquid Bronze"));
<foundry:mold:24>.addTooltip(format.gray("Uses 50 mB of liquid steel"));
<foundry:mold:25>.addTooltip(format.gray("Uses 150 mB of liquid Steel"));

<foundry:mold:26>.addTooltip(format.gray("Uses 11 mB of liquid metal"));

<contenttweaker:paxelmold>.addTooltip(format.gray("Uses 500 mB of liquid Bronze, Iron, or Steel"));
<contenttweaker:paxelmold>.addTooltip(format.white("Also needs Sticks or Iron Ingots"));

// Remove capsule NBT
recipes.addShapeless(<foundry:fluidcontainer>, [<foundry:fluidcontainer>]);

// Melt down dungeon loot
mods.foundry.Melting.addRecipe(<liquid:liquidiron>*700, <minecraft:iron_horse_armor>, 1900);
mods.foundry.Melting.addRecipe(<liquid:liquidgold>*700, <minecraft:golden_horse_armor>, 1500);

print("foundry.zs loaded");