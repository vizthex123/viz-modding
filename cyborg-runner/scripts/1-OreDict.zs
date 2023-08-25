# Adds OreDict entries to various items
#priority 100;

print("1-OreDict.zs loading...");
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/

<ore:carpet>.add(<minecraft:carpet>);

# Ores
val xp = <ore:oreXP>;

xp.add(<xp_ore:xp_ore_drained>);
xp.add(<xp_ore:xp_ore_tier_1>);
xp.add(<xp_ore:xp_ore_tier_2>);
xp.add(<xp_ore:xp_ore_tier_3>);
xp.add(<xp_ore:xp_ore_tier_4>);
xp.add(<xp_ore:xp_ore_tier_5>);

<ore:oreCrimsonCoal>.add(<cm:crimson_coal_ore>);
<ore:oreChaoticCoal>.add(<cm:chaotic_coal_ore>);

<ore:orePrismarine>.add(<pristeel:prismarine_ore>);

<ore:oreHeartCrystal>.add(<scalinghealth:crystalore>);

<ore:oreGlacidite>.add(<glacidus:glacidite_ore>);
<ore:oreEukeite>.add(<glacidus:eukeite_ore>);
<ore:oreCrysium>.add(<glacidus:crysium_ore>);
<ore:oreOpesium>.add(<glacidus:opesium_ore>);
<ore:orePulsaton>.add(<glacidus:pulsaton_ore>);


	// Dense
<ore:oreDenseIron>.add(<densemetals:dense_iron_ore>);
<ore:oreDenseCoal>.add(<densemetals:dense_coal_ore>);
<ore:oreDenseGold>.add(<densemetals:dense_gold_ore>);
<ore:oreDenseDiamond>.add(<densemetals:dense_diamond_ore>);
<ore:oreDenseEmerald>.add(<densemetals:dense_emerald_ore>);
<ore:oreDenseLapis>.add(<densemetals:dense_lapis_ore>);
<ore:oreDenseRedstone>.add(<densemetals:dense_redstone_ore>);
<ore:oreDenseQuartz>.add(<densemetals:dense_quartz_ore>);

<ore:oreDenseAluminum>.add(<densemetals:dense_aluminum_ore>);
<ore:oreDenseCopper>.add(<densemetals:dense_copper_ore>);
<ore:oreDenseTin>.add(<densemetals:dense_tin_ore>);
<ore:oreDenseLead>.add(<densemetals:dense_lead_ore>);
<ore:oreDenseSilver>.add(<densemetals:dense_silver_ore>);
<ore:oreDenseNickel>.add(<densemetals:dense_nickel_ore>);
<ore:oreDenseMithril>.add(<densemetals:dense_mithril_ore>);
<ore:oreDenseIridium>.add(<densemetals:dense_iridium_ore>);
<ore:oreDensePlatinum>.add(<densemetals:dense_platinum_ore>);

// Super
<ore:oreSuperIron>.add(<superores:super_iron>);
<ore:oreSuperCoal>.add(<superores:super_coal>);
<ore:oreSuperGold>.add(<superores:super_gold>);
<ore:oreSuperDiamond>.add(<superores:super_diamond>);
<ore:oreSuperEmerald>.add(<superores:super_emerald>);
<ore:oreSuperLapis>.add(<superores:super_lapis>);
<ore:oreSuperRedstone>.add(<superores:super_redstone>);
<ore:oreSuperQuartz>.add(<superores:super_quartz>);

<ore:oreSuperAluminum>.add(<superores:super_aluminum>);
<ore:oreSuperCopper>.add(<superores:super_copper>);
<ore:oreSuperTin>.add(<superores:super_tin>);
<ore:oreSuperLead>.add(<superores:super_lead>);
<ore:oreSuperSilver>.add(<superores:super_silver>);
<ore:oreSuperNickel>.add(<superores:super_nickel>);
<ore:oreSuperIridium>.add(<superores:super_iridium>);
<ore:oreSuperPlatinum>.add(<superores:super_platinum>);



// Arrows
val arrow = <ore:arrow>;

