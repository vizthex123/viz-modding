# Changes things from Simple Difficulty & Armour Underwear

import mods.artisanintegrations.requirement.FTGU;
import mods.artisanworktables.builder.RecipeBuilder;

print("temperature.zs loading...");

/*
recipes.remove(<>);
recipes.addShaped(<output>,
	[[<null>, <null>, <null>],
	  [<null>, <null>, <null>],
	  [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
furnace.addRecipe(<output>, <input>, XP[F]);
<item>.maxStackSize=NEW;
*/

// Changes the recipe for Heating & Cooling Goo
recipes.remove(<armorunder:cooling_goo>);
recipes.remove(<armorunder:heating_goo>);

recipes.addShapeless(<armorunder:cooling_goo>*3, [<simpledifficulty:ice_chunk>, <ore:slimeball>, <ore:slimeball>]);
recipes.addShapeless(<armorunder:heating_goo>*3, [<simpledifficulty:magma_chunk>, <ore:slimeball>, <ore:slimeball>]);


// Heater
recipes.remove(<simpledifficulty:heater>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<simpledifficulty:magma_chunk>, null, <simpledifficulty:magma_chunk>],
    [<simpledifficulty:magma_chunk>, <ore:cobblestone>, <simpledifficulty:magma_chunk>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]])
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<simpledifficulty:heater>)
  .addRequirement(FTGU.allOf(["adrift:survival/temperature"]))
  .setName("heater")
  .create();


// Cooler
recipes.remove(<simpledifficulty:chiller>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<simpledifficulty:ice_chunk>, null, <simpledifficulty:ice_chunk>],
    [<simpledifficulty:ice_chunk>, <ore:cobblestone>, <simpledifficulty:ice_chunk>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]])
  .addTool(<ore:artisansPliers>, 15)
  .addOutput(<simpledifficulty:chiller>)
  .addRequirement(FTGU.allOf(["adrift:survival/temperature"]))
  .setName("cooler")
  .create();


// Change Goopack stacksize (since you can only activate one at a time)
// Not quite sure why they stack by default...
<armorunder:goopak_cool>.maxStackSize=1;
<armorunder:goopak_heat>.maxStackSize=1;



// Renames & Tooltips
<simpledifficulty:chiller>.displayName = "Cooler";

<simpledifficulty:chiller>.addTooltip(format.red("Requires a redstone signal to work!"));
<simpledifficulty:heater>.addTooltip(format.red("Requires a redstone signal to work!"));
<simpledifficulty:chiller>.addTooltip(format.aqua("Range of 16 blocks"));
<simpledifficulty:heater>.addTooltip(format.aqua("Range of 16 blocks"));

<simpledifficulty:ice_chunk>.addTooltip(format.aqua("Drops from broken ice blocks."));

<armorunder:goopak_spent>.addTooltip(format.aqua("Can be recycled in a recycler"));

print("temperature.zs loaded");