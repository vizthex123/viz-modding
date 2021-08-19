# Adds AMC & recipes to thermal's items because I am tired of spamming my other scripts
#priority 20

import crafttweaker.api.tag.MCTag;

print("thermal_amc.zs loading...");
/*
Tiers:
italicized dark gray: <1 (microscopic)
dark gray: 1 - 25 (minimal)
gray: 26 - 100 (average)
dark blue: 101 - 250 (above average)
dark aqua: 251 - 500 (high)
aqua: 501 - 1,000 (very high)
green: 1,001 - 4,999 (extreme)

purple: 5,000+ (insane)

<tag:items:amc-value:0>.add(<item:>);
*/

<tag:items:amc-value:180>.add(<item:thermal:copper_block>);
<tag:items:amc-value:180>.add(<item:thermal:tin_block>);
<tag:items:amc-value:450>.add(<item:thermal:lead_block>);
<tag:items:amc-value:450>.add(<item:thermal:silver_block>);
<tag:items:amc-value:315>.add(<item:thermal:nickel_block>);

<tag:items:amc-value:20>.add(<item:thermal:copper_ore>);
<tag:items:amc-value:20>.add(<item:thermal:tin_ore>);
<tag:items:amc-value:50>.add(<item:thermal:lead_ore>);
<tag:items:amc-value:50>.add(<item:thermal:silver_ore>);
<tag:items:amc-value:35>.add(<item:thermal:nickel_ore>);

<tag:items:amc-value:20>.add(<item:thermal:copper_ingot>);
<tag:items:amc-value:20>.add(<item:thermal:tin_ingot>);
<tag:items:amc-value:50>.add(<item:thermal:lead_ingot>);
<tag:items:amc-value:50>.add(<item:thermal:silver_ingot>);
<tag:items:amc-value:35>.add(<item:thermal:nickel_ingot>);

<tag:items:amc-value:20>.add(<item:thermal:copper_dust>);
<tag:items:amc-value:20>.add(<item:thermal:tin_dust>);
<tag:items:amc-value:50>.add(<item:thermal:lead_dust>);
<tag:items:amc-value:50>.add(<item:thermal:silver_dust>);
<tag:items:amc-value:35>.add(<item:thermal:nickel_dust>);

// Not accurate cuz maths
<tag:items:amc-value:2>.add(<item:thermal:copper_nugget>);
<tag:items:amc-value:2>.add(<item:thermal:tin_nugget>);
<tag:items:amc-value:5.555>.add(<item:thermal:lead_nugget>);
<tag:items:amc-value:5.555>.add(<item:thermal:silver_nugget>);
<tag:items:amc-value:3.888>.add(<item:thermal:nickel_nugget>);

<tag:items:amc-value:180>.add(<item:thermal:bronze_block>);
<tag:items:amc-value:450>.add(<item:thermal:electrum_block>);
<tag:items:amc-value:765>.add(<item:thermal:invar_block>);
<tag:items:amc-value:270>.add(<item:thermal:constantan_block>);
<tag:items:amc-value:6570>.add(<item:thermal:signalum_block>);
<tag:items:amc-value:315>.add(<item:thermal:lumium_block>);
<tag:items:amc-value:9675>.add(<item:thermal:enderium_block>);

<tag:items:amc-value:20>.add(<item:thermal:bronze_ingot>);
<tag:items:amc-value:50>.add(<item:thermal:electrum_ingot>);
<tag:items:amc-value:85>.add(<item:thermal:invar_ingot>);
<tag:items:amc-value:30>.add(<item:thermal:constantan_ingot>); // Should be 27.5
<tag:items:amc-value:730>.add(<item:thermal:signalum_ingot>); // Should be 727.5
<tag:items:amc-value:35>.add(<item:thermal:lumium_ingot>); // Should be 33.75
<tag:items:amc-value:1075>.add(<item:thermal:enderium_ingot>);

<tag:items:amc-value:20>.add(<item:thermal:bronze_dust>);
<tag:items:amc-value:50>.add(<item:thermal:electrum_dust>);
<tag:items:amc-value:85>.add(<item:thermal:invar_dust>);
<tag:items:amc-value:30>.add(<item:thermal:constantan_dust>); // Should be 27.5
<tag:items:amc-value:730>.add(<item:thermal:signalum_dust>); // Should be 727.5
<tag:items:amc-value:35>.add(<item:thermal:lumium_dust>); // Should be 33.75
<tag:items:amc-value:1075>.add(<item:thermal:enderium_dust>);

<tag:items:amc-value:2>.add(<item:thermal:bronze_nugget>);
<tag:items:amc-value:5.555>.add(<item:thermal:electrum_nugget>);
<tag:items:amc-value:9>.add(<item:thermal:invar_nugget>);
<tag:items:amc-value:3>.add(<item:thermal:constantan_nugget>);
<tag:items:amc-value:80>.add(<item:thermal:signalum_nugget>);
<tag:items:amc-value:3.888>.add(<item:thermal:lumium_nugget>);
<tag:items:amc-value:120>.add(<item:thermal:enderium_nugget>); // Rounded up

