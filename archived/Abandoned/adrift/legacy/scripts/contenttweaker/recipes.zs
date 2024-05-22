# Change things about my custom items
print("recipes.zs loading...");
/*
recipes.remove(<>);
recipes.addShaped(<output>,
	[[<null>, <null>, <null>],
	  [<null>, <null>, <null>],
	  [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;

<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");
*/

# Heat Exchanger is in blacksmith.zs

# Water Filter is in tailor.zs

// Make Bone Sticks
recipes.addShapedMirrored(<contenttweaker:bone_stick>*3,
			[[<ore:bone>, null],
			  [<ore:bone>, null]]);

// Iron Rod
recipes.addShapedMirrored(<contenttweaker:iron_rod>,
	[[<ore:nuggetIron>, null],
	  [<ore:nuggetIron>, null]]);

// Clean Dirty Filter
recipes.addShapeless(<contenttweaker:water_filter>, [<ore:listAllwater>, <contenttweaker:dirty_filter>]);

// Circuit
recipes.addShapeless(<contenttweaker:circuit>, [<ore:copper>, <ore:itemSilicon>, <better_diving:fiber_mesh>]);

// Fish Oil > Lubricant
recipes.addShapeless(<better_diving:lubricant>, [<contenttweaker:fish_oil>, <contenttweaker:fish_oil>]);

// Advanced Wiring Kit
recipes.addShapeless(<contenttweaker:advanced_wiring_kit>, [<better_diving:wiring_kit>, <ore:gold>, <ore:gold>, <contenttweaker:circuit>]);


print("recipes.zs loaded");