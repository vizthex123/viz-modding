# Adds recipes to my custom items

print("recipes.zs loading...");

# Wrapped Bone
recipes.addShapeless(<contenttweaker:wrapped_bone>, [<ore:string>, <minecraft:bone>]);

# Faulty (DIY Melon) Circuit
# I don't even know...
recipes.addShapedMirrored(<contenttweaker:faulty_circuit>, [[null, null, <xlfoodmod:salt>|<alchemistry:mineral_salt>],
                                     					 [<minecraft:glowstone_dust>|<minecraft:redstone>|<projectred-core:resource_item:105>, <minecraft:melon_block>, <minecraft:glowstone_dust>|<minecraft:redstone>|<projectred-core:resource_item:105>],
                                 					     [<xlfoodmod:salt>|<alchemistry:mineral_salt>, null, null]]);

# MDF Board
recipes.addShaped(<contenttweaker:mdf>*2, [[<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>],
                                  			      [<thermalfoundation:material:801>, <ore:slimeball>, <thermalfoundation:material:801>]]);

recipes.addShapeless(<contenttweaker:mdf>, [<ore:slimeball>, <thermalfoundation:material:801>, <thermalfoundation:material:801>]);
		 
# Iron Ring recipe
recipes.addShaped(<contenttweaker:ring>, [[null, <minecraft:iron_ingot>, null],
                                		 	      [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
                                  			      [null, <minecraft:iron_ingot>, null]]);

# Bottled foods
recipes.addShapeless(<contenttweaker:bottled_pepper>, [<minecraft:glass_bottle>, <xlfoodmod:pepper>]);
recipes.addShapeless(<contenttweaker:bottled_tomato>, [<minecraft:glass_bottle>, <ore:cropTomato>]);
recipes.addShapeless(<contenttweaker:bottled_cocoa>, [<minecraft:glass_bottle>, <minecraft:dye:3>]);

# Slime Green recipe
recipes.addShapeless(<contenttweaker:slime_green>, [<minecraft:slime_ball>]);

# Toilary Mold is in the Compact Machines config

print("recipes.zs loaded");