<tag:items:amc-value:10>.add(<item:thermal:lapis_dust>);
<tag:items:amc-value:25>.add(<item:thermal:iron_dust>);
<tag:items:amc-value:50>.add(<item:thermal:gold_dust>);
<tag:items:amc-value:50>.add(<item:thermal:quartz_dust>);
<tag:items:amc-value:500>.add(<item:thermal:ender_pearl_dust>);
<tag:items:amc-value:1000>.add(<item:thermal:diamond_dust>);
<tag:items:amc-value:1000>.add(<item:thermal:emerald_dust>);


<tag:items:amc-value:20>.add(<item:thermal:copper_plate>);
<tag:items:amc-value:20>.add(<item:thermal:tin_plate>);
<tag:items:amc-value:50>.add(<item:thermal:lead_plate>);
<tag:items:amc-value:50>.add(<item:thermal:silver_plate>);
<tag:items:amc-value:35>.add(<item:thermal:nickel_plate>);

<tag:items:amc-value:20>.add(<item:thermal:bronze_plate>);
<tag:items:amc-value:50>.add(<item:thermal:electrum_plate>);
<tag:items:amc-value:85>.add(<item:thermal:invar_plate>);
<tag:items:amc-value:30>.add(<item:thermal:constantan_plate>); // Should be 27.5
<tag:items:amc-value:730>.add(<item:thermal:signalum_plate>); // Should be 727.5
<tag:items:amc-value:35>.add(<item:thermal:lumium_plate>); // Should be 33.75
<tag:items:amc-value:1075>.add(<item:thermal:enderium_plate>);

// The Iron Nugget isn't counted with gears because I'm lazy (and also gear pressing recipes)
<tag:items:amc-value:100>.add(<item:thermal:iron_gear>);
<tag:items:amc-value:200>.add(<item:thermal:gold_gear>);
<tag:items:amc-value:40>.add(<item:thermal:lapis_gear>);
<tag:items:amc-value:4000>.add(<item:thermal:diamond_gear>);
<tag:items:amc-value:4000>.add(<item:thermal:emerald_gear>);
<tag:items:amc-value:200>.add(<item:thermal:quartz_gear>);
<tag:items:amc-value:80>.add(<item:thermal:copper_gear>);
<tag:items:amc-value:80>.add(<item:thermal:tin_gear>);
<tag:items:amc-value:200>.add(<item:thermal:lead_gear>);
<tag:items:amc-value:200>.add(<item:thermal:silver_gear>);
<tag:items:amc-value:140>.add(<item:thermal:nickel_gear>);

<tag:items:amc-value:80>.add(<item:thermal:bronze_gear>);
<tag:items:amc-value:200>.add(<item:thermal:electrum_gear>);
<tag:items:amc-value:340>.add(<item:thermal:invar_gear>);
<tag:items:amc-value:120>.add(<item:thermal:constantan_gear>);
<tag:items:amc-value:2920>.add(<item:thermal:signalum_gear>);
<tag:items:amc-value:140>.add(<item:thermal:lumium_gear>);
<tag:items:amc-value:4300>.add(<item:thermal:enderium_gear>);

// None of these are gonna be accurate since things can't be divided by 3 super well. Stupid maths >:{
<tag:items:amc-value:8>.add(<item:thermal:iron_coin>);
<tag:items:amc-value:16>.add(<item:thermal:gold_coin>);

<tag:items:amc-value:6>.add(<item:thermal:copper_coin>);
<tag:items:amc-value:6>.add(<item:thermal:tin_coin>);
<tag:items:amc-value:16>.add(<item:thermal:lead_coin>);
<tag:items:amc-value:16>.add(<item:thermal:silver_coin>);
<tag:items:amc-value:12>.add(<item:thermal:nickel_coin>);

<tag:items:amc-value:6>.add(<item:thermal:bronze_coin>);
<tag:items:amc-value:16>.add(<item:thermal:electrum_coin>);
<tag:items:amc-value:28>.add(<item:thermal:invar_coin>);
<tag:items:amc-value:10>.add(<item:thermal:constantan_coin>); // Huzzah! The first accurate one!!
<tag:items:amc-value:245>.add(<item:thermal:signalum_coin>); // Rounded up
<tag:items:amc-value:12>.add(<item:thermal:lumium_coin>);
<tag:items:amc-value:360>.add(<item:thermal:enderium_coin>); // Rounded up




<tag:items:amc-value:120>.add(<item:thermal:rf_coil>);
<tag:items:amc-value:100>.add(<item:thermal:redstone_servo>); // Should be 95

<tag:items:amc-value:1350>.add(<item:thermal:cinnabar_block>);
<tag:items:amc-value:150>.add(<item:thermal:cinnabar_dust>);
<tag:items:amc-value:150>.add(<item:thermal:cinnabar_ore>);
<tag:items:amc-value:150>.add(<item:thermal:cinnabar>);

