# Adds recipes to my custom items
print("recipes.zs loading...");
/*
recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                      [<null>, <null>, <null>],
                                      [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

// Fibrous String
recipes.addShapeless(<contenttweaker:fibrous_string>, [<natura:materials:7>|<minecraft:string>, <natura:materials:7>|<minecraft:string>, <natura:materials:7>|<minecraft:string>, <natura:materials:7>|<minecraft:string>]);
recipes.addShapeless(<contenttweaker:fibrous_string>, [<ore:vine>, <ore:vine>, <ore:vine>]);

// Papyrus
recipes.addShaped(<contenttweaker:papyrus>, [[<minecraft:reeds>|<thermalfoundation:material:800>, <minecraft:reeds>|<thermalfoundation:material:800>, <minecraft:reeds>|<thermalfoundation:material:800>],
				[null, <minecraft:water_bucket>|<minecraft:slime_ball>|<industrialforegoing:pink_slime>, null],
				[<minecraft:reeds>|<thermalfoundation:material:800>, <minecraft:reeds>|<thermalfoundation:material:800>, <minecraft:reeds>|<thermalfoundation:material:800>]]);

// Pseudo Slime
recipes.addShapeless(<contenttweaker:fake_slime>, [<ore:water>, <ore:dyeGreen>, <ore:dyeGreen>]);

recipes.addShapeless(<contenttweaker:fake_slime>, [<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:potion>.withTag({Potion: "minecraft:water"}), <ore:dyeLime>, <ore:dyeLime>]);

print("recipes.zs loaded");