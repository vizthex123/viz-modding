# Adds OreDict entries to various items
#priority 100;

print("1-OreDict.zs loading...");
/*
var NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/


// Arrows
var arrow = <ore:arrow>;

arrow.add(<simplyarrows:arrow_flint>);
arrow.add(<simplyarrows:arrow_bone>);
arrow.add(<simplyarrows:arrow_iron>);
arrow.add(<simplyarrows:arrow_flame>);
arrow.add(<simplyarrows:arrow_tnt>);


// Carpets (sawmill recipe)
var carpet = <ore:carpet>;

carpet.add(<minecraft:carpet>);
carpet.add(<minecraft:carpet:1>);
carpet.add(<minecraft:carpet:2>);
carpet.add(<minecraft:carpet:3>);
carpet.add(<minecraft:carpet:4>);
carpet.add(<minecraft:carpet:5>);
carpet.add(<minecraft:carpet:6>);
carpet.add(<minecraft:carpet:7>);
carpet.add(<minecraft:carpet:8>);
carpet.add(<minecraft:carpet:9>);
carpet.add(<minecraft:carpet:10>);
carpet.add(<minecraft:carpet:11>);
carpet.add(<minecraft:carpet:12>);
carpet.add(<minecraft:carpet:13>);
carpet.add(<minecraft:carpet:14>);
carpet.add(<minecraft:carpet:15>);


// Seeds
var seed = <ore:listAllseed>;

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


// Flowers
<ore:flowerBlue>.add(<glacidus:crysial_flower>);
<ore:flowerBlue>.add(<glacidus:solegia_flower>);
<ore:flowerCyan>.add(<glacidus:pulphorus_flower>);
<ore:flowerYellow>.add(<glacidus:aurantiacus_flower>);
<ore:flowerYellow>.add(<glacidus:flavula_flower>);


// Mushrooms
var glowshroom = <ore:glowshroom>;
var mushroom = <ore:mushroom>;

glowshroom.add(<natura:nether_glowshroom>);
glowshroom.add(<natura:nether_glowshroom:1>);
glowshroom.add(<natura:nether_glowshroom:2>);

mushroom.add(<minecraft:brown_mushroom>);
mushroom.add(<minecraft:red_mushroom>);
mushroom.add(<byg:black_puff>);
mushroom.add(<byg:weeping_milk_cap>);
mushroom.add(<byg:wood_blewit>);

// Berries
// Mainly for the Berry Medley recipe
var berry = <ore:listAllberries>;

berry.add(<byg:blueberry>);
berry.add(<byg:hollyberries>);
berry.add(<byg:rowanberries>);
berry.add(<byg:hawthornberries>);
berry.add(<byg:salal_berry>);
berry.add(<natura:edibles:2>);
berry.add(<natura:edibles:3>);
berry.add(<natura:edibles:4>);
berry.add(<natura:edibles:5>);
berry.add(<natura:edibles:6>);
berry.add(<natura:edibles:7>);
berry.add(<natura:edibles:8>);
berry.add(<natura:edibles:9>);



// Fruits
// Mostly for basic cooking research
var fruit = <ore:listAllfruit>;

fruit.add(<byg:baobabfruit>);
fruit.add(<byg:greenapple>);
fruit.add(<byg:silver_apple>);
fruit.add(<byg:blueberry>);
fruit.add(<byg:strawberry>);
fruit.add(<byg:hollyberries>);
fruit.add(<byg:rowanberries>);
fruit.add(<byg:hawthornberries>);
fruit.add(<byg:salal_berry>);

<ore:cropBlueberry>.add(<byg:blueberry>);
<ore:cropStrawberry>.add(<byg:strawberry>);

fruit.add(<glacidus:grapes>);

fruit.add(<minecraft:apple>);
fruit.add(<minecraft:golden_apple>);
fruit.add(<minecraft:golden_apple:1>);

fruit.add(<xlfoodmod:strawberry>);


// Advanced Pie
// For the Special Cooking quest
var pie = <ore:advPie>;

pie.add(<xlfoodmod:apple_pie>);
pie.add(<xlfoodmod:cheese_pie>);
pie.add(<xlfoodmod:chicken_pot_pie>);
pie.add(<xlfoodmod:chocolate_pie>);
pie.add(<xlfoodmod:bacon_pie>);
pie.add(<xlfoodmod:fish_pie>);


// Vegetables
// Mainly for the chicken pot pie recipe
var veg = <ore:listAllvegetable>;

veg.add(<minecraft:carrot>);
veg.add(<minecraft:beetroot>);
veg.add(<xlfoodmod:cucumber>);
veg.add(<xlfoodmod:lettuce>);
veg.add(<xlfoodmod:onion>);
veg.add(<xlfoodmod:tomato>);
veg.add(<xlfoodmod:raw_corn>);


// Raw Meat
var rmeat = <ore:listAllmeatraw>;

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
var cmeat = <ore:listAllmeatcooked>;

cmeat.add(<minecraft:cooked_beef>);
cmeat.add(<minecraft:cooked_porkchop>);
cmeat.add(<minecraft:cooked_fish>);
cmeat.add(<minecraft:cooked_fish:1>);
cmeat.add(<minecraft:cooked_chicken>);
cmeat.add(<minecraft:cooked_rabbit>);
cmeat.add(<minecraft:cooked_mutton>);
cmeat.add(<byg:cookedflesh>);
cmeat.add(<byg:cookedspidereye>);
cmeat.add(<byg:cookedpufferfish>);
cmeat.add(<byg:cookedtropicalfish>);
cmeat.add(<glacidus:grilled_porcali_meat>);
cmeat.add(<natura:edibles:1>);
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
var chest = <ore:chest>;
var chestw = <ore:chestWood>;

chest.add(<extrautils2:largishchest>);
chest.add(<glacidus:underground_chest>);
chest.add(<ironchest:iron_chest:3>);
chest.add(<ironchest:iron_chest>);

chestw.add(<extrautils2:largishchest>);
chestw.add(<glacidus:underground_chest>);



// Doors
// Mainly for research
var door = <ore:doorWood>;

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



// Trapdoors
var trapdoor = <ore:trapdoorWood>;

trapdoor.add(<minecraft:trapdoor>);
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



// Add the Fence and Fence Gate OreDict entries to things missing them
// Mainly for research
var fence = <ore:fenceWood>;
var gate = <ore:fenceGateWood>;

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
var plate = <ore:pressurePlateWood>;

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
var button = <ore:buttonWood>;

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


// Extra Glacidus OreDict entries
// The rest are grouped together in sections above & below this one
fence.add(<glacidus:underground_fence>);
<ore:bookshelf>.add(<glacidus:underground_bookshelf>);
<ore:bookshelfWood>.add(<glacidus:underground_bookshelf>);
door.add(<glacidus:underground_door>);
trapdoor.add(<glacidus:underground_trapdoor>);
<ore:stairWood>.add(<glacidus:underground_stairs>);
<ore:logWood>.add(<glacidus:underground_log>);
<ore:stickWood>.add(<glacidus:underground_stick>);
<ore:treeSapling>.add(<glacidus:dead_lumicia>);
<ore:treeSapling>.add(<glacidus:lumicia_sapling>);

<ore:leather>.add(<glacidus:merialces_hide>);
<ore:dirt>.add(<glacidus:lumicia_dirt>);



// Stone Bricks
<ore:bricksStone>.add(<minecraft:stonebrick:1>);
<ore:bricksStone>.add(<minecraft:stonebrick:2>);
<ore:bricksStone>.add(<minecraft:stonebrick:3>);



// Gears
// Mainly for research
var gears = <ore:gears>;

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
// Mainly for research
var plates = <ore:plates>;

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



// Workbenches
var workbench = <ore:workbench>;

workbench.add(<sct:stone_crafting_table>);
workbench.add(<natura:overworld_workbenches>);
workbench.add(<natura:overworld_workbenches:1>);
workbench.add(<natura:overworld_workbenches:2>);
workbench.add(<natura:overworld_workbenches:3>);
workbench.add(<natura:overworld_workbenches:4>);
workbench.add(<natura:overworld_workbenches:5>);
workbench.add(<natura:overworld_workbenches:6>);
workbench.add(<natura:overworld_workbenches:7>);
workbench.add(<natura:overworld_workbenches:8>);
workbench.add(<natura:nether_workbenches>);
workbench.add(<natura:nether_workbenches:1>);
workbench.add(<natura:nether_workbenches:2>);
workbench.add(<natura:nether_workbenches:3>);



// Misc
# <ore:record>.add(<distinctdamagedescriptions:recorddistinction>);
<ore:slimeball>.add(<thermalfoundation:material:832>);
<ore:slimeball>.add(<thermalfoundation:material:833>);
<ore:string>.add(<natura:materials:7>);
<ore:listAllgrain>.add(<minecraft:wheat>);
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);

<ore:rodStone>.add(<sct:stone_stick>);
<ore:obsidianRod>.add(<redstonearsenal:material:192>);

<ore:ingotSteel>.remove(<dse:components>);



# Ores
# Mainly for the Scanner, but I might use them in some recipes in the future
<ore:oreFossil>.add(<bonecraft:pamfossil>);

<ore:oreCrimsonCoal>.add(<cm:crimson_coal_ore>);
<ore:oreChaoticCoal>.add(<cm:chaotic_coal_ore>);

<ore:orePrismarine>.add(<pristeel:prismarine_ore>);

<ore:oreHeartCrystal>.add(<scalinghealth:crystalore>);

<ore:oreEukeite>.add(<glacidus:eukeite_ore>);
<ore:oreCrysium>.add(<glacidus:crysium_ore>);
<ore:oreOpesium>.add(<glacidus:opesium_ore>);
<ore:oreGlacidite>.add(<glacidus:glacidite_ore>);
<ore:orePulsaton>.add(<glacidus:pulsaton_ore>);
<ore:crystal>.add(<glacidus:small_crystal>);

<ore:oreVulcanite>.remove(<vulcanite:nether_vulcanite_ore>);
<ore:oreNetherVulcanite>.add(<vulcanite:nether_vulcanite_ore>);

<ore:oreSalt>.add(<xlfoodmod:rock_salt>);

var xp = <ore:oreXP>;

xp.add(<xp_ore:xp_ore_drained>);
xp.add(<xp_ore:xp_ore_tier_1>);
xp.add(<xp_ore:xp_ore_tier_2>);
xp.add(<xp_ore:xp_ore_tier_3>);
xp.add(<xp_ore:xp_ore_tier_4>);
xp.add(<xp_ore:xp_ore_tier_5>);
<ore:oreXPDrained>.add(<xp_ore:xp_ore_drained>);


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

print("1-OreDict.zs loaded");