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
val shredded_hide = <item:kubejs:shredded_hide>;

val scrap_copper = <item:kubejs:small_copper_scrap>;
# val tiny_copper = <item:kubejs:tiny_copper_scrap>;

val scrap = <item:kubejs:small_iron_scrap>;
val tiny = <item:kubejs:tiny_iron_scrap>;

val big_gold = <item:kubejs:gold_scrap>;
val scrap_gold = <item:kubejs:small_gold_scrap>;
val tiny_gold = <item:kubejs:tiny_gold_scrap>;

val scrap_diamond = <item:kubejs:small_diamond_scrap>;
val scrap_netherite = <item:minecraft:netherite_scrap>;

val flint = <item:minecraft:flint>;
val charcoal = <item:minecraft:charcoal>;
val redstone = <item:minecraft:redstone>;

val dust = <item:createsifter:dust>;
val gravel = <item:minecraft:gravel>;
val sand = <item:minecraft:sand>;

# Item recycling
# Millstone gives half as much output chance for metal & gems, and takes an extra second or two
# 1 Ingots = 1 Small Scrap, rounded down
# Netherite Ingots give 2 Scrap with a 50% chance to get 2 more
# Any remaining Nuggets make Tiny Scrap at a 2:1 ratio (rounded down)
# 1 Plank = 1 Sawdust
# 1 Stick = 0.5 Sawdust
# 1 String/Paper = 1 Fiber
# Blocks get demoted if possible (e.g. cobble -> gravel)

// Books
<recipetype:create:milling>.addRecipe("recycle_books", [shredded_hide, fiber*3], <item:minecraft:book>|<item:minecraft:written_book>.anyDamage(), 30);

	// Quill