<tag:items:amc-value:450>.add(<item:thermal:niter_block>);
<tag:items:amc-value:50>.add(<item:thermal:niter_dust>);
<tag:items:amc-value:50>.add(<item:thermal:niter_ore>);
<tag:items:amc-value:50>.add(<item:thermal:niter>);

<tag:items:amc-value:225>.add(<item:thermal:sulfur_block>);
<tag:items:amc-value:25>.add(<item:thermal:sulfur_dust>);
<tag:items:amc-value:25>.add(<item:thermal:sulfur_ore>);
<tag:items:amc-value:25>.add(<item:thermal:sulfur>);

<tag:items:amc-value:225>.add(<item:thermal:apatite_block>);
<tag:items:amc-value:25>.add(<item:thermal:apatite_dust>);
<tag:items:amc-value:25>.add(<item:thermal:apatite_ore>);
<tag:items:amc-value:25>.add(<item:thermal:apatite>);

<tag:items:amc-value:100>.add(<item:thermal:oil_sand>);
<tag:items:amc-value:100>.add(<item:thermal:oil_red_sand>);
<tag:items:amc-value:900>.add(<item:thermal:bitumen_block>);
<tag:items:amc-value:100>.add(<item:thermal:bitumen>);
<tag:items:amc-value:900>.add(<item:thermal:tar_block>);
<tag:items:amc-value:100>.add(<item:thermal:tar>);

<tag:items:amc-value:315>.add(<item:thermal:gunpowder_block>);
<tag:items:amc-value:9>.add(<item:thermal:sawdust_block>);
<tag:items:amc-value:1>.add(<item:thermal:sawdust>);

<tag:items:amc-value:225>.add(<item:thermal:coal_coke_block>);
<tag:items:amc-value:25>.add(<item:thermal:coal_coke>);

<tag:items:amc-value:450>.add(<item:thermal:rosin_block>);
<tag:items:amc-value:50>.add(<item:thermal:rosin>);
<tag:items:amc-value:450>.add(<item:thermal:cured_rubber_block>);
<tag:items:amc-value:50>.add(<item:thermal:cured_rubber>);
<tag:items:amc-value:450>.add(<item:thermal:rubber_block>);
<tag:items:amc-value:50>.add(<item:thermal:rubber>);

<tag:items:amc-value:36>.add(<item:thermal:slag_block>);
<tag:items:amc-value:4>.add(<item:thermal:slag>);
<tag:items:amc-value:225>.add(<item:thermal:rich_slag_block>);
<tag:items:amc-value:25>.add(<item:thermal:rich_slag>);

<tag:items:amc-value:90>.add(<item:thermal:sugar_cane_block>);
<tag:items:amc-value:2.25>.add(<item:thermal:bamboo_block>);
<tag:items:amc-value:135>.add(<item:thermal:apple_block>);
<tag:items:amc-value:54>.add(<item:thermal:carrot_block>);
<tag:items:amc-value:54>.add(<item:thermal:potato_block>);
<tag:items:amc-value:54>.add(<item:thermal:beetroot_block>);

<tag:items:amc-value:185>.add(<item:thermal:machine_frame>); // Should be 184
<tag:items:amc-value:404>.add(<item:thermal:energy_cell_frame>);
<tag:items:amc-value:160>.add(<item:thermal:fluid_cell_frame>); // Should be 164
<tag:items:amc-value:75>.add(<item:thermal:obsidian_glass>); // Should be 75.5

<tag:items:amc-value:100>.add(<item:thermal:basalz_rod>);
<tag:items:amc-value:50>.add(<item:thermal:basalz_powder>);
<tag:items:amc-value:100>.add(<item:thermal:blizz_rod>);
<tag:items:amc-value:50>.add(<item:thermal:blizz_powder>);
<tag:items:amc-value:100>.add(<item:thermal:blitz_rod>);
<tag:items:amc-value:50>.add(<item:thermal:blitz_powder>);

// All of these should be higher, but decimals are annoying
<tag:items:amc-value:805>.add(<item:thermal:signalum_glass>);
<tag:items:amc-value:110>.add(<item:thermal:lumium_glass>);
<tag:items:amc-value:1150>.add(<item:thermal:enderium_glass>);
<tag:items:amc-value:375>.add(<item:thermal:slime_tnt>);
<tag:items:amc-value:315>.add(<item:thermal:redstone_tnt>);
<tag:items:amc-value:225>.add(<item:thermal:glowstone_tnt>);
<tag:items:amc-value:2175>.add(<item:thermal:ender_tnt>);
<tag:items:amc-value:375>.add(<item:thermal:earth_tnt>);
<tag:items:amc-value:375>.add(<item:thermal:fire_tnt>);
<tag:items:amc-value:375>.add(<item:thermal:ice_tnt>);
<tag:items:amc-value:375>.add(<item:thermal:lightning_tnt>);

