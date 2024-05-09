# Restricts things to various Game Stages
# Don't worry, it's fairly light. Mostly used to force progression.
/*
mods.ItemStages.addItemStage("stage_name", <item>);
mods.ItemStages.addItemStage("stage_name", <OreDictID>);

mods.recipestages.Recipes.setRecipeStage("stage_name", <item_name or recipe>);

mods.ItemStages.stageModItems("stage_name", "ModID");

mods.ItemStages.setUnfamiliarName("Name", <item>);
*/
print("Loading GameStages.zs...");

// The Aurorian
mods.ItemStages.setUnfamiliarName("Strange Magical Bricks?", <theaurorian:aurorianportalframebricks>);

mods.ItemStages.addItemStage("aurorian", <theaurorian:aurorianportalframebricks>);
mods.recipestages.Recipes.setRecipeStage("aurorian", <theaurorian:aurorianportalframebricks>);

mods.recipestages.Recipes.addShapeless("aurorian", <minecraft:torch>, [<theaurorian:silentwoodtorch>]);
mods.recipestages.Recipes.addShapeless("aurorian", <minecraft:stick>, [<theaurorian:silentwoodstick>]);
mods.recipestages.Recipes.addShapeless("aurorian", <minecraft:furnace>, [<theaurorian:aurorianfurnace>]);
mods.recipestages.Recipes.addShapeless("aurorian", <minecraft:sand>, [<theaurorian:moonsand>]);
mods.recipestages.Recipes.addShapeless("aurorian", <minecraft:cobblestone>, [<theaurorian:auroriancobblestone>]);
mods.recipestages.Recipes.addShaped("aurorian", <theaurorian:lockpicks:5>, [[<botania:manaresource>, null, <botania:manaresource>],
                                    	                  			                  		            [<ore:stickStone>, <ore:stickStone>, null],
                                   	                   			              		            [<ore:stickStone>, <ore:stickStone>, <botania:manaresource>]]);

// Hunting Dimension
mods.ItemStages.addItemStage("hunting", <huntingdim:frame:*>);
mods.recipestages.Recipes.setRecipeStage("hunting", <huntingdim:frame:*>);

// Eyes of Ender
// Basically only to prevent people from going there before killing The Wither, as I want them to
// Though it doesn't technically fully work.....don't tell anyone that.
mods.ItemStages.addItemStage("wither_kill", <minecraft:ender_eye>);
#	mods.recipestages.Recipes.setRecipeStage("wither_kill", <minecraft:ender_eye>);

print("GameStages.zs loaded");