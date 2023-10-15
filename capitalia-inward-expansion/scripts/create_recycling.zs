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
val hide = <item:kubejs:shredded_hide>;
val sawdust = <item:kubejs:sawdust>;

val scrap = <item:kubejs:small_iron_scrap>;
val tiny = <item:kubejs:tiny_iron_scrap>;

val big_gold = <item:kubejs:gold_scrap>;
val scrap_gold = <item:kubejs:small_gold_scrap>;
val tiny_gold = <item:kubejs:tiny_gold_scrap>;

val scrap_copper = <item:kubejs:small_copper_scrap>;
# val tiny_copper = <item:kubejs:tiny_copper_scrap>;

val flint = <item:minecraft:flint>;

val dust = <item:mechanicalmachinery:dust>;

# Temp recipe until I can fix the KubeJS integration
<recipetype:create:milling>.addRecipe("temp_dust", [<item:minecraft:redstone> % 50, <item:bluepower:teslatite_dust> % 25, <item:ae2:certus_quartz_dust> % 13], dust);


# Item recycling
# Millstone gives half as much output chance for metal & gems, and takes an extra second or two
# 1 Ingots = 1 Small Scrap, rounded down
# Any remaining Nuggets make Tiny Scrap at a 2:1 ratio (rounded down)
# 1 Plank = 1 Sawdust
# 1 Stick = 0.5 Sawdust
# 1 String/Paper = 1 Fiber

// Books
<recipetype:create:milling>.addRecipe("recycle_books", [hide, fiber*3], <item:minecraft:book>|<item:minecraft:written_book>.anyDamage(), 30);

	// Quill
<recipetype:create:milling>.addRecipe("recycle_book_and_quill", [hide, fiber*3, <item:minecraft:feather> % 25, <item:minecraft:black_dye> % 50], <item:minecraft:writable_book>, 30);

// Fishing Rods
<recipetype:create:milling>.addRecipe("recycle_fishing_rod", [sawdust, sawdust % 50, fiber*2], <item:minecraft:fishing_rod>.anyDamage(), 30);

// Glow Sticks
<recipetype:create:milling>.addRecipe("recycle_glowstick", [sawdust % 15, <item:minecraft:ink_sac> % 15, <item:minecraft:cyan_dye> % 15], <item:additionaladditions:glow_stick>, 20);

// Beds
<recipetype:create:milling>.addRecipe("recycle_beds", [sawdust*3, fiber*12], <tag:items:minecraft:beds>);

// Leads
<recipetype:create:milling>.addRecipe("recycle_lead", [<item:minecraft:slime_ball> % 50, fiber*2], <item:minecraft:lead>, 20);

// Chain
<recipetype:create:milling>.addRecipe("recycle_chain", [tiny % 50], <item:minecraft:chain>, 60);
<recipetype:create:crushing>.addRecipe("recycle_chain_boosted", [tiny], <item:minecraft:chain>, 20);

// Lanterns
<recipetype:create:milling>.addRecipe("recycle_lanterns", [tiny*4 % 50], <item:minecraft:lantern>|<item:minecraft:soul_lantern>, 40);
<recipetype:create:crushing>.addRecipe("recycle_lanterns_boosted", [tiny*4], <item:minecraft:lantern>|<item:minecraft:soul_lantern>, 20);

// Iron Doors
<recipetype:create:milling>.addRecipe("recycle_iron_door", [scrap*2 % 50], <item:minecraft:iron_door>, 150);
<recipetype:create:crushing>.addRecipe("recycle_iron_door_boosted", [scrap*2], <item:minecraft:iron_door>);

// Iron Trapdoors
<recipetype:create:milling>.addRecipe("recycle_iron_trapdoor", [scrap*4 % 50], <item:minecraft:iron_trapdoor>, 150);
<recipetype:create:crushing>.addRecipe("recycle_iron_trapdoor_boosted", [scrap*4], <item:minecraft:iron_trapdoor>);

// Cauldron
<recipetype:create:milling>.addRecipe("recycle_cauldron_trapdoor", [scrap*7 % 50], <item:minecraft:cauldron>, 150);
<recipetype:create:crushing>.addRecipe("recycle_cauldron_trapdoor_boosted", [scrap*7], <item:minecraft:cauldron>);

// Redstone Lamp
<recipetype:create:milling>.addRecipe("recycle_redstone_lamp", [<item:minecraft:glowstone_dust>*2 % 50, <item:minecraft:redstone>*2 % 50], <item:minecraft:redstone_lamp>, 150);
<recipetype:create:crushing>.addRecipe("recycle_redstone_lamp_boosted", [<item:minecraft:glowstone_dust>*2 % 50, <item:minecraft:redstone>*2 % 50], <item:minecraft:redstone_lamp>);

// Iron Bars
// Same rates as Rails
<recipetype:create:milling>.addRecipe("recycle_iron_bars", [tiny % 18], <item:minecraft:iron_bars>, 60);
<recipetype:create:crushing>.addRecipe("recycle_iron_bars_boosted", [tiny % 36], <item:minecraft:iron_bars>, 20);

// Gold Bars
// Same rates as Iron Bars
<recipetype:create:milling>.addRecipe("recycle_gold_bars", [tiny_gold % 18], <item:quark:gold_bars>, 60);
<recipetype:create:crushing>.addRecipe("recycle_gold_bars_boosted", [tiny_gold % 36], <item:quark:gold_bars>, 20);

// Rails
<recipetype:create:milling>.addRecipe("recycle_rails", [tiny % 18, sawdust % 6], <item:minecraft:rail>, 40);
<recipetype:create:crushing>.addRecipe("recycle_rails_boosted", [tiny % 36, sawdust % 6], <item:minecraft:rail>, 20);