<tag:items:amc-value:280>.add(<item:thermal:device_tree_extractor>); // Should be 282
<tag:items:amc-value:280>.add(<item:thermal:device_water_gen>); // Should be 282
<tag:items:amc-value:640>.add(<item:thermal:device_rock_gen>); // Should be 642
<tag:items:amc-value:810>.add(<item:thermal:device_collector>); // Should be 812
<tag:items:amc-value:290>.add(<item:thermal:device_nullifier>); // Should be 292
<tag:items:amc-value:420>.add(<item:thermal:device_potion_diffuser>); // Should be 423
<tag:items:amc-value:210>.add(<item:thermal:tinker_bench>); // Should be 209

<tag:items:amc-value:925>.add(<item:thermal:charge_bench>);
<tag:items:amc-value:1090>.add(<item:thermal:energy_cell>); // Should be 1,089
<tag:items:amc-value:1045>.add(<item:thermal:fluid_cell>);

<tag:items:amc-value:60>.add(<item:thermal:diving_fabric>); // Should be 66
<tag:items:amc-value:60>.add(<item:thermal:hazmat_fabric>); // Should be 66
<tag:items:amc-value:170>.add(<item:thermal:drill_head>);
<tag:items:amc-value:170>.add(<item:thermal:saw_blade>);
<tag:items:amc-value:2065>.add(<item:thermal:xp_crystal>);

// These should all be slightly higher (cuz of the glass) but I don't wanna
<tag:items:amc-value:610>.add(<item:thermal:upgrade_augment_1>);
<tag:items:amc-value:6750>.add(<item:thermal:upgrade_augment_2>);
<tag:items:amc-value:12400>.add(<item:thermal:upgrade_augment_3>);

<tag:items:amc-value:2085>.add(<item:thermal:xp_storage_augment>); // Should be 2,087.22
<tag:items:amc-value:320>.add(<item:thermal:rf_coil_augment>);
<tag:items:amc-value:320>.add(<item:thermal:rf_coil_storage_augment>);
<tag:items:amc-value:320>.add(<item:thermal:rf_coil_xfer_augment>);
<tag:items:amc-value:835>.add(<item:thermal:fluid_tank_augment>);
<tag:items:amc-value:735>.add(<item:thermal:item_filter_augment>); // Should be 738

<tag:items:amc-value:620>.add(<item:thermal:machine_speed_augment>);
<tag:items:amc-value:470>.add(<item:thermal:machine_efficiency_augment>);
<tag:items:amc-value:430>.add(<item:thermal:machine_output_augment>);
<tag:items:amc-value:440>.add(<item:thermal:machine_catalyst_augment>);
<tag:items:amc-value:6200>.add(<item:thermal:machine_cycle_augment>);

<tag:items:amc-value:2395>.add(<item:thermal:dynamo_output_augment>);
<tag:items:amc-value:1005>.add(<item:thermal:dynamo_fuel_augment>);

<tag:items:amc-value:340>.add(<item:thermal:area_radius_augment>);
<tag:items:amc-value:6415>.add(<item:thermal:potion_amplifier_augment>);
<tag:items:amc-value:855>.add(<item:thermal:potion_duration_augment>);

<tag:items:amc-value:175>.add(<item:thermal:wrench>);
<tag:items:amc-value:90>.add(<item:thermal:redprint>);
<tag:items:amc-value:745>.add(<item:thermal:lock>); // Should be 743.885
<tag:items:amc-value:225>.add(<item:thermal:rf_potato>); // Should be 227.665
<tag:items:amc-value:3095>.add(<item:thermal:detonator>);

<tag:items:amc-value:25>.add(<item:thermal:phytogro>); // I don't even know tbh
<tag:items:amc-value:35>.add(<item:thermal:earth_charge>); // Should be 32.333 etc.
<tag:items:amc-value:35>.add(<item:thermal:ice_charge>); // Should be 32.333 etc.
<tag:items:amc-value:35>.add(<item:thermal:lightning_charge>); // Should be 32.333 etc.

<tag:items:amc-value:40>.add(<item:thermal:explosive_grenade>); // Should be 42.25
<tag:items:amc-value:91.25>.add(<item:thermal:slime_grenade>);
<tag:items:amc-value:75>.add(<item:thermal:redstone_grenade>); // Should be 76.25
<tag:items:amc-value:50>.add(<item:thermal:glowstone_grenade>); // Should be 53.75
<tag:items:amc-value:540>.add(<item:thermal:ender_grenade>); // Should be 541.25
<tag:items:amc-value:91.25>.add(<item:thermal:earth_grenade>);
<tag:items:amc-value:91.25>.add(<item:thermal:fire_grenade>);
<tag:items:amc-value:91.25>.add(<item:thermal:ice_grenade>);
<tag:items:amc-value:91.25>.add(<item:thermal:lightning_grenade>);

