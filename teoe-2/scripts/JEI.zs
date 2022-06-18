# Hides things from JEI, or adds info about them

import mods.jei.JEI;

print("JEI.zs loading...");

/*
mods.jei.JEI.hideItem(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);

mods.jei.JEI.addInfo(<item>, ["line1", "line2"]);

mods.jei.JEI.hideRecipe("category", "recipeName");
*/

# Add JEI Info for various items
mods.jei.JEI.addDescription(<item:additionaladditions:gold_ring>, ["Gained from bartering with Piglins"]);
mods.jei.JEI.addDescription(<item:ae2:me_p2p_tunnel>, ["Right-click with an accepted item to change it to that type of P2P tunel" + "Filter JEI with $attunment to see the accepted list (since it uses item tags)"]);
mods.jei.JEI.addDescription(<item:minecraft:ladder>, ["You can use any vanilla wood to make that variation of a ladder"]);
mods.jei.JEI.addDescription(<item:twilightforest:uncrafting_table>, ["Uncrafting has been disabled, but I can't hide the JEI panel."]);



/*
# Hides creative-only items from JEI
mods.jei.JEI.hideItem(<item:ae2:creative_energy_cell>);
mods.jei.JEI.hideItem(<item:ae2:creative_item_cell>);
mods.jei.JEI.hideItem(<item:ae2:creative_fluid_cell>);
mods.jei.JEI.hideItem(<item:botania:creative_pool>);
mods.jei.JEI.hideItem(<item:botania:infrangible_platform>);
*/

print("JEI.zs loaded");