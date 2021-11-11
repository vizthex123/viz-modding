# Adds recipes to the Create mod
print("create.zs loading...");
/*
<recipetype:create:milling>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:crushing>.addRecipe("recipeName", [<outputs> % chance], <input>);

<recipetype:create:mixing>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:compacting>.addRecipe("recipeName", "heat*", <output>, [<item_inputs>], [<fluid_inputs>], Duration**);
* none, heated, superheated
** optional

<recipetype:create:filling>.addRecipe("recipeName", <output>, <input>, <fluid>);

<recipetype:create:mechanical_crafting>.addRecipe("recipeName", <output>,
[[<item>],
[<item>],
[<item>]]);

Can add more rows as needed. Can be any shape.

do item:minecraft:air for empty spaces
do fluid:minecraft:empty for empty fluids

Recipes for the repair chests are in misc.zs!
*/

# Mechanical Crafting Recipes
#-------------------------------------
// Convert Create tanks into Scorched Gauges
<recipetype:create:mechanical_crafting>.addRecipe("tank_to_gauge", <item:tconstruct:scorched_fuel_gauge>,
[[<item:minecraft:air>, <item:tconstruct:scorched_brick>, <item:minecraft:air>],
[<item:tconstruct:scorched_brick>, <item:create:fluid_tank>, <item:tconstruct:scorched_brick>],
[<item:minecraft:air>, <item:tconstruct:scorched_brick>, <item:minecraft:air>]]);

// Make Anvils out of Cobalt
<recipetype:create:mechanical_crafting>.addRecipe("cobalt_anvil", <item:minecraft:anvil>, 
    [[<item:minecraft:air>, <tag:items:forge:storage_blocks/cobalt>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:ingots/cobalt>, <item:minecraft:air>],
    [<tag:items:forge:ingots/cobalt>, <tag:items:forge:ingots/cobalt>, <tag:items:forge:ingots/cobalt>]]);

// New Netherite recipe
craftingTable.removeByName("minecraft:netherite_ingot");
<recipetype:create:mechanical_crafting>.addRecipe("netherite_ingot", <item:minecraft:netherite_ingot>,
[[<item:minecraft:netherite_scrap>, <item:minecraft:gold_ingot>, <item:minecraft:netherite_scrap>],
[<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
[<item:minecraft:netherite_scrap>, <item:minecraft:gold_ingot>, <item:minecraft:netherite_scrap>]]);

// Change the Anointing Table recipe
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:anointing_table>);
<recipetype:create:mechanical_crafting>.addRecipe("anointing_table", <item:anointeditems:anointing_table>,
[[<tag:items:forge:dusts/obsidian>, <tag:items:forge:gems/diamond>, <tag:items:forge:dusts/obsidian>],
[<item:minecraft:smithing_table>, <tag:items:forge:workbenches>, <item:minecraft:enchanting_table>],
[<tag:items:forge:dusts/obsidian>, <tag:items:forge:storage_blocks/quartz>, <tag:items:forge:dusts/obsidian>]]);

// Rose Quartz versions
<recipetype:create:mechanical_crafting>.addRecipe("anointing_table_rose", <item:anointeditems:anointing_table>,
[[<tag:items:forge:dusts/obsidian>, <tag:items:forge:gems/diamond>, <tag:items:forge:dusts/obsidian>],
[<item:minecraft:smithing_table>, <tag:items:forge:workbenches>, <item:minecraft:enchanting_table>],
[<tag:items:forge:dusts/obsidian>, <item:create:rose_quartz>, <tag:items:forge:dusts/obsidian>]]);

# Change anointed oil recipes
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:power_oil>);
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:agility_oil>);
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:tenacity_oil>);
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:acceleration_oil>);
<recipetype:minecraft:crafting>.removeRecipe(<item:anointeditems:protection_oil>);

