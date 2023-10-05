# Lets you recycle items using Create

print("create_recycling.zs loading...");

/*
craftingTable.addShapeless("recipeName", <output>, [<items>]);

craftingTable.addShaped("recipeName", <output>, 
    [[<item>, <item>, <item>],
    [<item>, <item>, <item>],
    [<item>, <item>, <item>]]);

craftingTable.removeByName("recipeName");
craftingTable.remove(<item>);

<recipetype:create:milling>.addRecipe("name", [<outputs>], <item>, duration);
<recipetype:create:crushing>.addRecipe("name", [<outputs>], <item>, duration);
*/

val fiber = <item:kubejs:fibers>;
val sawdust = <item:kubejs:sawdust>;

val scrap = <item:kubejs:scrap>;
val nugget = <item:kubejs:tiny_scrap>;

val flint = <item:minecraft:flint>;

val dust = <item:mechanicalmachinery:dust>;

# Temp recipe until I can fix the KubeJS integration
<recipetype:create:milling>.addRecipe("temp_dust", [<item:minecraft:redstone> % 50, <item:bluepower:teslatite_dust> % 25, <item:minecraft:glowstone_dust> % 5, <item:ae2:certus_quartz_dust> % 1], dust);


# Item recycling
# Millstone gives half as much output chance for metal & gems, and takes an extra second or two
# 1 Ingots = 0.5 Scrap, rounded down (leftover gives nuggets, rounded down)
# 1 Plank = 1 Sawdust
# 1 Stick = 0.5 Sawdust
# 1 String = 1 Fiber
# 3 Nuggets = 1 Tiny Scrap

// Ropes
<recipetype:create:milling>.addRecipe("recycle_rope", [fiber], <item:additionaladditions:rope>, 40);

// Glow Sticks
<recipetype:create:milling>.addRecipe("recycle_glowstick", [sawdust % 15, <item:minecraft:ink_sac> % 15, <item:minecraft:cyan_dye> % 15], <item:additionaladditions:glow_stick>, 20);

// Leads
<recipetype:create:milling>.addRecipe("recycle_lead", [<item:minecraft:slime_ball> % 50, fiber*2], <item:minecraft:lead>, 20);

// Beds
<recipetype:create:milling>.addRecipe("recycle_beds", [sawdust*3, fiber*12], <tag:items:minecraft:beds>);

// Chain
<recipetype:create:milling>.addRecipe("recycle_chain", [nugget % 50], <item:minecraft:chain>, 60);
<recipetype:create:crushing>.addRecipe("recycle_chain_boosted", [nugget], <item:minecraft:chain>, 20);

// Iron Bars
// Same rates as Rails
<recipetype:create:milling>.addRecipe("recycle_iron_bars", [nugget % 12], <item:minecraft:iron_bars>, 60);
<recipetype:create:crushing>.addRecipe("recycle_iron_bars_boosted", [nugget % 25], <item:minecraft:iron_bars>, 20);

// Rails
// Same rates as Rails
<recipetype:create:milling>.addRecipe("recycle_rails", [nugget % 12, sawdust % 50], <item:minecraft:rail>, 40);
<recipetype:create:crushing>.addRecipe("recycle_rails_boosted", [nugget % 25, sawdust % 50], <item:minecraft:rail>, 20);

// Tripwire Hooks
<recipetype:create:milling>.addRecipe("recycle_hook", [scrap % 25, sawdust % 50, sawdust % 25], <item:minecraft:tripwire_hook>, 40);
<recipetype:create:crushing>.addRecipe("recycle_hook_boosted", [scrap % 50, sawdust % 50, sawdust % 25], <item:minecraft:tripwire_hook>, 20);

// Flint & Steel
<recipetype:create:milling>.addRecipe("recycle_fas", [scrap % 50, flint % 50], <item:minecraft:flint_and_steel>.anyDamage(), 50);
<recipetype:create:crushing>.addRecipe("recycle_fas_boosted", [scrap, flint % 50], <item:minecraft:flint_and_steel>.anyDamage(), 30);

// Bows
<recipetype:create:milling>.addRecipe("recycle_bow", [sawdust, sawdust % 50, fiber*3], <item:minecraft:bow>.anyDamage(), 20);

// Crossbows
// Doing the math on this was annoying af
<recipetype:create:milling>.addRecipe("recycle_crossbow", [scrap % 50, scrap % 25, sawdust*2, sawdust % 25, fiber*2], <item:minecraft:crossbow>.anyDamage(), 40);
<recipetype:create:crushing>.addRecipe("recycle_crossbow_boosted", [scrap, scrap % 50, sawdust*2, sawdust % 25, fiber*2], <item:minecraft:crossbow>.anyDamage(), 20);
	// Spyglass
<recipetype:create:milling>.addRecipe("recycle_spyglass_crossbow", [<item:minecraft:amethyst_shard> % 10, <item:create:copper_nugget>*9 % 50, scrap*2 % 50, scrap % 25, sawdust*2, sawdust % 25, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 60);
<recipetype:create:crushing>.addRecipe("recycle_spyglass_crossbow_boosted", [<item:minecraft:amethyst_shard> % 20, <item:create:copper_nugget>*9, scrap*2, scrap % 50, sawdust*2, sawdust % 25, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 40);

# Minecart
	// TNT
<recipetype:create:milling>.addRecipe("recycle_tnt_cart", [scrap*2 % 50, <item:minecraft:charcoal> % 50, <item:minecraft:charcoal> % 50, dust*2 % 50], <item:minecraft:tnt_minecart>, 80);
<recipetype:create:crushing>.addRecipe("recycle_tnt_cart_boosted", [scrap*2, <item:minecraft:charcoal>*2 % 50, <item:minecraft:charcoal> % 50, dust*2 % 50], <item:minecraft:tnt_minecart>, 40);


# Profession Tables
# Cartography, Composter, and Lectern are in create_sawing.zs
// Fletching
<recipetype:create:milling>.addRecipe("recycle_fletching_table", [flint*2, sawdust*4], <item:minecraft:fletching_table>);

// Smithing
<recipetype:create:milling>.addRecipe("recycle_smithing_table", [scrap*2 % 50, sawdust*4], <item:minecraft:smithing_table>);
<recipetype:create:crushing>.addRecipe("recycle_smithing_table_boosted", [scrap*2, sawdust*4], <item:minecraft:smithing_table>);

// Loom
<recipetype:create:milling>.addRecipe("recycle_loom", [sawdust*2, fiber*2], <item:minecraft:loom>);

print("create_recycling.zs loaded");