# Re-stages items from Create

import mods.itemstages.ItemStages;

print("create_stages.zs loading...");

/*
ItemStages.restrict(<item>, "create");

ItemStages.createModRestriction("mod", "create");
*/

# Brass Age unlocks
# Minimum amount of items required to unlock the the Brass Age
ItemStages.restrict(<item:minecraft:iron_ingot>, "brass_unlock");
ItemStages.restrict(<item:minecraft:iron_block>, "brass_unlock");
ItemStages.restrict(<item:create:andesite_alloy>, "brass_unlock");
ItemStages.restrict(<item:create:brass_nugget>, "brass_unlock");
ItemStages.restrict(<item:create:brass_ingot>, "brass_unlock");
ItemStages.restrict(<item:create:brass_sheet>, "brass_unlock");
ItemStages.restrict(<item:create:mechanical_press>, "brass_unlock");
ItemStages.restrict(<item:create:mechanical_mixer>, "brass_unlock");
ItemStages.restrict(<item:create:whisk>, "brass_unlock");
ItemStages.restrict(<item:create:iron_sheet>, "brass_unlock");




/*
ItemStages.createModRestriction("create", "brass_age");

# Re-stage early-game stuff
ItemStages.remove(<item:create:belt_connector>);
ItemStages.remove(<item:create:cogwheel>);
ItemStages.remove(<item:create:large_cogwheel>);
ItemStages.remove(<item:create:shaft>);


// Blocks
ItemStages.remove(<item:create:basin>);
ItemStages.remove(<item:create:wooden_bracket>);
ItemStages.remove(<item:create:andesite_ladder>);
ItemStages.remove(<item:create:copper_ladder>);


// Machines
ItemStages.remove(<item:create:gearbox>);
ItemStages.remove(<item:create:vertical_gearbox>);
ItemStages.remove(<item:create:depot>);
ItemStages.remove(<item:create:millstone>);
ItemStages.remove(<item:create:hand_crank>);
ItemStages.remove(<item:create:water_wheel>);
ItemStages.remove(<item:create:spout>);
ItemStages.remove(<item:create:mechanical_piston>);
ItemStages.remove(<item:create:sticky_mechanical_piston>);


// Schematics
ItemStages.remove(<item:create:empty_schematic>);
ItemStages.remove(<item:create:schematic_and_quill>);
ItemStages.remove(<item:create:schematic_table>);
ItemStages.remove(<item:create:schematicannon>);


// Misc
ItemStages.remove(<item:create:nozzle>);
ItemStages.remove(<item:create:turntable>);
*/
print("create_stages.zs loaded");