// Power
<recipetype:create:mechanical_crafting>.addRecipe("power_oil", <item:anointeditems:power_oil>,
[[<item:netherrocks:fyrite_ingot>, <item:minecraft:ghast_tear>, <item:netherrocks:fyrite_ingot>],
[<item:minecraft:blaze_rod>, <item:minecraft:netherite_ingot>, <item:minecraft:blaze_rod>],
[<item:netherrocks:fyrite_ingot>, <item:minecraft:ghast_tear>, <item:netherrocks:fyrite_ingot>]]);

// Agility
<recipetype:create:mechanical_crafting>.addRecipe("agility_oil", <item:anointeditems:agility_oil>,
[[<item:minecraft:lapis_lazuli>, <item:comfortable_nether:pummeler_remnant>, <item:minecraft:lapis_lazuli>],
[<item:minecraft:phantom_membrane>, <item:minecraft:netherite_ingot>, <item:minecraft:phantom_membrane>],
[<item:minecraft:lapis_lazuli>, <item:comfortable_nether:pummeler_remnant>, <item:minecraft:lapis_lazuli>]]);
/*
<recipetype:create:mechanical_crafting>.addRecipe("agility_oil_overworld", <item:anointeditems:agility_oil>,
[[<item:minecraft:lapis_lazuli>, <item:minecraft:rabbit_foot>, <item:minecraft:lapis_lazuli>],
[<item:minecraft:sugar>, <item:minecraft:netherite_ingot>, <item:minecraft:sugar>],
[<item:minecraft:lapis_lazuli>, <item:minecraft:rabbit_foot>, <item:minecraft:lapis_lazuli>]]);
*/
// Tenacity
<recipetype:create:mechanical_crafting>.addRecipe("tenacity_oil", <item:anointeditems:tenacity_oil>,
[[<item:comfortable_nether:docile_soul>, <item:minecraft:glowstone_dust>, <item:comfortable_nether:docile_soul>],
[<item:minecraft:gold_ingot>, <item:minecraft:netherite_ingot>, <item:minecraft:gold_ingot>],
[<item:comfortable_nether:docile_soul>, <item:minecraft:glowstone_dust>, <item:comfortable_nether:docile_soul>]]);

// Acceleration
<recipetype:create:mechanical_crafting>.addRecipe("acceleration_oil", <item:anointeditems:acceleration_oil>,
[[<item:netherrocks:illumenite_ingot>, <item:minecraft:redstone>, <item:netherrocks:illumenite_ingot>],
[<item:minecraft:iron_ingot>, <item:minecraft:netherite_ingot>, <item:minecraft:iron_ingot>],
[<item:netherrocks:illumenite_ingot>, <item:minecraft:redstone>, <item:netherrocks:illumenite_ingot>]]);

// Lightness was removed since Attack Speed is useless

// Protection
<recipetype:create:mechanical_crafting>.addRecipe("protection_oil", <item:anointeditems:protection_oil>,
[[<item:netherrocks:malachite_ingot>, <item:netherrocks:ashstone_gem>|<item:netherrocks:dragonstone_gem>, <item:netherrocks:malachite_ingot>],
[<item:minecraft:emerald>, <item:minecraft:netherite_ingot>, <item:minecraft:emerald>],
[<item:netherrocks:malachite_ingot>, <item:netherrocks:ashstone_gem>|<item:netherrocks:dragonstone_gem>, <item:netherrocks:malachite_ingot>]]);

#-----------------------------------------------------------------------------
### Obsidian Crafting Tree
# Crafting tree: Crying > Dust (Electro mod) > Obsidian

// Craft Crying Obsidian with lava & water + various stones
<recipetype:create:mixing>.addRecipe("obsidian_stage-1", "heated", <item:minecraft:crying_obsidian>, [<item:minecraft:basalt>, <item:minecraft:blackstone>, <tag:items:forge:cobblestone>], [<fluid:lava>*1000, <fluid:water>*1000], 1200);