// Tripwire Hooks
<recipetype:create:milling>.addRecipe("recycle_hook", [scrap % 25, sawdust % 75], <item:minecraft:tripwire_hook>, 40);
<recipetype:create:crushing>.addRecipe("recycle_hook_boosted", [scrap % 50, sawdust % 75], <item:minecraft:tripwire_hook>, 20);

// Flint & Steel
<recipetype:create:milling>.addRecipe("recycle_fas", [scrap % 50, flint % 50], <item:minecraft:flint_and_steel>.anyDamage(), 50);
<recipetype:create:crushing>.addRecipe("recycle_fas_boosted", [scrap, flint % 50], <item:minecraft:flint_and_steel>.anyDamage(), 30);

// Bows
<recipetype:create:milling>.addRecipe("recycle_bow", [sawdust, sawdust % 50, fiber*3], <item:minecraft:bow>.anyDamage(), 20);

// Crossbows
// Doing the math on this was annoying af
<recipetype:create:milling>.addRecipe("recycle_crossbow", [scrap*2 % 50, sawdust*3, fiber*2], <item:minecraft:crossbow>.anyDamage(), 40);
<recipetype:create:crushing>.addRecipe("recycle_crossbow_boosted", [scrap*2, sawdust*3, fiber*2], <item:minecraft:crossbow>.anyDamage(), 20);

	// Spyglass
# <recipetype:create:milling>.addRecipe("recycle_spyglass_crossbow_unsupported", [<item:minecraft:amethyst_shard> % 10, scrap_copper*2 % 50, scrap*3 % 50, sawdust*3, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 60);
<recipetype:create:crushing>.addRecipe("recycle_spyglass_crossbow", [<item:minecraft:amethyst_shard> % 20, scrap_copper*2, scrap*3, sawdust*3, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 40);

// Bells
<recipetype:create:milling>.addRecipe("recycle_bell", [big_gold*4 % 50], <item:minecraft:bell>, 150);
<recipetype:create:crushing>.addRecipe("recycle_bell_boosted", [big_gold*4], <item:minecraft:bell>);

<recipetype:create:crushing>.addRecipe("recycle_netherite_bell_boosted", [<item:minecraft:netherite_scrap>*4], <item:bygonenether:netherite_bell>, 160);

// Gold Ring
<recipetype:create:milling>.addRecipe("recycle_gold_ring", [big_gold % 50], <item:additionaladditions:gold_ring>, 80);
<recipetype:create:crushing>.addRecipe("recycle_gold_ring_boosted", [big_gold], <item:additionaladditions:gold_ring>, 40);


# Minecarts
	// Chest
<recipetype:create:milling>.addRecipe("recycle_chest_cart", [scrap*5 % 50, sawdust*8], <item:minecraft:chest_minecart>);
<recipetype:create:crushing>.addRecipe("recycle_chest_cart_boosted", [scrap*5, sawdust*8], <item:minecraft:chest_minecart>, 60);

	// TNT
<recipetype:create:milling>.addRecipe("recycle_tnt_cart", [scrap*5, <item:minecraft:charcoal>*5 % 25, dust*4 % 50], <item:minecraft:tnt_minecart>);
<recipetype:create:crushing>.addRecipe("recycle_tnt_cart_boosted", [scrap*5, <item:minecraft:charcoal>*5 % 25, dust*4 % 50], <item:minecraft:tnt_minecart>, 60);

// Candles
<recipetype:create:milling>.addRecipe("recycle_candles", [<item:minecraft:honeycomb> % 50, fiber], <tag:items:minecraft:candles>, 20);

// Repeater
<recipetype:create:milling>.addRecipe("recycle_repeater", [<item:minecraft:redstone>*3 % 50, <item:minecraft:cobblestone> % 75], <item:minecraft:repeater>, 30);

// Flower Pot
<recipetype:create:milling>.addRecipe("recycle_flower_pot", [<item:minecraft:clay_ball>*2 % 60], <item:minecraft:flower_pot>, 30);



# Profession Tables
# Cartography, Composter, and Lectern are in create_sawing.zs
// Fletching
<recipetype:create:milling>.addRecipe("recycle_fletching_table", [flint*2 % 50, sawdust*4], <item:minecraft:fletching_table>);

// Smithing
<recipetype:create:milling>.addRecipe("recycle_smithing_table", [scrap*2 % 50, sawdust*4], <item:minecraft:smithing_table>);
<recipetype:create:crushing>.addRecipe("recycle_smithing_table_boosted", [scrap*2, sawdust*4], <item:minecraft:smithing_table>);

// Loom
<recipetype:create:milling>.addRecipe("recycle_loom", [sawdust*2, fiber*2], <item:minecraft:loom>);



# Copper Blocks
<recipetype:create:crushing>.addRecipe("recycle_cut_copper", [scrap_copper*2, scrap_copper % 50], <item:minecraft:cut_copper>|<item:minecraft:exposed_cut_copper>|<item:minecraft:weathered_cut_copper>|<item:minecraft:oxidized_cut_copper>, 100);

<recipetype:create:crushing>.addRecipe("recycle_cut_copper_slab", [scrap_copper, scrap_copper % 12], <item:minecraft:cut_copper_slab>|<item:minecraft:exposed_cut_copper_slab>|<item:minecraft:weathered_cut_copper_slab>|<item:minecraft:oxidized_cut_copper_slab>, 100);

<recipetype:create:crushing>.addRecipe("recycle_lightning_rod", [scrap_copper*3], <item:minecraft:lightning_rod>, 50);

<recipetype:create:crushing>.addRecipe("recycle_lightning_anchor", [scrap_copper*72, <item:minecraft:quartz>], <item:cave_enhancements:lightning_anchor>, 400);

print("create_recycling.zs loaded");