<tag:items:amc-value:270>.add(<item:thermal:diving_helmet>); // Should be 270.25
<tag:items:amc-value:460>.add(<item:thermal:diving_chestplate>);
<tag:items:amc-value:400>.add(<item:thermal:diving_leggings>);
<tag:items:amc-value:220>.add(<item:thermal:diving_boots>);

<tag:items:amc-value:195>.add(<item:thermal:hazmat_helmet>);
<tag:items:amc-value:410>.add(<item:thermal:hazmat_chestplate>);
<tag:items:amc-value:350>.add(<item:thermal:hazmat_leggings>);
<tag:items:amc-value:220>.add(<item:thermal:hazmat_boots>);

<tag:items:amc-value:75>.add(<item:thermal:redstone_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:glowstone_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:ender_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:sap_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:syrup_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:resin_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:tree_oil_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:latex_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:creosote_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:crude_oil_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:heavy_oil_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:light_oil_bucket>);
<tag:items:amc-value:75>.add(<item:thermal:refined_fuel_bucket>);

<tag:items:amc-value:700>.add(<item:thermal:flux_drill>);
<tag:items:amc-value:700>.add(<item:thermal:flux_saw>);
<tag:items:amc-value:375>.add(<item:thermal:flux_capacitor>);
<tag:items:amc-value:330>.add(<item:thermal:flux_magnet>);
<tag:items:amc-value:360>.add(<item:thermal:potion_infuser>); // Should be 361
<tag:items:amc-value:365>.add(<item:thermal:potion_quiver>);

<tag:items:amc-value:550>.add(<item:thermal:machine_furnace>);
<tag:items:amc-value:637>.add(<item:thermal:machine_sawmill>);
<tag:items:amc-value:555>.add(<item:thermal:machine_pulverizer>);
<tag:items:amc-value:1125>.add(<item:thermal:machine_smelter>); // Should be 1122, but ima make glass pieces like 3 due to the metal framed one
<tag:items:amc-value:588>.add(<item:thermal:machine_insolator>);
<tag:items:amc-value:720>.add(<item:thermal:machine_centrifuge>);
<tag:items:amc-value:810>.add(<item:thermal:machine_press>);
<tag:items:amc-value:1005>.add(<item:thermal:machine_crucible>);
<tag:items:amc-value:990>.add(<item:thermal:machine_chiller>);
<tag:items:amc-value:1025>.add(<item:thermal:machine_refinery>);
<tag:items:amc-value:663>.add(<item:thermal:machine_pyrolyzer>); // Should be 661
<tag:items:amc-value:545>.add(<item:thermal:machine_bottler>);
<tag:items:amc-value:655>.add(<item:thermal:machine_brewer>);
<tag:items:amc-value:509>.add(<item:thermal:machine_crafter>);

<tag:items:amc-value:305>.add(<item:thermal:dynamo_stirling>); // Should  be 307
<tag:items:amc-value:325>.add(<item:thermal:dynamo_compression>);
<tag:items:amc-value:715>.add(<item:thermal:dynamo_magmatic>);
<tag:items:amc-value:345>.add(<item:thermal:dynamo_numismatic>);
<tag:items:amc-value:425>.add(<item:thermal:dynamo_lapidary>);

<tag:items:amc-value:1340>.add(<item:thermal:press_coin_die>);
<tag:items:amc-value:500>.add(<item:thermal:press_gear_die>); // Not accurate but I don't wanna average values rn
<tag:items:amc-value:235>.add(<item:thermal:press_packing_2x2_die>);
<tag:items:amc-value:235>.add(<item:thermal:press_packing_3x3_die>);
<tag:items:amc-value:235>.add(<item:thermal:press_unpacking_die>);

<tag:items:amc-value:180>.add(<item:thermal:chiller_ball_cast>);
<tag:items:amc-value:80>.add(<item:thermal:chiller_ingot_cast>); // Should be 82
<tag:items:amc-value:180>.add(<item:thermal:chiller_rod_cast>);

<tag:items:amc-value:18.5>.add(<item:thermal:crossover_rail>);
<tag:items:amc-value:25.5>.add(<item:thermal:prismarine_rail>); // Should be 25.666 etc.
<tag:items:amc-value:50.5>.add(<item:thermal:prismarine_crossover_rail>);
<tag:items:amc-value:72>.add(<item:thermal:prismarine_powered_rail>); // Should be 71.666 etc.
<tag:items:amc-value:45>.add(<item:thermal:prismarine_activator_rail>); // Should be 46.666 etc.
<tag:items:amc-value:45>.add(<item:thermal:prismarine_detector_rail>); // Should be 46.666 etc.
<tag:items:amc-value:25.5>.add(<item:thermal:lumium_rail>); // Should be 26.5
<tag:items:amc-value:50.5>.add(<item:thermal:lumium_crossover_rail>); // Should be 53.5
<tag:items:amc-value:72>.add(<item:thermal:lumium_powered_rail>); // Should be 72.5
<tag:items:amc-value:47.5>.add(<item:thermal:lumium_activator_rail>);
<tag:items:amc-value:47.5>.add(<item:thermal:lumium_detector_rail>);
<tag:items:amc-value:450>.add(<item:thermal:underwater_minecart>);
<tag:items:amc-value:500>.add(<item:thermal:slime_tnt_minecart>);
<tag:items:amc-value:440>.add(<item:thermal:redstone_tnt_minecart>);
<tag:items:amc-value:350>.add(<item:thermal:glowstone_tnt_minecart>);
<tag:items:amc-value:2300>.add(<item:thermal:ender_tnt_minecart>);
<tag:items:amc-value:500>.add(<item:thermal:fire_tnt_minecart>);
<tag:items:amc-value:500>.add(<item:thermal:earth_tnt_minecart>);
<tag:items:amc-value:500>.add(<item:thermal:ice_tnt_minecart>);
<tag:items:amc-value:500>.add(<item:thermal:lightning_tnt_minecart>);