// Crying Obsidian > Dust (Makes 12 per)
<recipetype:create:mechanical_crafting>.addRecipe("obsidian_stage-2", <item:electrodynamics:dustobsidian>*20,
[[<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:lapis_sheet>, <item:minecraft:air>, <item:minecraft:air>],
[<item:contenttweaker:lapis_sheet>, <item:minecraft:magma_cream>, <item:contenttweaker:lapis_sheet>, <item:minecraft:magma_cream>, <item:contenttweaker:lapis_sheet>],
[<item:create:powdered_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:create:powdered_obsidian>],
[<item:contenttweaker:lapis_sheet>, <item:minecraft:magma_cream>, <item:contenttweaker:lapis_sheet>, <item:minecraft:magma_cream>, <item:contenttweaker:lapis_sheet>],
[<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:lapis_sheet>, <item:minecraft:air>, <item:minecraft:air>]]);

// Dust > Obsidian (4 per)
<recipetype:create:compacting>.addRecipe("obsidian_stage-3", "superheated", <item:minecraft:obsidian>, [<item:electrodynamics:dustobsidian>, <item:electrodynamics:dustobsidian>, <item:electrodynamics:dustobsidian>, <item:electrodynamics:dustobsidian>], [<fluid:tconstruct:magma>*1000], 1000);

// Crying Obsidian > Powdered Obsidian
<recipetype:create:crushing>.addRecipe("crying_obsidian_to_obsidian_dust", [<item:create:powdered_obsidian>, <item:create:powdered_obsidian> % 50, <item:create:powdered_obsidian> % 25, <item:minecraft:lapis_lazuli>*8 % 50], <item:minecraft:crying_obsidian>);

#-----------------------------------------------------------------------------
# Mixing Recipes

// Buff the recipe to make Andesite Alloy with Zinc
<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);
<recipetype:create:mixing>.addRecipe("andesite_alloy_buffed", "none", <item:create:andesite_alloy>*2, [<item:minecraft:andesite>, <tag:items:forge:nuggets/zinc>], [], 100);

<recipetype:create:mixing>.addRecipe("andesite_alloy", "none", <item:create:andesite_alloy>, [<item:minecraft:andesite>, <tag:items:forge:nuggets/iron>], [], 100);

// Make Mushroom Stew with any OreDict-supported shrooms
<recipetype:create:mixing>.addRecipe("mushroom-stew_oredict", "none", <item:minecraft:mushroom_stew>, [<item:minecraft:bowl>, <tag:items:forge:mushrooms>, <tag:items:forge:mushrooms>], [], 30);

// Mix wraps with water (or Rotten Flesh) to make raw porkchops
<recipetype:create:mixing>.addRecipe("wraps_to_pork_water", "heated", <item:minecraft:porkchop>*2, [<item:comfortable_nether:warped_rotten_wrap>, <item:comfortable_nether:crimson_rotten_wrap>], [<fluid:water>*250], 150);

<recipetype:create:mixing>.addRecipe("wraps_to_pork_flesh", "heated", <item:minecraft:porkchop>, [<item:comfortable_nether:warped_rotten_wrap>, <item:comfortable_nether:crimson_rotten_wrap>, <item:minecraft:rotten_flesh>*2], [], 300);

# Magma Cream recipes
// Niter and Sulfuer Dioxide
<recipetype:create:mixing>.addRecipe("magma_cream_lava", "none", <item:minecraft:magma_cream>, [<tag:items:forge:dusts/saltpeter>, <tag:items:forge:oxide/disulfur>], [<fluid:lava>*1000], 100);

<recipetype:create:mixing>.addRecipe("magma_cream_water", "heated", <item:minecraft:magma_cream>, [<tag:items:forge:dusts/saltpeter>, <tag:items:forge:oxide/disulfur>], [<fluid:water>*2000], 200);

// Magma and Slimeballs
<recipetype:create:filling>.addRecipe("cream_to_cream", <item:minecraft:magma_cream>, <tag:items:forge:slimeballs>, <fluid:tconstruct:magma>*250);

// Magma and Blaze Powder
<recipetype:create:filling>.addRecipe("cream_to_cream_blaze", <item:minecraft:magma_cream>, <item:minecraft:blaze_powder>, <fluid:tconstruct:magma>*500);