arrow.add(<simplyarrows:arrow_flint>);
arrow.add(<simplyarrows:arrow_bone>);
arrow.add(<simplyarrows:arrow_iron>);
arrow.add(<simplyarrows:arrow_flame>);
arrow.add(<simplyarrows:arrow_tnt>);

// Seeds
val seed = <ore:listAllseed>;

seed.add(<minecraft:wheat_seeds>);
seed.add(<minecraft:pumpkin_seeds>);
seed.add(<minecraft:melon_seeds>);
seed.add(<minecraft:beetroot_seeds>);
seed.add(<xlfoodmod:rice_seeds>);
seed.add(<xlfoodmod:pepper_seeds>);
seed.add(<xlfoodmod:corn_seeds>);
seed.add(<xlfoodmod:cucumber_seeds>);
seed.add(<xlfoodmod:lettuce_seeds>);
seed.add(<xlfoodmod:tomato_seeds>);
seed.add(<xlfoodmod:strawberry_seeds>);


// Mushrooms
val glowshroom = <ore:glowshroom>;
val mushroom = <ore:mushroom>;

glowshroom.add(<natura:nether_glowshroom>);
glowshroom.add(<natura:nether_glowshroom:1>);
glowshroom.add(<natura:nether_glowshroom:2>);

mushroom.add(<minecraft:brown_mushroom>);
mushroom.add(<minecraft:red_mushroom>);
// mushroom.add(<ore:glowshroom>);


// Fruits
// Mostly for basic cooking research
val fruit = <ore:listAllfruit>;

fruit.add(<byg:strawberry>);
fruit.add(<xlfoodmod:strawberry>);
fruit.add(<byg:baobabfruit>);
fruit.add(<byg:greenapple>);
fruit.add(<byg:silver_apple>);
fruit.add(<minecraft:apple>);
fruit.add(<minecraft:golden_apple>);
fruit.add(<minecraft:golden_apple:1>);


// Advanced Pie
// For the Special Cooking quest
val pie = <ore:advPie>;

pie.add(<xlfoodmod:apple_pie>);
pie.add(<xlfoodmod:cheese_pie>);
pie.add(<xlfoodmod:chicken_pot_pie>);
pie.add(<xlfoodmod:chocolate_pie>);
pie.add(<xlfoodmod:bacon_pie>);
pie.add(<xlfoodmod:fish_pie>);


// Vegetables
// Mainly for the chicken pot pie recipe
val veg = <ore:listAllvegetable>;

veg.add(<minecraft:carrot>);
veg.add(<minecraft:beetroot>);
veg.add(<xlfoodmod:cucumber>);
veg.add(<xlfoodmod:lettuce>);
veg.add(<xlfoodmod:onion>);
veg.add(<xlfoodmod:tomato>);
veg.add(<xlfoodmod:raw_corn>);


// Raw Meat
val rmeat = <ore:listAllmeatraw>;

rmeat.add(<minecraft:porkchop>);
rmeat.add(<minecraft:fish>);
rmeat.add(<minecraft:fish:1>);
rmeat.add(<minecraft:beef>);
rmeat.add(<minecraft:chicken>);
rmeat.add(<minecraft:rabbit>);
rmeat.add(<minecraft:mutton>);
rmeat.add(<glacidus:raw_porcali_meat>);
rmeat.add(<natura:edibles>);


// Cooked Meat
val cmeat = <ore:listAllmeatcooked>;

cmeat.add(<minecraft:cooked_beef>);
cmeat.add(<minecraft:cooked_porkchop>);
cmeat.add(<minecraft:cooked_fish>);
cmeat.add(<minecraft:cooked_fish:1>);
cmeat.add(<byg:cookedflesh>);
cmeat.add(<byg:cookedpufferfish>);
cmeat.add(<byg:cookedtropicalfish>);
cmeat.add(<minecraft:cooked_chicken>);
cmeat.add(<minecraft:cooked_rabbit>);
cmeat.add(<minecraft:cooked_mutton>);
cmeat.add(<natura:edibles:1>);
cmeat.add(<glacidus:grilled_porcali_meat>);
cmeat.add(<xlfoodmod:cooked_chicken_wing>);