# AMC Recipes
# Uses bags & compression catalyst
# Time taken is equal to the AMC value used in the recipe
# <250 AMC needs 1 catalyst (max of 3s or 1k RF)
# 250 - 500 AMC needs 1 catalyst (max of 5s or 2k RF)
// 400's is 3k RF
# 500+ AMC (10s or 4k RF)
# 1,000+ AMC needs 2 catalysts (15s or 6k RF)
# 2,500+ AMC needs 3 catalysts (30s or 8k RF)
# 5,000+ AMC needs 5 catalysts (45s or 12k RF)
# 10,000+ AMC needs 2 advanced catalysts (60s or 16k RF)
# 15,000+ AMC needs 1 advanced & 1 very advanced catalyst (75s or 20k RF)
# 25,000+ AMC needs 2 very advanced catalysts (90s or 24k RF)
# Crystal Values:
# Submicroscopic: 0.001
# Microscopic: 0.005
# Miniscule: 0.25
# Tiny: 1
# Small: 2
# Large: 5
/*
mods.extendedcrafting.EnderCrafting.addShapeless("name", <output>, [<9-inputs>], seconds);

<recipetype:thermal:smelter>.addRecipe("name", [<4-outputs>], [<3-inputs>], 0, rf);

RF cost is 100x (total) AMC value
*/