// Change the Coin Press to a Mixing recipe
// Uncured press in misc.zs
<recipetype:minecraft:smelting>.removeRecipe(<item:xpcoins:coin_press>);
<recipetype:create:mixing>.addRecipe("coin_press", "none", <item:xpcoins:coin_press>, [<item:xpcoins:uncured_coin_press>], [<fluid:tconstruct:magma>*1000]);
<recipetype:create:mixing>.addRecipe("coin_press_lava", "superheated", <item:xpcoins:coin_press>, [<item:xpcoins:uncured_coin_press>], [<fluid:lava>*4000]);


### Melt things into Lava
// Melt Magma Blocks into Lava
<recipetype:create:mixing>.addRecipe("magma_to_lava", "heated", <fluid:lava>*500, [<item:minecraft:magma_block>, <item:minecraft:charcoal>|<item:minecraft:coal>|<item:minecraft:flint>], [], 1200);

// Melt Magma Cream & Blocks into Magma
<recipetype:create:mixing>.addRecipe("melt_magma_block", "heated", <fluid:tconstruct:magma>*500, [<item:minecraft:magma_block>], [<fluid:lava>*1000], 600);
<recipetype:create:mixing>.addRecipe("melt_magma_cream", "heated", <fluid:tconstruct:magma>*125, [<item:minecraft:magma_cream>], [<fluid:lava>*500], 600);

// Melt Pummeler Remnants into lava
<recipetype:create:mixing>.addRecipe("remnants_to_lava", "heated", <fluid:lava>*350, [<item:comfortable_nether:pummeler_remnant>]);
<recipetype:create:mixing>.addRecipe("popped_remnants_to_lava", "heated", <fluid:lava>*1000, [<item:comfortable_nether:popped_pummeler_remnant>]);

// Melt Burning Blossoms into Lava
<recipetype:create:mixing>.addRecipe("blossom_to_lava", "none", <fluid:lava>*50, [<item:biomesoplenty:burning_blossom>]);

// Melt Grimdrop stuff into Lava
<recipetype:create:mixing>.addRecipe("grimdrop_to_lava", "heated", <fluid:lava>*250, [<item:comfortable_nether:grimstem_item>*2, <item:comfortable_nether:liquid_grimdrop>]);
	// Temp recipe for Liquid Grimdrop, just in case.
<recipetype:create:compacting>.addRecipe("liquid_grimdrop", "none", <item:comfortable_nether:liquid_grimdrop>, [<item:minecraft:netherrack>, <item:comfortable_nether:grimstem_item>*2], [], 200);

// Melt Flaming Abscesses into Lava
<recipetype:create:mixing>.addRecipe("abscess_to_lava", "none", <fluid:lava>*125, [<item:comfortable_nether:flaming_abscess>]);

### Liquify things into water
// Liquify Watergrass into Water
<recipetype:create:mixing>.addRecipe("liquify_watergrass", "none", <fluid:water>*100, [<item:biomesoplenty:watergrass>], [], 20);

// Liquify Pink Slimeballs into Pink Slime (fluid)
<recipetype:create:mixing>.addRecipe("liquify_pink_slime", "none", <fluid:industrialforegoing:pink_slime>*250, [<item:industrialforegoing:pink_slime>], [], 60);

// Liquify Roots to water
<recipetype:create:mixing>.addRecipe("roots_to_water", "none", <fluid:water>*50, [<tag:items:roots>, <tag:items:roots>], [], 20);

// Liquify Rotten Flesh into Water
<recipetype:create:mixing>.addRecipe("flesh_to_water", "none", <fluid:water>*125, [<item:minecraft:rotten_flesh>]);

// Liquify Abscess, Insatiable Blubbers, and the Danishes into Water
<recipetype:create:mixing>.addRecipe("abscess_to_water", "heated", <fluid:water>*125, [<item:comfortable_nether:weeping_abscess>]);
<recipetype:create:mixing>.addRecipe("blubber_to_water", "heated", <fluid:water>*250, [<item:comfortable_nether:insatiable_blubber>]);
<recipetype:create:mixing>.addRecipe("danish_to_water", "superheated", <fluid:water>*500, [<item:comfortable_nether:abscess_danish>]);