// Berries as dye
<ore:dyeRed>.add(<natura:edibles:2>);
<ore:dyeBlue>.add(<natura:edibles:3>);
<ore:dyeBlack>.add(<natura:edibles:4>);
<ore:dyeOrange>.add(<natura:edibles:5>);
<ore:dyeLime>.add(<natura:edibles:6>);
<ore:dyeGray>.add(<natura:edibles:7>);
<ore:dyeCyan>.add(<natura:edibles:8>);
<ore:dyeGreen>.add(<natura:edibles:9>);


// Remove the chest entry for Shulker Boxes
<ore:chest>.remove(<minecraft:white_shulker_box>);
<ore:chest>.remove(<minecraft:orange_shulker_box>);
<ore:chest>.remove(<minecraft:magenta_shulker_box>);
<ore:chest>.remove(<minecraft:light_blue_shulker_box>);
<ore:chest>.remove(<minecraft:yellow_shulker_box>);
<ore:chest>.remove(<minecraft:lime_shulker_box>);
<ore:chest>.remove(<minecraft:pink_shulker_box>);
<ore:chest>.remove(<minecraft:gray_shulker_box>);
<ore:chest>.remove(<minecraft:silver_shulker_box>);
<ore:chest>.remove(<minecraft:cyan_shulker_box>);
<ore:chest>.remove(<minecraft:purple_shulker_box>);
<ore:chest>.remove(<minecraft:blue_shulker_box>);
<ore:chest>.remove(<minecraft:brown_shulker_box>);
<ore:chest>.remove(<minecraft:green_shulker_box>);
<ore:chest>.remove(<minecraft:red_shulker_box>);
<ore:chest>.remove(<minecraft:black_shulker_box>);


// Add Chest & Chest Wood to various blocks
val chest = <ore:chest>;
val chestw = <ore:chestWood>;

chest.add(<extrautils2:largishchest>);
chest.add(<glacidus:underground_chest>);
chest.add(<ironchest:iron_chest:3>);
chest.add(<ironchest:iron_chest>);

chestw.add(<extrautils2:largishchest>);
chestw.add(<glacidus:underground_chest>);


// Doors
// Mainly for research
val door = <ore:door>;
val doorw = <ore:doorWood>;

door.add(<byg:baobabdooritem>);
door.add(<byg:aspen_door_item>);
door.add(<byg:blue_enchanted_door>);
door.add(<byg:green_enchanted_door>);
door.add(<byg:cherry_door>);
door.add(<byg:cika_door>);
door.add(<byg:cypress_door>);
door.add(<byg:ebony_door>);
door.add(<byg:fir_door>);
door.add(<byg:frozen_oak_door>);
door.add(<byg:hawthorn_door>);
door.add(<byg:holly_door>);
door.add(<byg:ironwood_door>);
door.add(<byg:jacaranda_door>);
door.add(<byg:mahogany_door>);
door.add(<byg:mangrove_door>);
door.add(<byg:maple_door>);
door.add(<byg:palm_door>);
door.add(<byg:pine_door>);
door.add(<byg:eucalyptus_door>);
door.add(<byg:rowan_door>);
door.add(<byg:skyris_door>);
door.add(<byg:willow_door>);
door.add(<byg:witch_hazel_door>);
door.add(<byg:zelkova_door>);
door.add(<byg:great_oak_door>);
door.add(<natura:overworld_doors>);
door.add(<natura:overworld_doors:1>);
door.add(<natura:overworld_doors:2>);
door.add(<natura:overworld_doors:3>);
door.add(<natura:overworld_doors:4>);
door.add(<natura:overworld_doors:5>);
door.add(<natura:overworld_doors:6>);
door.add(<natura:overworld_doors:7>);
door.add(<natura:nether_doors>);
door.add(<natura:nether_doors:1>);
door.add(<natura:nether_doors:2>);
door.add(<natura:nether_doors:3>);

