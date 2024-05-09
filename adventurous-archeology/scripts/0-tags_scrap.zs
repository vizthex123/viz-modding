# Adds meltable tags to various items
# Used in the scrapping recipes I made
#priority 15

print("0-tags_scrap.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


/*
# Copper
val copper = <tag:items:modpack:meltable_copper>;

copper.add(<item:minecraft:brush>);
copper.add(<item:minecraft:spyglass>);

copper.add(<item:betterarcheology:archeology_table>);

copper.add(<item:cavesanddepths:amethyst_chisel>);
copper.add(<item:cavesanddepths:copper_lantern>);
copper.add(<item:cavesanddepths:soul_copper_lantern>);

copper.add(<item:enlightened_end:helium_dart>);
copper.add(<item:enlightened_end:xenon_dart>);

copper.add(<item:supplementaries:wrench>);
copper.add(<item:supplementaries:altimeter>);
copper.add(<item:supplementaries:cog_block>);
copper.add(<item:supplementaries:turn_table>);

copper.add(<item:quark:pipe>);

copper.add(<tag:items:friendsandfoes:copper_buttons>);
copper.add(<tag:items:modpack:lightning_rods>);





# Iron
val iron = <tag:items:modpack:meltable_iron>;

iron.add(<item:minecraft:chainmail_helmet>);
iron.add(<item:minecraft:chainmail_chestplate>);
iron.add(<item:minecraft:chainmail_leggings>);
iron.add(<item:minecraft:chainmail_boots>);
iron.add(<item:leatheredboots:leathered_chainmail_boots>);

iron.add(<item:minecraft:iron_helmet>);
iron.add(<item:minecraft:iron_chestplate>);
iron.add(<item:minecraft:iron_leggings>);
iron.add(<item:minecraft:iron_boots>);
iron.add(<item:leatheredboots:leathered_iron_boots>);

iron.add(<item:minecraft:iron_sword>);
iron.add(<item:minecraft:iron_pickaxe>);
iron.add(<item:minecraft:iron_axe>);
iron.add(<item:minecraft:iron_shovel>);
iron.add(<item:minecraft:iron_hoe>);

iron.add(<item:minecraft:crossbow>);
iron.add(<item:minecraft:shears>);
iron.add(<item:minecraft:shield>);

iron.add(<item:minecraft:activator_rail>);
iron.add(<item:minecraft:blast_furnace>);
iron.add(<item:minecraft:bucket>);
iron.add(<item:minecraft:cauldron>);
iron.add(<item:minecraft:chest_minecart>);
iron.add(<item:minecraft:compass>);
iron.add(<item:minecraft:detector_rail>);
iron.add(<item:minecraft:flint_and_steel>);
iron.add(<item:minecraft:furnace_minecart>);
iron.add(<item:minecraft:heavy_weighted_pressure_plate>);
iron.add(<item:minecraft:hopper>);
iron.add(<item:minecraft:hopper_minecart>);
iron.add(<item:minecraft:iron_door>);
iron.add(<item:minecraft:iron_trapdoor>);
iron.add(<item:minecraft:lantern>);
iron.add(<item:minecraft:minecart>);
iron.add(<item:minecraft:name_tag>);
iron.add(<item:minecraft:piston>);
iron.add(<item:minecraft:soul_lantern>);
iron.add(<item:minecraft:sticky_piston>);
iron.add(<item:minecraft:stonecutter>);
iron.add(<item:minecraft:tnt_minecart>);
iron.add(<item:minecraft:tripwire_hook>);
iron.add(<item:minecraft:smithing_table>);


iron.add(<item:aether:chainmail_gloves>);
iron.add(<item:aether:iron_bubble>);
iron.add(<item:aether:iron_gloves>);
iron.add(<item:aether:iron_pendant>);
iron.add(<item:aether:iron_ring>);

iron.add(<item:aquamirae:terrible_helmet>);
iron.add(<item:aquamirae:terrible_chestplate>);
iron.add(<item:aquamirae:terrible_leggings>);
iron.add(<item:aquamirae:terrible_boots>);

iron.add(<item:aquamirae:poisoned_blade>);
iron.add(<item:aquamirae:terrible_sword>);
iron.add(<item:aquamirae:oxygen_tank>);

iron.add(<item:betterarcheology:iron_brush>);

iron.add(<item:cookingforblockheads:fridge>);
iron.add(<item:cookingforblockheads:heating_unit>);
iron.add(<item:cookingforblockheads:ice_unit>);
iron.add(<item:cookingforblockheads:oven>);
iron.add(<item:cookingforblockheads:preservation_chamber>);
iron.add(<item:cookingforblockheads:sink>);
iron.add(<item:cookingforblockheads:toaster>);

iron.add(<item:enlightened_end:flash_bomb>);
iron.add(<item:enlightened_end:helium_lantern>);
iron.add(<item:enlightened_end:xenon_lantern>);

iron.add(<item:quark:abacus>);
iron.add(<item:quark:backpack>);
iron.add(<item:quark:crafter>);
iron.add(<item:quark:framed_glass>);
iron.add(<item:quark:iron_button>);
iron.add(<item:quark:iron_ladder>);
iron.add(<item:quark:iron_plate>);
iron.add(<item:quark:iron_plate_slab>);
iron.add(<item:quark:iron_plate_stairs>);
iron.add(<item:quark:iron_plate_vertical_slab>);
iron.add(<item:quark:iron_rod>);
iron.add(<item:quark:rusty_iron_plate>);
iron.add(<item:quark:rusty_iron_plate_slab>);
iron.add(<item:quark:rusty_iron_plate_stairs>);
iron.add(<item:quark:rusty_iron_plate_vertical_slab>);
iron.add(<item:quark:trowel>);

iron.add(<item:supplementaries:bomb>);
iron.add(<item:supplementaries:bomb_blue>);
iron.add(<item:supplementaries:bomb_spiky>);
iron.add(<item:supplementaries:bubble_blower>);
iron.add(<item:supplementaries:cage>);
iron.add(<item:supplementaries:dispenser_minecart>);
iron.add(<item:supplementaries:faucet>);
iron.add(<item:supplementaries:goblet>);
iron.add(<item:supplementaries:iron_gate>);
iron.add(<item:supplementaries:lock_block>);
iron.add(<item:supplementaries:pulley_block>);
iron.add(<item:supplementaries:relayer>);
iron.add(<item:supplementaries:spring_launcher>);
iron.add(<item:supplementaries:wind_vane>);
iron.add(<tag:items:supplementaries:candle_holders>);

iron.add(<item:twilightforest:iron_ladder>);


// Gives nuggets instead due to balancing issues
// Must be worth < 3 nuggets to gain this tag
val small_iron = <tag:items:modpack:meltable_iron_small>;

small_iron.add(<item:minecraft:chain>);
small_iron.add(<item:minecraft:iron_bars>);
small_iron.add(<item:minecraft:rail>);

small_iron.add(<item:cookingforblockheads:tool_rack>);

small_iron.add(<item:supplementaries:sconce>);
small_iron.add(<item:supplementaries:sconce_lever>);
small_iron.add(<item:supplementaries:sconce_soul>);

small_iron.add(<tag:items:minecraft:hanging_signs>);


// Gives regular Iron Scrap (since it uses 9+ ingots)
val big_iron = <tag:items:modpack:meltable_iron_big>;

big_iron.add(<item:minecraft:anvil>);
big_iron.add(<item:minecraft:chipped_anvil>);
big_iron.add(<item:minecraft:damaged_anvil>);
big_iron.add(<item:minecraft:iron_horse_armor>);
 
big_iron.add(<item:aquamirae:three_bolt_helmet>);
big_iron.add(<item:aquamirae:three_bolt_suit>);
big_iron.add(<item:aquamirae:three_bolt_leggings>);
big_iron.add(<item:aquamirae:three_bolt_boots>);





# Gold
val gold = <tag:items:modpack:meltable_gold>;

gold.add(<item:minecraft:golden_helmet>);
gold.add(<item:minecraft:golden_chestplate>);
gold.add(<item:minecraft:golden_leggings>);
gold.add(<item:minecraft:golden_boots>);
gold.add(<item:leatheredboots:leathered_gold_boots>);

gold.add(<item:minecraft:golden_sword>);
gold.add(<item:minecraft:golden_pickaxe>);
gold.add(<item:minecraft:golden_axe>);
gold.add(<item:minecraft:golden_shovel>);
gold.add(<item:minecraft:golden_hoe>);

gold.add(<item:minecraft:bell>);
gold.add(<item:minecraft:clock>);
gold.add(<item:minecraft:gilded_blackstone>);
gold.add(<item:minecraft:glistering_melon_slice>);
gold.add(<item:minecraft:golden_apple>);
gold.add(<item:minecraft:golden_carrot>);
gold.add(<item:minecraft:light_weighted_pressure_plate>);
gold.add(<item:minecraft:powered_rail>);

gold.add(<item:aether:golden_gloves>);
gold.add(<item:aether:golden_pendant>);
gold.add(<item:aether:golden_ring>);

gold.add(<item:enlightened_end:dashing_leggings_leggings>);

gold.add(<item:nourished_nether:soul_forge>);

gold.add(<item:quark:gold_button>);

gold.add(<item:supplementaries:clock_block>);
gold.add(<item:supplementaries:globe>);
gold.add(<item:supplementaries:globe_sepia>);
gold.add(<item:supplementaries:gold_door>);
gold.add(<item:supplementaries:gold_gate>);
gold.add(<item:supplementaries:gold_trapdoor>);
gold.add(<item:supplementaries:hourglass>);
gold.add(<item:supplementaries:key>);


// Gives nuggets instead due to balancing issues
// Must be worth <3 nuggets to gain this tag
val small_gold = <tag:items:modpack:meltable_gold_small>;

small_gold.add(<item:aether:golden_feather>);
small_gold.add(<item:quark:gold_bars>);


// Gives regular Gold Scrap (since it uses 9+ ingots)
val big_gold = <tag:items:modpack:meltable_gold_big>;

big_gold.add(<item:minecraft:enchanted_golden_apple>);
big_gold.add(<item:minecraft:golden_horse_armor>);
big_gold.add(<item:twilightforest:gold_minotaur_axe>);





# Diamond
val diamond = <tag:items:modpack:meltable_diamond>;

diamond.add(<item:minecraft:diamond_helmet>);
diamond.add(<item:minecraft:diamond_chestplate>);
diamond.add(<item:minecraft:diamond_leggings>);
diamond.add(<item:minecraft:diamond_boots>);
diamond.add(<item:leatheredboots:leathered_diamond_boots>);

diamond.add(<item:minecraft:diamond_sword>);
diamond.add(<item:minecraft:diamond_pickaxe>);
diamond.add(<item:minecraft:diamond_axe>);
diamond.add(<item:minecraft:diamond_shovel>);
diamond.add(<item:minecraft:diamond_hoe>);

diamond.add(<item:minecraft:enchanting_table>);
diamond.add(<item:minecraft:jukebox>);

diamond.add(<item:aether:diamond_gloves>);

diamond.add(<item:aquamirae:fin_cutter>);
diamond.add(<item:aquamirae:maze_rose>);

diamond.add(<item:betterarcheology:diamond_brush>);

diamond.add(<item:cookingforblockheads:crafting_book>);

diamond.add(<item:quark:pickarang>);



// Gives regular Diamond Scrap (since it uses 9+ gems)
val big_diamond = <tag:items:modpack:meltable_diamond_big>;

big_diamond.add(<item:minecraft:diamond_horse_armor>);
big_diamond.add(<item:twilightforest:diamond_minotaur_axe>);





# Netherite
val netherite = <tag:items:modpack:meltable_netherite>;

netherite.add(<item:minecraft:netherite_helmet>);
netherite.add(<item:minecraft:netherite_chestplate>);
netherite.add(<item:minecraft:netherite_leggings>);
netherite.add(<item:minecraft:netherite_boots>);
netherite.add(<item:leatheredboots:leathered_netherite_boots>);

netherite.add(<item:minecraft:netherite_sword>);
netherite.add(<item:minecraft:netherite_pickaxe>);
netherite.add(<item:minecraft:netherite_axe>);
netherite.add(<item:minecraft:netherite_shovel>);
netherite.add(<item:minecraft:netherite_hoe>);

netherite.add(<item:minecraft:lodestone>);


netherite.add(<item:aether:netherite_gloves>);

netherite.add(<item:aquamirae:abyssal_heaume>);
netherite.add(<item:aquamirae:abyssal_tiara>);
netherite.add(<item:aquamirae:abyssal_brigantine>);
netherite.add(<item:aquamirae:abyssal_leggings>);
netherite.add(<item:aquamirae:abyssal_boots>);

netherite.add(<item:aquamirae:divider>);
netherite.add(<item:aquamirae:poisoned_chakra>);
netherite.add(<item:aquamirae:whisper_of_the_abyss>);

netherite.add(<item:quark:flamerang>);

netherite.add(<item:supplementaries:netherite_door>);
netherite.add(<item:supplementaries:netherite_trapdoor>);
netherite.add(<item:supplementaries:safe>);

netherite.add(<item:voidscape:charred_warhammer>);
netherite.add(<item:voidscape:voidic_crystal_bow>);
netherite.add(<item:voidscape:voidic_crystal_shield>);
netherite.add(<item:voidscape:voidic_crystal_xbow>);



# Fiery
val fiery = <tag:items:modpack:meltable_fiery>;

fiery.add(<item:twilightforest:fiery_helmet>);
fiery.add(<item:twilightforest:fiery_chestplate>);
fiery.add(<item:twilightforest:fiery_leggings>);
fiery.add(<item:twilightforest:fiery_boots>);

fiery.add(<item:twilightforest:fiery_sword>);
fiery.add(<item:twilightforest:fiery_pickaxe>);


# Ironwood
val ironwood = <tag:items:modpack:meltable_ironwood>;

ironwood.add(<item:twilightforest:ironwood_helmet>);
ironwood.add(<item:twilightforest:ironwood_chestplate>);
ironwood.add(<item:twilightforest:ironwood_leggings>);
ironwood.add(<item:twilightforest:ironwood_boots>);

ironwood.add(<item:twilightforest:ironwood_sword>);
ironwood.add(<item:twilightforest:ironwood_pickaxe>);
ironwood.add(<item:twilightforest:ironwood_shovel>);
ironwood.add(<item:twilightforest:ironwood_hoe>);
ironwood.add(<item:twilightforest:ironwood_axe>);


# Knightmetal
val knightmetal = <tag:items:modpack:meltable_knightmetal>;

knightmetal.add(<item:twilightforest:knightmetal_helmet>);
knightmetal.add(<item:twilightforest:knightmetal_chestplate>);
knightmetal.add(<item:twilightforest:knightmetal_leggings>);
knightmetal.add(<item:twilightforest:knightmetal_boots>);

knightmetal.add(<item:twilightforest:knightmetal_sword>);
knightmetal.add(<item:twilightforest:knightmetal_pickaxe>);
knightmetal.add(<item:twilightforest:knightmetal_axe>);

knightmetal.add(<item:twilightforest:knightmetal_shield>);
knightmetal.add(<item:twilightforest:knightmetal_ring>);



# Silver
val silver = <tag:items:modpack:meltable_silver>;

silver.add(<item:galosphere:sterling_helmet>);
silver.add(<item:galosphere:sterling_chestplate>);
silver.add(<item:galosphere:sterling_leggings>);
silver.add(<item:galosphere:sterling_boots>);
silver.add(<item:galosphere:sterling_horse_armor>);


silver.add(<item:galosphere:barometer>);
silver.add(<item:galosphere:spectre_flare>);
silver.add(<item:galosphere:silver_bomb>);
silver.add(<item:galosphere:silver_balance>);
silver.add(<item:galosphere:shadow_frame>);
silver.add(<item:galosphere:pink_salt_lamp>);
silver.add(<item:galosphere:combustion_table>);



# Rose Gold
# Smelts into Copper, blasts into Gold
val rose_gold = <tag:items:modpack:meltable_rose_gold>;

rose_gold.add(<item:cavesanddepths:rosegold_helmet>);
rose_gold.add(<item:cavesanddepths:rosegold_chestplate>);
rose_gold.add(<item:cavesanddepths:rosegold_leggings>);
rose_gold.add(<item:cavesanddepths:rosegold_boots>);

rose_gold.add(<item:cavesanddepths:rosegoldsword>);
rose_gold.add(<item:cavesanddepths:rosegoldpickaxe>);
rose_gold.add(<item:cavesanddepths:rosegoldshovel>);
rose_gold.add(<item:cavesanddepths:rosegoldhoe>);
rose_gold.add(<item:cavesanddepths:rosegoldaxe>);

rose_gold.add(<item:cavesanddepths:rose_gold_apple>);
rose_gold.add(<item:cavesanddepths:rosegoldupgradesmithingtemplate>);
*/
print("0-tags_scrap.zs loaded");