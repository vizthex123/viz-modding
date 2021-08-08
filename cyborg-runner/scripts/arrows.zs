# Changes the recipes for the arrows
print("arrows.zs loading...");
/*
recipes.remove(<simplyarrows:>);
recipes.addShapedMirrored(<output>, [[null, <null>, null],
                                     		                 [null, <null>, null],
                                  		                 [null, <null>, null]]);
recipes.addShapeless(<simplyarrows:>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
<simplyarrows:>.addTooltip(format.red("Tooltip"));
*/

// Bone
recipes.remove(<simplyarrows:arrow_bone>);
recipes.remove(<simplyarrows:arrow_flint>);
recipes.remove(<simplyarrows:arrow_iron>);
recipes.remove(<simplyarrows:arrow_torch>);
recipes.remove(<simplyarrows:arrow_tnt>);
recipes.addShapedMirrored(<simplyarrows:arrow_bone>*6, [[null, <minecraft:bone>, null],
                                     		          		                    [null, <ore:stickWood>, null],
                                  		                  		                    [null, <minecraft:feather>, null]]);

recipes.addShapedMirrored(<simplyarrows:arrow_flint>*8, [[null, <minecraft:flint>, null],
                                     		          		                    [<ore:stickStone>, <ore:stickStone>, <ore:stickStone>],
                                  		                  		                    [null, <minecraft:feather>, null]]);

recipes.addShapedMirrored(<simplyarrows:arrow_iron>*4, [[null, <minecraft:iron_ingot>, null],
                                     		          		                    [null, <ore:stickWood>, null],
                                  		                  		                    [null, <minecraft:feather>, null]]);

recipes.addShapeless(<simplyarrows:arrow_torch>, [<simplyarrows:arrow_flint>|<minecraft:arrow>, <bonetorch:bonetorch>|<minecraft:torch>]);
<simplyarrows:arrow_torch>.addTooltip(format.yellow("Places a torch wherever it lands"));

recipes.addShapeless(<simplyarrows:arrow_tnt>, [<minecraft:tnt>, <simplyarrows:arrow_iron>|<simplyarrows:arrow_flint>|<simplyarrows:arrow_bone>|<minecraft:arrow>]);
<simplyarrows:arrow_tnt>.addTooltip(format.red("Explodes on impact. Same radius as a TNT block."));

print("arrows.zs loaded");