doorw.add(<byg:baobabdooritem>);
doorw.add(<byg:aspen_door_item>);
doorw.add(<byg:blue_enchanted_door>);
doorw.add(<byg:green_enchanted_door>);
doorw.add(<byg:cherry_door>);
doorw.add(<byg:cika_door>);
doorw.add(<byg:cypress_door>);
doorw.add(<byg:ebony_door>);
doorw.add(<byg:fir_door>);
doorw.add(<byg:frozen_oak_door>);
doorw.add(<byg:hawthorn_door>);
doorw.add(<byg:holly_door>);
doorw.add(<byg:ironwood_door>);
doorw.add(<byg:jacaranda_door>);
doorw.add(<byg:mahogany_door>);
doorw.add(<byg:mangrove_door>);
doorw.add(<byg:maple_door>);
doorw.add(<byg:palm_door>);
doorw.add(<byg:pine_door>);
doorw.add(<byg:eucalyptus_door>);
doorw.add(<byg:rowan_door>);
doorw.add(<byg:skyris_door>);
doorw.add(<byg:willow_door>);
doorw.add(<byg:witch_hazel_door>);
doorw.add(<byg:zelkova_door>);
doorw.add(<byg:great_oak_door>);
doorw.add(<natura:overworld_doors>);
doorw.add(<natura:overworld_doors:1>);
doorw.add(<natura:overworld_doors:2>);
doorw.add(<natura:overworld_doors:3>);
doorw.add(<natura:overworld_doors:4>);
doorw.add(<natura:overworld_doors:5>);
doorw.add(<natura:overworld_doors:6>);
doorw.add(<natura:overworld_doors:7>);
doorw.add(<natura:nether_doors>);
doorw.add(<natura:nether_doors:1>);
doorw.add(<natura:nether_doors:2>);
doorw.add(<natura:nether_doors:3>);


// Trapdoors
val trapdoor = <ore:trapdoor>;
val trapdoorw = <ore:trapdoorWood>;

trapdoor.add(<minecraft:trapdoor>);
trapdoor.add(<minecraft:iron_trapdoor>);
trapdoor.add(<natura:maple_trap_door>);
trapdoor.add(<natura:silverbell_trap_door>);
trapdoor.add(<natura:amaranth_trap_door>);
trapdoor.add(<natura:tiger_trap_door>);
trapdoor.add(<natura:willow_trap_door>);
trapdoor.add(<natura:eucalyptus_trap_door>);
trapdoor.add(<natura:hopseed_trap_door>);
trapdoor.add(<natura:sakura_trap_door>);
trapdoor.add(<natura:redwood_trap_door>);
trapdoor.add(<natura:ghostwood_trap_door>);
trapdoor.add(<natura:bloodwood_trap_door>);
trapdoor.add(<natura:fusewood_trap_door>);
trapdoor.add(<natura:darkwood_trap_door>);

trapdoorw.add(<minecraft:trapdoor>);
trapdoorw.add(<natura:maple_trap_door>);
trapdoorw.add(<natura:silverbell_trap_door>);
trapdoorw.add(<natura:amaranth_trap_door>);
trapdoorw.add(<natura:tiger_trap_door>);
trapdoorw.add(<natura:willow_trap_door>);
trapdoorw.add(<natura:eucalyptus_trap_door>);
trapdoorw.add(<natura:hopseed_trap_door>);
trapdoorw.add(<natura:sakura_trap_door>);
trapdoorw.add(<natura:redwood_trap_door>);
trapdoorw.add(<natura:ghostwood_trap_door>);
trapdoorw.add(<natura:bloodwood_trap_door>);
trapdoorw.add(<natura:fusewood_trap_door>);
trapdoorw.add(<natura:darkwood_trap_door>);


// Add the Fence and Fence Gate OreDict entries to things missing them
// Mainly for research
val fence = <ore:fenceWood>;
val gate = <ore:fenceGateWood>;

fence.add(<natura:maple_fence>);
fence.add(<natura:silverbell_fence>);
fence.add(<natura:amaranth_fence>);
fence.add(<natura:tiger_fence>);
fence.add(<natura:willow_fence>);
fence.add(<natura:eucalyptus_fence>);
fence.add(<natura:hopseed_fence>);
fence.add(<natura:sakura_fence>);
fence.add(<natura:redwood_fence>);
fence.add(<natura:ghostwood_fence>);
fence.add(<natura:bloodwood_fence>);
fence.add(<natura:fusewood_fence>);
fence.add(<natura:darkwood_fence>);