// Liquify Nether & Warped Wart into water
<recipetype:create:mixing>.addRecipe("wart_to_water", "none", <fluid:water>*75, [<item:minecraft:nether_wart>]); //20
<recipetype:create:mixing>.addRecipe("wart_block_to_water", "none", <fluid:water>*750, [<item:minecraft:nether_wart_block>]); //60
<recipetype:create:mixing>.addRecipe("warped_wart_to_water", "none", <fluid:water>*150, [<item:minecraft:warped_wart_block>]); //60

// Liquify Stuffed Filters into water
<recipetype:create:mixing>.addRecipe("filter_to_water", "superheated", <fluid:water>*1000, [<item:comfortable_nether:stuffed_filter>]);

// Liquify Free Souls into water
<recipetype:create:mixing>.addRecipe("souls_to_water", "superheated", <fluid:water>*2500, [<item:comfortable_nether:docile_soul>*3]);

// Liquify Phantom Membranes into water
<recipetype:create:mixing>.addRecipe("membrane_to_water", "heated", <fluid:water>*1000, [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>]);

<recipetype:create:mixing>.addRecipe("membrane_to_water_tag", "none", <fluid:water>*500, [<item:minecraft:phantom_membrane>, <tag:items:water_provider>]);

// Liquify Baleen Filters into water
<recipetype:create:mixing>.addRecipe("filter_to_lava", "heated", <fluid:water>*250, [<item:comfortable_nether:baleen_filter>]);

// Liquify Tangleweed into Water
<recipetype:create:mixing>.addRecipe("tangleweed_to_water", "none", <fluid:water>*100, [<item:comfortable_nether:tangleweed>], [], 60);

// Liquify Fume Puffers into Water
<recipetype:create:mixing>.addRecipe("fume_puffer_to_water", "none", <fluid:water>*250, [<item:comfortable_nether:fume_puffer_2>], [], 200);

// Liquify Plant Fibers into Water
<recipetype:create:mixing>.addRecipe("fibers_to_water", "none", <fluid:water>*100, [<item:extcaves:plant_fiber>*4], [], 30);

#-----------------------------------------------------------------------------
# Compacting recipes
<recipetype:create:compacting>.addRecipe("compact_large_capacitor", "none", <item:powah:capacitor_basic>*2, [<item:powah:capacitor_basic_large>], [], 20);

<recipetype:create:compacting>.addRecipe("compact_tiny_capacitor", "none", <item:powah:capacitor_basic>, [<item:powah:capacitor_basic_tiny>, <item:powah:capacitor_basic_tiny>], [], 30);

// Alt recipes for Blaze Cake Base
<recipetype:create:compacting>.addRecipe("blaze_cake_base_abscess", "none", <item:create:blaze_cake_base>, [<item:comfortable_nether:weeping_abscess>, <item:create:cinder_flour>], [], 600);

<recipetype:create:compacting>.addRecipe("blaze_cake_base_pummeler", "none", <item:create:blaze_cake_base>, [<item:comfortable_nether:pummeler_remnant>, <item:comfortable_nether:pummeler_remnant>, <item:create:cinder_flour>, <item:create:cinder_flour>], [], 600);

#-----------------------------------------------------------------------------
# Milling Recipes

// Mill Basalt into Cobblestone & such
<recipetype:create:milling>.addRecipe("basalt_milling", [<item:minecraft:cobblestone>, <item:minecraft:cobblestone> % 50, <item:minecraft:andesite> % 60, <item:minecraft:diorite> % 30], <item:minecraft:basalt>);

// Mill Blackstone into Cobblestone & such
<recipetype:create:milling>.addRecipe("blackstone_milling", [<item:minecraft:cobblestone>, <item:minecraft:andesite> % 50, <item:minecraft:diorite> % 25], <item:minecraft:blackstone>);

// Mill Netherrack into Cobblestone & such
<recipetype:create:milling>.addRecipe("netherrack_milling", [<item:minecraft:cobblestone> % 75, <item:minecraft:andesite> % 30, <item:minecraft:diorite> % 15], <item:minecraft:netherrack>);