<recipetype:create:milling>.addRecipe("recycle_book_and_quill", [shredded_hide, fiber*3, <item:minecraft:feather> % 25, <item:minecraft:black_dye> % 50], <item:minecraft:writable_book>, 30);

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
<recipetype:create:milling>.addRecipe("recycle_redstone_lamp", [<item:minecraft:glowstone_dust>*2 % 50, redstone*2 % 50], <item:minecraft:redstone_lamp>, 150);
<recipetype:create:crushing>.addRecipe("recycle_redstone_lamp_boosted", [<item:minecraft:glowstone_dust>*2 % 50, redstone*2 % 50], <item:minecraft:redstone_lamp>);

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
<recipetype:create:milling>.addRecipe("recycle_spyglass_crossbow", [<item:minecraft:amethyst_shard> % 10, scrap_copper*2 % 50, scrap*3 % 50, sawdust*3, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 60);
<recipetype:create:crushing>.addRecipe("recycle_spyglass_crossbow_boosted", [<item:minecraft:amethyst_shard> % 20, scrap_copper*2, scrap*3, sawdust*3, fiber*2], <item:additionaladditions:crossbow_with_spyglass>.anyDamage(), 40);

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
<recipetype:create:milling>.addRecipe("recycle_tnt_cart", [scrap*5 % 50, charcoal*5 % 25, dust*4 % 50], <item:minecraft:tnt_minecart>);
<recipetype:create:crushing>.addRecipe("recycle_tnt_cart_boosted", [scrap*5, charcoal*5 % 25, dust*4 % 50], <item:minecraft:tnt_minecart>, 60);

// Candles
<recipetype:create:milling>.addRecipe("recycle_candles", [<item:minecraft:honeycomb> % 50, fiber], <tag:items:minecraft:candles>, 20);

// Repeater
<recipetype:create:milling>.addRecipe("recycle_repeater", [redstone*3 % 50, gravel*3], <item:minecraft:repeater>, 30);

// Flower Pot
<recipetype:create:milling>.addRecipe("recycle_flower_pot", [<item:minecraft:clay_ball>*2], <item:minecraft:flower_pot>, 30);

# TNT
<recipetype:create:milling>.addRecipe("recycle_tnt", [charcoal*5 % 35, dust*4 % 50], <item:minecraft:tnt>, 140);

# Lodestone
<recipetype:create:crushing>.addRecipe("recycle_lodestone", [scrap_netherite*2, scrap_netherite*2 % 50, gravel*8], <item:minecraft:lodestone>, 200);

# Copper Blocks
<recipetype:create:crushing>.addRecipe("recycle_cut_copper", [scrap_copper*2, scrap_copper % 50], <item:minecraft:cut_copper>|<item:minecraft:exposed_cut_copper>|<item:minecraft:weathered_cut_copper>|<item:minecraft:oxidized_cut_copper>, 100);

<recipetype:create:crushing>.addRecipe("recycle_cut_copper_slab", [scrap_copper, scrap_copper % 12], <item:minecraft:cut_copper_slab>|<item:minecraft:exposed_cut_copper_slab>|<item:minecraft:weathered_cut_copper_slab>|<item:minecraft:oxidized_cut_copper_slab>, 100);

<recipetype:create:crushing>.addRecipe("recycle_lightning_rod", [scrap_copper*3], <item:minecraft:lightning_rod>, 50);

<recipetype:create:crushing>.addRecipe("recycle_lightning_anchor", [scrap_copper*72, <item:minecraft:quartz>], <item:cave_enhancements:lightning_anchor>, 400);



# Gear
<recipetype:create:milling>.addRecipe("recycle_stone_sword", [gravel*2, sawdust % 50], <item:minecraft:stone_sword>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_sword", [scrap*2 % 50, sawdust % 50], <item:minecraft:iron_sword>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_pickaxe", [scrap*3 % 50, sawdust], <item:minecraft:iron_pickaxe>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_shovel", [scrap % 50, sawdust], <item:minecraft:iron_shovel>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_gold_sword", [scrap_gold*2 % 50, sawdust % 50], <item:minecraft:golden_sword>.anyDamage());

<recipetype:create:crushing>.addRecipe("recycle_iron_sword_boosted", [scrap*2, sawdust % 50], <item:minecraft:iron_sword>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_iron_pickaxe_boosted", [scrap*3 % 50, sawdust], <item:minecraft:iron_pickaxe>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_iron_shovel_boosted", [scrap % 50, sawdust], <item:minecraft:iron_shovel>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_gold_sword_boosted", [scrap_gold*2, sawdust % 50], <item:minecraft:golden_sword>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_diamond_sword", [scrap_diamond*2, sawdust % 50], <item:minecraft:diamond_sword>.anyDamage());


<recipetype:create:milling>.addRecipe("recycle_chainmail_helmet", [tiny*5 % 50], <item:minecraft:chainmail_helmet>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_chainmail_chestplate", [tiny*8 % 50], <item:minecraft:chainmail_chestplate>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_chainmail_leggings", [tiny*7 % 50], <item:minecraft:chainmail_leggings>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_chainmail_boots", [tiny*4 % 50], <item:minecraft:chainmail_boots>.anyDamage());

<recipetype:create:milling>.addRecipe("recycle_iron_helmet", [scrap*5 % 50], <item:minecraft:iron_helmet>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_chestplate", [scrap*8 % 50], <item:minecraft:iron_chestplate>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_leggings", [scrap*7 % 50], <item:minecraft:iron_leggings>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_iron_boots", [scrap*4 % 50], <item:minecraft:iron_boots>.anyDamage());

<recipetype:create:milling>.addRecipe("recycle_gold_helmet", [scrap_gold*5 % 50], <item:minecraft:golden_helmet>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_gold_chestplate", [scrap_gold*8 % 50], <item:minecraft:golden_chestplate>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_gold_leggings", [scrap_gold*7 % 50], <item:minecraft:golden_leggings>.anyDamage());
<recipetype:create:milling>.addRecipe("recycle_gold_boots", [scrap_gold*4 % 50], <item:minecraft:golden_boots>.anyDamage());



<recipetype:create:crushing>.addRecipe("recycle_chainmail_helmet_boosted", [tiny*5], <item:minecraft:chainmail_helmet>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_chainmail_chestplate_boosted", [tiny*8], <item:minecraft:chainmail_chestplate>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_chainmail_leggings_boosted", [tiny*7], <item:minecraft:chainmail_leggings>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_chainmail_boots_boosted", [tiny*4], <item:minecraft:chainmail_boots>.anyDamage());

<recipetype:create:crushing>.addRecipe("recycle_iron_helmet_boosted", [scrap*5], <item:minecraft:iron_helmet>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_iron_chestplate_boosted", [scrap*8], <item:minecraft:iron_chestplate>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_iron_leggings_boosted", [scrap*7], <item:minecraft:iron_leggings>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_iron_boots_boosted", [scrap*4], <item:minecraft:iron_boots>.anyDamage());

<recipetype:create:crushing>.addRecipe("recycle_gold_helmet_boosted", [scrap_gold*5], <item:minecraft:golden_helmet>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_gold_chestplate_boosted", [scrap_gold*8], <item:minecraft:golden_chestplate>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_gold_leggings_boosted", [scrap_gold*7], <item:minecraft:golden_leggings>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_gold_boots_boosted", [scrap_gold*4], <item:minecraft:golden_boots>.anyDamage());

<recipetype:create:crushing>.addRecipe("recycle_diamond_helmet", [scrap_diamond*5], <item:minecraft:diamond_helmet>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_diamond_chestplate", [scrap_diamond*8], <item:minecraft:diamond_chestplate>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_diamond_leggings", [scrap_diamond*7], <item:minecraft:diamond_leggings>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_diamond_boots", [scrap_diamond*4], <item:minecraft:diamond_boots>.anyDamage());

<recipetype:create:crushing>.addRecipe("recycle_netherite_helmet", [scrap_netherite*2, scrap_netherite*2 % 50], <item:minecraft:netherite_helmet>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_netherite_chestplate", [scrap_netherite*2, scrap_netherite*2 % 50], <item:minecraft:netherite_chestplate>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_netherite_leggings", [scrap_netherite*2, scrap_netherite*2 % 50], <item:minecraft:netherite_leggings>.anyDamage());
<recipetype:create:crushing>.addRecipe("recycle_netherite_boots", [scrap_netherite*2, scrap_netherite*2 % 50], <item:minecraft:netherite_boots>.anyDamage());


# Blocks
val flour = <item:create:cinder_flour>;

<recipetype:create:milling>.addRecipe("recycle_item_frame", [shredded_hide, sawdust*4], <item:minecraft:item_frame>);

<recipetype:create:crushing>.addRecipe("recycle_furnace", [gravel*8], <item:minecraft:furnace>);
<recipetype:create:crushing>.addRecipe("recycle_smoker", [gravel*8, sawdust*16], <item:minecraft:smoker>);
<recipetype:create:crushing>.addRecipe("recycle_blast_furnace", [gravel*11, scrap*5], <item:minecraft:blast_furnace>);

<recipetype:create:crushing>.addRecipe("recycle_nether_bricks", [flour*4], <item:minecraft:nether_bricks>|<item:minecraft:cracked_nether_bricks>|<item:minecraft:chiseled_nether_bricks>|<item:minecraft:nether_brick_stairs>|<item:minecraft:nether_brick_wall>);
<recipetype:create:crushing>.addRecipe("recycle_nether_brick_slab", [flour*2], <item:minecraft:nether_brick_slab>);
<recipetype:create:crushing>.addRecipe("recycle_nether_brick_fence", [flour*3], <item:minecraft:nether_brick_fence>);

<recipetype:create:crushing>.addRecipe("recycle_nether_brick_chest", [flour*32], <item:quark:nether_brick_chest>);

<recipetype:create:crushing>.addRecipe("recycle_red_nether_bricks", [flour*2], <item:minecraft:red_nether_bricks>|<item:nourished_nether:cracked_red_nether_bricks>|<item:nourished_nether:chiseled_red_nether_bricks>|<item:minecraft:red_nether_brick_stairs>|<item:minecraft:red_nether_brick_wall>);

# Full blocks take 5 seconds, partial ones take 3, and items take 1 - 2


### Mechanical Saw recycling recipes
# Gives only 1 output. Used for things made of leather, paper, etc.

// Recycle Leather gear
<recipetype:create:cutting>.addRecipe("recycle_leather_helmet", shredded_hide*5, <item:minecraft:leather_helmet>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("recycle_leather_chestplate", shredded_hide*8, <item:minecraft:leather_chestplate>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("recycle_leather_leggings", shredded_hide*7, <item:minecraft:leather_leggings>.anyDamage(), 40);
<recipetype:create:cutting>.addRecipe("recycle_leather_boots", shredded_hide*4, <item:minecraft:leather_boots>.anyDamage(), 40);

// Recycle Ropes
<recipetype:create:cutting>.addRecipe("recycle_rope", fiber*2, <item:additionaladditions:rope>, 25);
<recipetype:create:cutting>.addRecipe("recycle_thick_rope", fiber*8, <item:quark:rope>, 50);

// Recycle Name Tags
<recipetype:create:cutting>.addRecipe("recycle_name_tag", fiber*6, <item:minecraft:name_tag>, 20);

// Recycle Witch Hat
<recipetype:create:cutting>.addRecipe("recycle_witch_hat", shredded_hide*6, <item:biomemakeover:witch_hat>.anyDamage(), 30);

// Recycle Forgotten Hat
<recipetype:create:cutting>.addRecipe("recycle_forgotten_hat", shredded_hide*12, <item:quark:forgotten_hat>.anyDamage(), 30);

// Recycle Carpets
<recipetype:create:cutting>.addRecipe("recycle_carpet", fiber*2, <tag:items:minecraft:wool_carpets>, 20);

// Make Wool -> String give Fibers instead
<recipetype:create:milling>.removeByName("create:milling/wool");
<recipetype:create:crushing>.removeByName("create:crushing/wool");
<recipetype:create:cutting>.addRecipe("recycle_wool", fiber*4, <tag:items:minecraft:wool>, 60);



### Sawdust (migrated from the Sawing script)
# Full blocks take 5 seconds, partial ones are 3, misc/small things are 1 - 2
# 1 Plank = 1 Sawdust
# 1 Slab = 0.5 Sawdust
# 1 Stick = 0.25 Sawdust

// Banners
<recipetype:create:milling>.addRecipe("recycle_banners", [fiber*24, sawdust % 50], <tag:items:minecraft:banners>, 40);

// Wooden Slabs
<recipetype:create:milling>.addRecipe("recycle_slabs", [sawdust], <tag:items:minecraft:wooden_slabs>, 50);

// Armour Stand
<recipetype:create:milling>.addRecipe("recycle_stand", [sawdust*3, gravel % 50], <item:minecraft:armor_stand>, 60);

// Fences & Gates
<recipetype:create:milling>.addRecipe("recycle_fences", [sawdust, sawdust % 60], <tag:items:forge:fences/wooden>, 60);
<recipetype:create:milling>.addRecipe("recycle_fence_gates", [sawdust*4], <tag:items:forge:fence_gates/wooden>, 60);

// Trapdoors
<recipetype:create:milling>.addRecipe("recycle_trapdoors", [sawdust*3], <tag:items:minecraft:wooden_trapdoors>, 40);

// Doors
<recipetype:create:milling>.addRecipe("recycle_doors", [sawdust*2], <tag:items:minecraft:wooden_doors>, 60);

// Chests
<recipetype:create:milling>.addRecipe("recycle_chests", [sawdust*8], <tag:items:forge:chests/wooden>);

// Barrels
<recipetype:create:milling>.addRecipe("recycle_barrels", [sawdust*7], <item:minecraft:barrel>);

// Crafting Tables
<recipetype:create:milling>.addRecipe("recycle_workbench", [sawdust*4], <item:minecraft:crafting_table>);

// Note Block
<recipetype:create:milling>.addRecipe("recycle_note_block", [sawdust*8, redstone % 50], <item:minecraft:note_block>);

// Jukebox
<recipetype:create:milling>.addRecipe("recycle_jukebox", [sawdust*8, scrap_diamond % 50], <item:minecraft:jukebox>);
<recipetype:create:crushing>.addRecipe("recycle_jukebox_boosted", [sawdust*8, scrap_diamond], <item:minecraft:jukebox>);

// Stairs
<recipetype:create:milling>.addRecipe("recycle_stairs", [sawdust, sawdust % 50], <tag:items:minecraft:wooden_stairs>, 80);

// Signs
<recipetype:create:milling>.addRecipe("recycle_signs", [sawdust*2, sawdust % 10], <tag:items:minecraft:signs>, 20);

// Pressure Plates
<recipetype:create:milling>.addRecipe("recycle_wooden_pressure_plates", [sawdust*2], <tag:items:minecraft:wooden_pressure_plates>, 20);
<recipetype:create:milling>.addRecipe("recycle_stone_pressure_plates", [gravel*2], <item:minecraft:stone_pressure_plate>|<item:minecraft:polished_blackstone_pressure_plate>, 30);

<recipetype:create:milling>.addRecipe("recycle_heavy_pressure_plate", [scrap*2 % 50], <item:minecraft:heavy_weighted_pressure_plate>, 40);
<recipetype:create:crushing>.addRecipe("recycle_heavy_pressure_plate_boosted", [scrap*2], <item:minecraft:heavy_weighted_pressure_plate>, 40);

<recipetype:create:milling>.addRecipe("recycle_light_pressure_plate", [scrap_gold*2 % 50], <item:minecraft:light_weighted_pressure_plate>, 40);
<recipetype:create:crushing>.addRecipe("recycle_light_pressure_plate_boosted", [scrap_gold*2], <item:minecraft:light_weighted_pressure_plate>, 40);

// Buttons
<recipetype:create:milling>.addRecipe("recycle_buttons", [sawdust], <tag:items:minecraft:wooden_buttons>, 20);
<recipetype:create:milling>.addRecipe("recycle_stone_buttons", [gravel], <item:minecraft:stone_button>|<item:minecraft:polished_blackstone_button>, 30);

// Boats
<recipetype:create:milling>.addRecipe("recycle_boats", [sawdust*5], <tag:items:minecraft:boats>, 60);

// Hand Crank
<recipetype:create:milling>.addRecipe("recycle_hand_crank", [sawdust*3, <item:minecraft:cobblestone>], <item:create:hand_crank>, 40);
<recipetype:create:crushing>.addRecipe("recycle_hand_crank_boosted", [sawdust*3, <item:minecraft:cobblestone>], <item:create:hand_crank>, 40);



# Profession Tables
// Fletching
<recipetype:create:milling>.addRecipe("recycle_fletching_table", [flint*2 % 50, sawdust*4], <item:minecraft:fletching_table>);

// Smithing
<recipetype:create:milling>.addRecipe("recycle_smithing_table", [scrap*2 % 50, sawdust*4], <item:minecraft:smithing_table>);
<recipetype:create:crushing>.addRecipe("recycle_smithing_table_boosted", [scrap*2, sawdust*4], <item:minecraft:smithing_table>);

// Loom
<recipetype:create:milling>.addRecipe("recycle_loom", [sawdust*2, fiber*2], <item:minecraft:loom>);

// Cartography Table
<recipetype:create:milling>.addRecipe("recycle_cartography_table", [sawdust*4, fiber*2], <item:minecraft:cartography_table>, 100);

// Composter
<recipetype:create:milling>.addRecipe("recycle_composter", [sawdust*3, sawdust % 50], <item:minecraft:composter>, 60);

// Lectern
<recipetype:create:milling>.addRecipe("recycle_lectern", [sawdust*8], <item:minecraft:lectern>, 60);

print("create_recycling.zs loaded");