// Crystallize Bamboo Block [2.25]
<recipetype:thermal:smelter>.addRecipe("crystallize_bamboo_block", [<item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:2.25>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 250);

// Crystallize Crossover Rails [18.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_crossover_rail", [<item:contenttweaker:amc_crystal_large>*3 % 100, <item:contenttweaker:amc_crystal_small> % 100, <item:contenttweaker:amc_crystal_tiny> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:18.5>, <item:contenttweaker:alchemical_crystallization_catalyst>], 0, 1000);

// Crystalpress Lumuim Redstone Rails [47.5]
<recipetype:thermal:smelter>.addRecipe("crystalpress_47.5-amc", [<item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag>*2 % 100, <item:contenttweaker:2-bag> % 100, <item:contenttweaker:amc_crystal_miniscule>*2 % 100], [<tag:items:amc-value:47.5>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1000);

// Crystalpress Grenades [91.25]
<recipetype:thermal:smelter>.addRecipe("crystalpress_grenades", [<item:contenttweaker:25-bag>*3 % 100, <item:contenttweaker:5-bag>*3 % 100, <item:contenttweaker:1-bag> % 100, <item:contenttweaker:amc_crystal_miniscule> % 100], [<tag:items:amc-value:91.25>, <item:contenttweaker:alchemical_crystalpress_catalyst>], 0, 1500);

// Compres Hazmat Helmet [195]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_hazmat_helmet", <item:contenttweaker:5-bag>*39, [<tag:items:amc-value:195>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Compress Diving & Hazmat Boots [220]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_220-amc", <item:contenttweaker:10-bag>*22, [<tag:items:amc-value:220>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Compress Signalum Coin [245]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_signalum_coin", <item:contenttweaker:5-bag>*49, [<tag:items:amc-value:245>, <item:contenttweaker:alchemical_compression_catalyst>], 3);

// Compress Constantan Block [270]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_270-amc", <item:contenttweaker:10-bag>*27, [<tag:items:amc-value:270>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress Stirling Dynamo [305]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_stirling_dynamo", <item:contenttweaker:5-bag>*61, [<tag:items:amc-value:305>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress RF Coil Augments [320]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_320-amc", <item:contenttweaker:10-bag>*32, [<tag:items:amc-value:320>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress Invar Gear [340]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_340-amc", <item:contenttweaker:10-bag>*34, [<tag:items:amc-value:340>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress Numismatic Dynamo [345]
<recipetype:thermal:smelter>.addRecipe("compress_numismatic_dynamo", [<item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:345>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Compress Enderium Coin & Potion Infuser [360]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_360-amc", <item:contenttweaker:10-bag>*36, [<tag:items:amc-value:360>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress Potion Quiver [365]
<recipetype:thermal:smelter>.addRecipe("compress_potion_quiver", [<item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:365>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 2000);

// Compress most of the TNT's [375]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_375-amc", <item:contenttweaker:25-bag>*15, [<tag:items:amc-value:375>, <item:contenttweaker:alchemical_compression_catalyst>], 5);

// Compress Energy Cell Frame [404]
<recipetype:thermal:smelter>.addRecipe("compress_energy_cell_frame", [<item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:404>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 3000);

// Compress Hazmat Suit [410]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_hazmat_suit", <item:contenttweaker:10-bag>*41, [<tag:items:amc-value:410>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Decocative Diffuser [420]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_decocative_diffuser", <item:contenttweaker:10-bag>*42, [<tag:items:amc-value:420>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Lapidary Dynamo [425]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_lapidary_dynamo", <item:contenttweaker:25-bag>*17, [<tag:items:amc-value:425>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Auxiliary Processing Sieve [430]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_extra_output_augment", <item:contenttweaker:10-bag>*43, [<tag:items:amc-value:430>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Diving Suit [460]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_diving_suit", <item:contenttweaker:10-bag>*46, [<tag:items:amc-value:460>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Flux Efficiency [470]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_flux_augment", <item:contenttweaker:10-bag>*47, [<tag:items:amc-value:470>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Sequential Fabricator [509]
<recipetype:thermal:smelter>.addRecipe("compress_fabricator", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:5-bag> % 100, <item:contenttweaker:2-bag>*2 % 100], [<tag:items:amc-value:509>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Fluid Encapsulator [545]
<recipetype:thermal:smelter>.addRecipe("compress_encapsulator", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:545>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Pulverizer [555]
<recipetype:thermal:smelter>.addRecipe("compress_pulverizer", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:555>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Phytogenic Insolator [588]
<recipetype:thermal:smelter>.addRecipe("compress_insolator", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:2-bag>*4 % 100], [<tag:items:amc-value:588>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Hardened Integral Components [610]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_integral_components_1", <item:contenttweaker:10-bag>*61, [<tag:items:amc-value:610>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Flux Linkage Amplifier [620]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_flux_augment_2", <item:contenttweaker:10-bag>*62, [<tag:items:amc-value:620>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Sawmill [637]
<recipetype:thermal:smelter>.addRecipe("compress_sawmill", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:1-bag>*7 % 100], [<tag:items:amc-value:637>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Igneous Extruder [640]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_igneous_extruder", <item:contenttweaker:10-bag>*64, [<tag:items:amc-value:640>, <item:contenttweaker:alchemical_compression_catalyst>], 10);

// Compress Alchemical Imbuer [655]
<recipetype:thermal:smelter>.addRecipe("compress_imbuer", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:655>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Magmatic Dynamo [715]
<recipetype:thermal:smelter>.addRecipe("compress_magmatic_dynamo", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:715>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Centrifugal Seperator [720]
<recipetype:thermal:smelter>.addRecipe("compress_seperator", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:720>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Signalum Ingot [730]
<recipetype:thermal:smelter>.addRecipe("compress_signalum_ingot", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:10-bag>*3 % 100], [<tag:items:amc-value:730>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Item Filter [735]
<recipetype:thermal:smelter>.addRecipe("compress_item_filter", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:735>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Signalum Lock [745]
<recipetype:thermal:smelter>.addRecipe("compress_signalum_lock", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:745>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Invar Block [765]
<recipetype:thermal:smelter>.addRecipe("compress_invar_block", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*2 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag>*3 % 100], [<tag:items:amc-value:765>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Signalum Glass [805]
<recipetype:thermal:smelter>.addRecipe("compress_signalum_glass", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3
 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:805>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Vacuumulator [810]
<recipetype:thermal:smelter>.addRecipe("compress_vacuumulator", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3
 % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:810>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Expanded Tank Construction [835]
<recipetype:thermal:smelter>.addRecipe("compress_tank_augment", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:25-bag> % 100, <item:contenttweaker:10-bag> % 100], [<tag:items:amc-value:835>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Alchemical Extender [855]
<recipetype:thermal:smelter>.addRecipe("compress_extender_augment", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:855>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Energetic Infuser [925]
<recipetype:thermal:smelter>.addRecipe("compress_energetic_infuser", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:25-bag> % 100], [<tag:items:amc-value:925>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

// Compress Blast Chiller [990]
<recipetype:thermal:smelter>.addRecipe("compress_blast_chiller", [<item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*4 % 100], [<tag:items:amc-value:990>, <item:contenttweaker:alchemical_compression_catalyst>], 0, 4000);

### 1k+ (15s or 6k RF) {2 Catalysts}
// Compress Multi-Cycle Injectors & Magma Crucible [1,005]
<recipetype:thermal:smelter>.addRecipe("compress_1005-amc", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:1005>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Compress Fluid Cell [1,045]
<recipetype:thermal:smelter>.addRecipe("compress_fluid_cell", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:10-bag>*4 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:1045>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Compress Redstone Flux Cell [1,090]
<recipetype:thermal:smelter>.addRecipe("compress_energy_cell", [<item:contenttweaker:1k-crate> % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*4 % 100], [<tag:items:amc-value:1090>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Compress Induction Smelter [1,125]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_induction_smelter", <item:contenttweaker:25-bag>*45, [<tag:items:amc-value:1125>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

// Compress Enderium Glass [1,150]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_enderium_glass", <item:contenttweaker:50-bag>*23, [<tag:items:amc-value:1150>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 15);

// Compress Numismatic Die [1,340]
<recipetype:thermal:smelter>.addRecipe("compress_numsimatic_die", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:10-bag>*4 % 100], [<tag:items:amc-value:1340>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);


### 2k+ (If 2.5k+ - 30s or 8k RF) {If 2.5k+, needs 3 Catalysts}
//  Compress XP Crystal [2,065]
<recipetype:thermal:smelter>.addRecipe("compress_xp_crystal", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag> % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:2065>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

//  Compress XP Augment [2,085]
<recipetype:thermal:smelter>.addRecipe("compress_xp_augment", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:50-bag> % 100, <item:contenttweaker:10-bag>*3 % 100, <item:contenttweaker:5-bag> % 100], [<tag:items:amc-value:2085>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

 // Compress Disruption TNT [2,175]
<recipetype:thermal:smelter>.addRecipe("compress_disruption_tnt", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag> % 100, <item:contenttweaker:25-bag>*3 % 100], [<tag:items:amc-value:2175>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Compress Minecart with Ender Explosive [2,300]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_enderium_glass", <item:contenttweaker:100-bag>*23, [<tag:items:amc-value:2300>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 20);

 // Compress Auxiliary Reaction Chamber [2,395]
<recipetype:thermal:smelter>.addRecipe("compress_reaction_augment", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*3 % 100, <item:contenttweaker:25-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:2395>, <item:contenttweaker:alchemical_compression_catalyst>*2], 0, 6000);

// Compress Signalum Gear [2,920]
<recipetype:thermal:smelter>.addRecipe("compress_signalum_gear", [<item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:100-bag>*4 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:2920>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 6000);

// Compress Remote Detonator [3,095]
<recipetype:thermal:smelter>.addRecipe("compress_remote_detonator", [<item:contenttweaker:1k-crate>*3 % 100, <item:contenttweaker:25-bag>*3 % 100, <item:contenttweaker:10-bag>*2 % 100], [<tag:items:amc-value:3095>, <item:contenttweaker:alchemical_compression_catalyst>*3], 0, 6000);

// Compress Enderium Gear [4,300]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_enderium_gear", <item:contenttweaker:100-bag>*43, [<tag:items:amc-value:4300>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 30);

### 5k+ (45s or 12k RF) {5 Catalysts}
// Compress Cyclical Processing [6,200]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_cycle_augment", <item:contenttweaker:100-bag>*62, [<tag:items:amc-value:6200>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 45);

// Compress Signalum Block [6,570]
<recipetype:thermal:smelter>.addRecipe("compress_signalum_block", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate> % 100, <item:contenttweaker:500-crate> % 100, <item:contenttweaker:10-bag>*7 % 100], [<tag:items:amc-value:6570>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

// Compress Alchemical Amplifier [6,415]
<recipetype:thermal:smelter>.addRecipe("compress_amplifier_augment", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate> % 100, <item:contenttweaker:250-crate> % 100, <item:contenttweaker:5-bag>*33 % 100], [<tag:items:amc-value:6415>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

// Compress Reinforced Integral Components [6,750]
mods.extendedcrafting.EnderCrafting.addShapeless("compress_integral_components_2", <item:contenttweaker:250-crate>*27, [<tag:items:amc-value:6750>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>, <item:contenttweaker:alchemical_compression_catalyst>], 30);

// Compress Enderium Block [9,675]
<recipetype:thermal:smelter>.addRecipe("compress_enderium_block", [<item:contenttweaker:5k-crate> % 100, <item:contenttweaker:1k-crate>*4 % 100, <item:contenttweaker:100-bag>*7 % 100, <item:contenttweaker:25-bag>*3 % 100], [<tag:items:amc-value:9675>, <item:contenttweaker:alchemical_compression_catalyst>*5], 0, 12000);

### 10k+ (60s or 16k RF) {2 Advanced Catalysts}
// Compress Resonant Integral Components [12,400]
<recipetype:thermal:smelter>.addRecipe("compress_integral_components_3", [<item:contenttweaker:10k-crate> % 100, <item:contenttweaker:1k-crate>*2 % 100, <item:contenttweaker:100-bag>*4 % 100], [<tag:items:amc-value:12400>, <item:contenttweaker:advanced_alchemical_catalyst>*2], 0, 16000);

print("thermal_amc.zs loaded");