// Mill Flesh into Rotten Flesh & Rotten Wraps
<recipetype:create:milling>.addRecipe("flesh_to_flesh", [<item:minecraft:rotten_flesh> % 75, <item:comfortable_nether:crimson_rotten_wrap> % 25, <item:comfortable_nether:warped_rotten_wrap> % 25], <item:biomesoplenty:flesh>, 60);

// Mill Rotten Flesh into Rotten Wraps
<recipetype:create:milling>.addRecipe("flesh_to_food", [<item:comfortable_nether:crimson_rotten_wrap> % 25, <item:comfortable_nether:warped_rotten_wrap> % 25], <item:minecraft:rotten_flesh>, 40);

// Mill Brambles into Sticks
<recipetype:create:milling>.addRecipe("mill_brambles_to_sticks", [<item:minecraft:stick>, <item:minecraft:stick> % 25, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: "minecraft:thorns" as string}]}) % 1], <item:biomesoplenty:bramble>, 10);

// Mill Vines into Wraps & Fungi
<recipetype:create:milling>.addRecipe("vines_to_crimson_wraps", [<item:comfortable_nether:crimson_rotten_wrap> % 40, <item:minecraft:crimson_fungus> % 25], <item:minecraft:weeping_vines>, 30);
<recipetype:create:milling>.addRecipe("vines_to_warped_wraps", [<item:comfortable_nether:warped_rotten_wrap> % 40, <item:minecraft:warped_fungus> % 25], <item:minecraft:twisting_vines>, 30);

// Mill Pummeler Remnants into Magma Cream
<recipetype:create:milling>.addRecipe("mill_pummeler_remnants", [<item:minecraft:magma_cream> % 15], <item:comfortable_nether:pummeler_remnant>, 240);
<recipetype:create:milling>.addRecipe("mill_popped_pummeler_remnants", [<item:minecraft:magma_cream> % 25], <item:comfortable_nether:popped_pummeler_remnant>, 200);

// Mill Wallcreep into Rotten Flesh & Wraps
<recipetype:create:milling>.addRecipe("wallcreep_to_food", [<item:minecraft:rotten_flesh> % 25, <item:comfortable_nether:warped_rotten_wrap> % 30, <item:comfortable_nether:crimson_rotten_wrap> % 30, <item:industrialforegoing:pink_slime> % 10], <item:comfortable_nether:wallcreep>, 40);

// Mill Piled Residue to Basalt and Blackstone
<recipetype:create:milling>.addRecipe("residue_to_rocks", [<item:minecraft:basalt> % 50, <item:minecraft:blackstone> % 75], <item:comfortable_nether:piled_residue>);

// Mill Nether Bricks into Cinder Flour
<recipetype:create:milling>.addRecipe("bricks_to_flour", [<item:create:cinder_flour>], <item:minecraft:nether_bricks>);

// Mill Dustsprouts into Sticks & String
<recipetype:create:milling>.addRecipe("sprout_to_sticks", [<item:minecraft:stick>*2, <item:minecraft:string> % 35], <item:comfortable_nether:dustsprout>);

// Mill Shroomlight into Glowstone & Mushrooms
<recipetype:create:milling>.addRecipe("mill_shroomlight_to_glowstone", [<item:minecraft:glowstone_dust> % 50, <item:minecraft:brown_mushroom> % 15, <item:minecraft:red_mushroom> % 15], <item:minecraft:shroomlight>);

### Recycling Recipes
// Recycle Doused Torches (both kinds)
<recipetype:create:milling>.addRecipe("recycle_doused_torch", [<item:minicoal2:minicharcoal>*4 % 50, <item:minicoal2:minicoal>*4 % 50], <item:valhelsia_structures:doused_torch>);

<recipetype:create:milling>.addRecipe("recycle_doused_soul_torch", [<item:minicoal2:minicharcoal>*4 % 30, <item:minicoal2:minicoal>*4 % 30, <item:comfortable_nether:docile_soul> % 30], <item:valhelsia_structures:doused_soul_torch>);

