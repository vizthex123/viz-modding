# Hides things from JEI, or adds info about them
# Big sad they removed the in-game item hiding system </3
print("JEI.zs loading...");

/*
mods.jei.JEI.hideItem(<item>);
mods.jei.JEI.hideFluid(<fluid:minecraft:lava>);

mods.jei.JEI.addInfo(<item>, ["line1", "line2"]);

mods.jei.JEI.hideRecipe("category", "recipeName");
*/

# Hide the Anvil category since it's kind of pointless
mods.jei.JEI.hideCategory("minecraft:anvil");

# Add JEI Info for various items
mods.jei.JEI.addInfo(<item:xpbioreactor:xp_bioreactor>, ["Converts many types of item into 2 Bottles O' Enchanting", "\n\nSupported categories: Meats, crops, flowers, and saplings"]);

mods.jei.JEI.addInfo(<item:comfortable_nether:weeping_abscess>, ["Harvested from Weeping Liana" + "\nAlso grows into it if planted on Soul Sand"]);

mods.jei.JEI.addInfo(<item:netherrocks:nether_smoker>, ["Only accepts the following fuels:", "Netherrack - 2 items", "Blaze Rod - 24 items", "Fyrite Ingot - 80 items"]);
mods.jei.JEI.addInfo(<item:netherrocks:nether_furnace>, ["Only accepts the following fuels:", "Netherrack - 2 items", "Blaze Rod - 24 items", "Fyrite Ingot - 80 items"]);
mods.jei.JEI.addInfo(<item:netherrocks:nether_blast_furnace>, ["Only accepts the following fuels:", "Netherrack - 2 items", "Blaze Rod - 24 items", "Fyrite Ingot - 80 items"]);

mods.jei.JEI.addInfo(<item:minecraft:phantom_membrane>, ["Can be used to repair Elytras"]);
mods.jei.JEI.addInfo(<item:enderitemod:enderite_ore>, ["Must be weakened with explosions before it can be mined"]);



# Hides misc items
mods.jei.JEI.hideItem(<item:netherrocks:crushed_illumenite_ore>);
mods.jei.JEI.hideItem(<item:minecraft:end_portal_frame>);
mods.jei.JEI.hideItem(<item:valhelsia_structures:special_spawner>);
mods.jei.JEI.hideItem(<item:foodpouches:creative_food_pouch>);
mods.jei.JEI.hideItem(<item:ironjetpacks:creative_capacitor>);
mods.jei.JEI.hideItem(<item:gravestone:gravestone>);
mods.jei.JEI.hideItem(<item:anointeditems:lightness_oil>);

mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:feeding_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:void_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:advanced_void_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:inception_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:tool_swapper_upgrade>);
mods.jei.JEI.hideItem(<item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>);

mods.jei.JEI.hideItem(<item:foodpouches:small_automatic_food_pouch>);
mods.jei.JEI.hideItem(<item:foodpouches:medium_automatic_food_pouch>);
mods.jei.JEI.hideItem(<item:foodpouches:large_automatic_food_pouch>);
mods.jei.JEI.hideItem(<item:foodpouches:massive_automatic_food_pouch>);



# Hides Comfortable Nether items
mods.jei.JEI.hideItem(<item:comfortable_nether:suspicious_soul_sand>);
mods.jei.JEI.hideItem(<item:comfortable_nether:fume_puffer>);
mods.jei.JEI.hideItem(<item:comfortable_nether:grimstem>);



# Hides unused items from Basic Nether Ores
mods.jei.JEI.hideItem(<item:bno:copper_block>);

mods.jei.JEI.hideItem(<item:bno:nethernickel_ore>);
mods.jei.JEI.hideItem(<item:bno:nickel_block>);
mods.jei.JEI.hideItem(<item:bno:nickel_ingot>);
mods.jei.JEI.hideItem(<item:bno:nickel_nugget>);

mods.jei.JEI.hideItem(<item:bno:netherosmium_ore>);
mods.jei.JEI.hideItem(<item:bno:osmium_block>);
mods.jei.JEI.hideItem(<item:bno:osmium_ingot>);
mods.jei.JEI.hideItem(<item:bno:osmium_nugget>);

mods.jei.JEI.hideItem(<item:bno:netheraluminum_ore>);
mods.jei.JEI.hideItem(<item:bno:aluminum_block>);
mods.jei.JEI.hideItem(<item:bno:aluminum_ingot>);
mods.jei.JEI.hideItem(<item:bno:aluminum_nugget>);

mods.jei.JEI.hideItem(<item:bno:netheruranium_ore>);
mods.jei.JEI.hideItem(<item:bno:uranium_block>);
mods.jei.JEI.hideItem(<item:bno:uranium_ingot>);

mods.jei.JEI.hideItem(<item:create:crushed_aluminum_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_uranium_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_osmium_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_nickel_ore>);

mods.jei.JEI.hideItem(<item:bno:copper_ingot>);
mods.jei.JEI.hideItem(<item:bno:silver_ingot>);
mods.jei.JEI.hideItem(<item:bno:lead_ingot>);
mods.jei.JEI.hideItem(<item:bno:tin_ingot>);


print("JEI.zs loaded");