gate.add(<natura:maple_fence_gate>);
gate.add(<natura:silverbell_fence_gate>);
gate.add(<natura:amaranth_fence_gate>);
gate.add(<natura:tiger_fence_gate>);
gate.add(<natura:willow_fence_gate>);
gate.add(<natura:eucalyptus_fence_gate>);
gate.add(<natura:hopseed_fence_gate>);
gate.add(<natura:sakura_fence_gate>);
gate.add(<natura:redwood_fence_gate>);
gate.add(<natura:ghostwood_fence_gate>);
gate.add(<natura:bloodwood_fence_gate>);
gate.add(<natura:fusewood_fence_gate>);
gate.add(<natura:darkwood_fence_gate>);


// Pressure Plates
val plate = <ore:pressurePlateWood>;

plate.add(<minecraft:wooden_pressure_plate>);
plate.add(<natura:maple_pressure_plate>);
plate.add(<natura:silverbell_pressure_plate>);
plate.add(<natura:amaranth_pressure_plate>);
plate.add(<natura:tiger_pressure_plate>);
plate.add(<natura:willow_pressure_plate>);
plate.add(<natura:eucalyptus_pressure_plate>);
plate.add(<natura:hopseed_pressure_plate>);
plate.add(<natura:sakura_pressure_plate>);
plate.add(<natura:redwood_pressure_plate>);
plate.add(<natura:ghostwood_pressure_plate>);
plate.add(<natura:bloodwood_pressure_plate>);
plate.add(<natura:fusewood_pressure_plate>);
plate.add(<natura:darkwood_pressure_plate>);


// Buttons
val button = <ore:buttonWood>;

button.add(<minecraft:wooden_button>);
button.add(<natura:maple_button>);
button.add(<natura:silverbell_button>);
button.add(<natura:amaranth_button>);
button.add(<natura:tiger_button>);
button.add(<natura:willow_button>);
button.add(<natura:eucalyptus_button>);
button.add(<natura:hopseed_button>);
button.add(<natura:sakura_button>);
button.add(<natura:redwood_button>);
button.add(<natura:ghostwood_button>);
button.add(<natura:bloodwood_button>);
button.add(<natura:fusewood_button>);
button.add(<natura:darkwood_button>);


// Glacidus OreDict entries
fence.add(<glacidus:underground_fence>);
<ore:bookshelf>.add(<glacidus:underground_bookshelf>);
<ore:bookshelfWood>.add(<glacidus:underground_bookshelf>);
<ore:doorWood>.add(<glacidus:underground_door>);
<ore:trapdoorWood>.add(<glacidus:underground_trapdoor>);
<ore:stairWood>.add(<glacidus:underground_stairs>);
<ore:logWood>.add(<glacidus:underground_log>);
<ore:stickWood>.add(<glacidus:underground_stick>);



// Stone Bricks
<ore:bricksStone>.add(<minecraft:stonebrick:1>);
<ore:bricksStone>.add(<minecraft:stonebrick:2>);
<ore:bricksStone>.add(<minecraft:stonebrick:3>);



// Gears
val gears = <ore:gears>;

gears.add(<extrautils2:ingredients:1>);
gears.add(<redstonearsenal:material:96>);
gears.add(<thermalfoundation:material:24>);
gears.add(<thermalfoundation:material:25>);
gears.add(<thermalfoundation:material:26>);
gears.add(<thermalfoundation:material:27>);
gears.add(<thermalfoundation:material:256>);
gears.add(<thermalfoundation:material:257>);
gears.add(<thermalfoundation:material:258>);
gears.add(<thermalfoundation:material:259>);
gears.add(<thermalfoundation:material:260>);
gears.add(<thermalfoundation:material:261>);
gears.add(<thermalfoundation:material:262>);
gears.add(<thermalfoundation:material:263>);
gears.add(<thermalfoundation:material:264>);
gears.add(<thermalfoundation:material:288>);
gears.add(<thermalfoundation:material:289>);
gears.add(<thermalfoundation:material:290>);
gears.add(<thermalfoundation:material:291>);
gears.add(<thermalfoundation:material:292>);
gears.add(<thermalfoundation:material:293>);
gears.add(<thermalfoundation:material:294>);
gears.add(<thermalfoundation:material:295>);