// Recycle fungus & carrot on a stick, as well as fishing rods
<recipetype:create:milling>.addRecipe("recycle_fungus_on_a_stick", [<item:minecraft:warped_fungus>, <item:minecraft:stick>*2 % 50, <item:minecraft:string> % 50], <item:minecraft:warped_fungus_on_a_stick>);

<recipetype:create:milling>.addRecipe("recycle_carrot_on_a_stick", [<item:minecraft:carrot>, <item:minecraft:stick>*2 % 50, <item:minecraft:string> % 50], <item:minecraft:carrot_on_a_stick>);

<recipetype:create:milling>.addRecipe("recycle_fishing_rod", [<item:minecraft:stick>*2 % 50, <item:minecraft:string> % 50], <item:minecraft:fishing_rod>);

// Recycle Bows into Sticks & String
<recipetype:create:milling>.addRecipe("recycle_bow", [<item:minecraft:stick>*2 % 55, <item:minecraft:string> % 40, <item:minecraft:string> % 30], <item:minecraft:bow>);

#-----------------------------------------------------------------------------
# Crushing Recipes

// Crush Nether Crystals (and their blocks) into Nether Quartz & (Ancient) Debris Scrap
<recipetype:create:crushing>.addRecipe("crush_nether_crystal", [<item:minecraft:quartz>*2 % 50, <item:tconstruct:debris_nugget>*3 % 5], <item:biomesoplenty:nether_crystal>);

<recipetype:create:crushing>.addRecipe("crush_nether_crystal_block", [<item:minecraft:quartz>*2 % 60, <item:tconstruct:debris_nugget>*3 % 7], <item:biomesoplenty:nether_crystal_block>);

// Crush (Popped) Pummeler Remnants into Blackstone & Magma Cream
<recipetype:create:crushing>.addRecipe("crush_pummeler_remnants", [<item:minecraft:blackstone> % 50, <item:minecraft:magma_cream> % 35], <item:comfortable_nether:pummeler_remnant>, 120);

<recipetype:create:crushing>.addRecipe("crush_popped_pummeler_remnants", [<item:minecraft:blackstone> % 65, <item:minecraft:magma_cream> % 50], <item:comfortable_nether:popped_pummeler_remnant>, 100);

// Crush Gilded Blackstone into Gold
<recipetype:create:crushing>.addRecipe("gilded_blackstone_crushing", [<item:create:crushed_gold_ore>, <item:minecraft:gold_nugget>*6 % 25, <item:tconstruct:rose_gold_nugget> % 10, <item:minecraft:blackstone> % 85], <item:minecraft:gilded_blackstone>);

// Crush Soul Soil into Soul Sand
<recipetype:create:crushing>.addRecipe("soil_to_sand", [<item:minecraft:soul_sand> % 25, <item:comfortable_nether:docile_soul> % 10], <item:minecraft:soul_soil>);

// Crush Shroomlight into Glowstone & Fungi (and mushrooms)
<recipetype:create:crushing>.addRecipe("shroomlight_to_glowstone", [<item:minecraft:glowstone_dust> % 65, <item:minecraft:crimson_fungus> % 50, <item:minecraft:warped_fungus> % 50, <item:minecraft:brown_mushroom> % 25, <item:minecraft:red_mushroom> % 25], <item:minecraft:shroomlight>);

// Crush Warped Wart into Warped Fungus and Nether Wart
<recipetype:create:crushing>.addRecipe("warped_wart_to_nether_wart", [<item:minecraft:warped_fungus>, <item:minecraft:warped_fungus> % 50, <item:minecraft:nether_wart> % 50], <item:minecraft:warped_wart_block>, 60);

// Crush Stone (any kind) into Cobblestone
<recipetype:create:crushing>.addRecipe("crush_stone", [<item:minecraft:cobblestone>, <item:minecraft:gravel> % 25, <item:minecraft:sand> % 15], <tag:items:forge:stone>);