// Plates
val plates = <ore:plates>;

plates.add(<dse:components:3>);
plates.add(<dse:components:4>);
plates.add(<dse:components:5>);
plates.add(<dse:components:6>);
plates.add(<dse:components:7>);
plates.add(<dse:components:8>);

plates.add(<redstonearsenal:material:128>);

plates.add(<thermalfoundation:material:32>);
plates.add(<thermalfoundation:material:33>);
plates.add(<thermalfoundation:material:320>);
plates.add(<thermalfoundation:material:321>);
plates.add(<thermalfoundation:material:322>);
plates.add(<thermalfoundation:material:323>);
plates.add(<thermalfoundation:material:324>);
plates.add(<thermalfoundation:material:325>);
plates.add(<thermalfoundation:material:326>);
plates.add(<thermalfoundation:material:327>);
plates.add(<thermalfoundation:material:328>);
plates.add(<thermalfoundation:material:352>);
plates.add(<thermalfoundation:material:353>);
plates.add(<thermalfoundation:material:354>);
plates.add(<thermalfoundation:material:355>);
plates.add(<thermalfoundation:material:356>);
plates.add(<thermalfoundation:material:357>);
plates.add(<thermalfoundation:material:358>);
plates.add(<thermalfoundation:material:359>);



// Misc
<ore:dyeGreen>.add(<contenttweaker:slime_green>);
<ore:dyeLime>.add(<contenttweaker:slime_green>);
<ore:plankWood>.add(<contenttweaker:mdf>);

<ore:workbench>.add(<sct:stone_crafting_table>);
<ore:slimeball>.add(<thermalfoundation:material:832>);
<ore:slimeball>.add(<thermalfoundation:material:833>);
<ore:stickWood>.add(<byg:stonestick>);
<ore:string>.add(<natura:materials:7>);
<ore:listAllgrain>.add(<minecraft:wheat>);
<ore:cropStrawberry>.add(<byg:strawberry>);
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);
<ore:dirt>.add(<glacidus:lumicia_dirt>);



// Artisan's Tool Removals
<ore:artisansHammer>.remove(<artisanworktables:artisans_hammer_wood>);
<ore:artisansHammer>.remove(<artisanworktables:artisans_hammer_flint>);

<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_wood>);
<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_stone>);
<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_flint>);

<ore:artisansCutters>.remove(<artisanworktables:artisans_cutters_wood>);
<ore:artisansCutters>.remove(<artisanworktables:artisans_cutters_flint>);

<ore:artisansChisel>.remove(<artisanworktables:artisans_chisel_wood>);
<ore:artisansChisel>.remove(<artisanworktables:artisans_chisel_flint>);

<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_wood>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_stone>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_flint>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_gold>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_bone>);

<ore:artisansPan>.remove(<artisanworktables:artisans_pan_wood>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_stone>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_flint>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_gold>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_bone>);

<ore:artisansKnife>.remove(<artisanworktables:artisans_knife_wood>);
<ore:artisansKnife>.remove(<artisanworktables:artisans_knife_stone>);
<ore:artisansKnife>.remove(<artisanworktables:artisans_knife_flint>);

<ore:artisansFile>.remove(<artisanworktables:artisans_file_wood>);
<ore:artisansFile>.remove(<artisanworktables:artisans_file_stone>);
<ore:artisansFile>.remove(<artisanworktables:artisans_file_flint>);

<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_wood>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_stone>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_flint>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_bone>);

<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_wood>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_stone>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_flint>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_gold>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_bone>);

<ore:artisanSifter>.remove(<artisanworktables:artisans_sifter_wood>);
<ore:artisanSifter>.remove(<artisanworktables:artisans_sifter_stone>);

<ore:artisanHandsaw>.remove(<artisanworktables:artisans_handsaw_wood>);
<ore:artisanHandsaw>.remove(<artisanworktables:artisans_handsaw_flint>);


print("1-OreDict.zs loaded");