// Crush Vanadinite to Impure Dust
// Not as good as using the machine, but still not bad
<recipetype:create:crushing>.addRecipe("crush_vanadinite", [<item:electrodynamics:impuredustvanadium>, <item:electrodynamics:impuredustvanadium> % 50, <item:electrodynamics:dustvanadium> % 5, <item:create:crushed_lead_ore>*3 % 15, <item:minecraft:cobblestone> % 15], <item:electrodynamics:orevanadinite>, 400);

# Crush Electrodynamic's useless ores
// Uraninite
<recipetype:create:crushing>.addRecipe("crush_uraninite", [<item:powah:uraninite_raw_poor>, <item:powah:uraninite_raw_poor>*2 % 35, <item:powah:uraninite_raw> % 15, <item:powah:uraninite_raw_dense> % 5, <item:minecraft:cobblestone> % 20], <item:electrodynamics:oreuraninite>, 150);

// Thorianite
<recipetype:create:crushing>.addRecipe("crush_thorianite", [<item:powah:uraninite_raw>*2, <item:powah:uraninite_raw_poor>*3 % 40, <item:minecraft:redstone>*6 % 25, <item:minecraft:coal>*2 % 50, <item:minecraft:cobblestone> % 15], <item:electrodynamics:orethorianite>, 600);

// Monazite
<recipetype:create:crushing>.addRecipe("crush_monazite", [<item:powah:uraninite_raw_dense> % 50, <item:electrodynamics:orethorianite> % 25, <item:minecraft:cobblestone> % 30], <item:electrodynamics:oremonazite>, 300);

#-----------------------------------------------------------------------------
# Misc recipes

// Alternate recipes for the millstone
craftingTable.addShaped("blackstone_mill", <item:create:millstone>, 
    [[<item:create:cogwheel>, <tag:items:minecraft:planks>, <item:create:cogwheel>],
    [<item:create:andesite_alloy>, <item:minecraft:polished_blackstone>|<item:minecraft:polished_basalt>, <item:create:andesite_alloy>],
    [<item:minecraft:polished_blackstone>|<item:minecraft:polished_basalt>, <item:minecraft:polished_blackstone>|<item:minecraft:polished_basalt>, <item:minecraft:polished_blackstone>|<item:minecraft:polished_basalt>]]);

craftingTable.addShaped("gilded_blackstone_mill", <item:create:millstone>, 
    [[<item:minecraft:air>, <tag:items:minecraft:planks>, <item:minecraft:air>],
    [<item:create:andesite_alloy>, <item:create:cogwheel>, <item:create:andesite_alloy>],
    [<item:minecraft:air>, <item:minecraft:gilded_blackstone>, <item:minecraft:air>]]);

// Use any tank for the Spout
<recipetype:minecraft:crafting>.removeRecipe(<item:create:spout>);
craftingTable.addShaped("spout", <item:create:spout>, 
    [[<item:minecraft:air>, <tag:items:forge:tank>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:dried_kelp>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:nuggets/copper>, <item:minecraft:air>]]);

// Buff Zinc recipe for Andesite Alloy
craftingTable.removeByName("create:crafting/materials/andesite_alloy_from_zinc");
craftingTable.addShapedMirrored("andesite_alloy_buffed", <item:create:andesite_alloy>*2, 
    [[<tag:items:forge:nuggets/zinc>, <item:minecraft:andesite>],
    [<item:minecraft:andesite>, <tag:items:forge:nuggets/zinc>]]);

	
	
/*
### Sequenced Assembly Recipes ###

// Test recipe for Nether Brick > Netherrack
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("nether-brick_to_netherrack")
    .require(<item:minecraft:netherrack>)
    .transitionTo(<item:minecraft:nether_brick>)
    .loops(3)
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.require(<item:minecraft:nether_bricks>))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    .addOutput(<item:minecraft:netherrack>, 1));
*/

<recipetype:create:pressing>.addRecipe("nether-brick_to_netherrack", [<item:minecraft:netherrack>*2 % 100, <item:minecraft:netherrack> % 50], <item:minecraft:nether_bricks>);


print("create.zs loaded");